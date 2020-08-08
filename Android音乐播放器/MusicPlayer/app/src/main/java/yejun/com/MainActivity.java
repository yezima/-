package yejun.com;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.TextView;

import java.io.IOException;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private TextView play;
    private TextView pause;
    private TextView stop;
    private TextView shang;
    private TextView xia;
    private MediaPlayer mp;
    private String localPath= Environment.getExternalStorageDirectory().getAbsolutePath();
    private String[] musicList={localPath+"/去年夏天.mp3",localPath+"/说书人.mp3",localPath+"/缘分一道桥.mp3",localPath+"/易燃易爆炸.mp3",localPath+"/Wrap me in plastic.mp3"};
    private String playPath=localPath+"/去年夏天.mp3";
    private int marker=0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        if (ContextCompat.checkSelfPermission(MainActivity.this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(MainActivity.this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, 1);
        }

        mp=new MediaPlayer();
        play = findViewById(R.id.play);
        pause = findViewById(R.id.pause);
        stop = findViewById(R.id.stop);
        shang = findViewById(R.id.shang);
        xia = findViewById(R.id.xia);
        play.setOnClickListener(this);
        pause.setOnClickListener(this);
        stop.setOnClickListener(this);
        shang.setOnClickListener(this);
        xia.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        int id = v.getId();
        if(id==R.id.play){
            play();
        }else if(id==R.id.pause){
            pause();
        }else if(id==R.id.stop){
            stop();
        }else if(id==R.id.shang){
            shang();
        }else if(id==R.id.xia){
            xia();
        }
    }

    //播放功能
    private void play() {
        try {
            mp.reset();
            mp.setDataSource(playPath);
            mp.prepare();
            mp.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //暂停功能
    private void pause() {
        if (mp.isPlaying()) {
            pause.setText("继续");
            mp.pause();
        } else {
            pause.setText("暂停");
            mp.start();
        }
    }
    //停止功能
    private void stop() {
        if (mp.isPlaying()) {
            mp.reset();
        }
    }
    //上一首功能
    private void shang() {
        marker=marker-1;
        if(marker<0){
            marker=musicList.length-1;
        }
        playPath=musicList[marker];
        try {
            mp.reset();
            mp.setDataSource(playPath);
            mp.prepare();
            mp.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //下一首功能
    private void xia() {
        marker=marker+1;
        if(marker==musicList.length){
            marker=0;
        }
        playPath=musicList[marker];
        try {
            mp.reset();
            mp.setDataSource(playPath);
            mp.prepare();
            mp.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
