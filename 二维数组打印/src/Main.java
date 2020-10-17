import java.util.*;
public class Main {
    public int[] arrayPrint(int[][] arr, int n) {
// write code here
        int[] res = new int[n*n];
        int index = 0;
        int startX = 0;
        int startY = n-1;
        while(startX < n){
            int x = startX;
            int y = startY;
            while(x<n&&y<n)
                res[index++]=arr[x++][y++];
            if(startY>0)
                startY--;//确定新的开始纵坐标
            else
                startX++;//确定新的开始横坐标
        }
        return res;
    }
}
