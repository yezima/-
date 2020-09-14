import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;

public class Main {

    //大数据的去重问题
    //十万个数据 把里面重复的数据都取掉
    public static void main(String[] args) {
        Random random = new Random();
        ArrayList<Integer>list = new ArrayList<>();
        for (int i = 0; i < 10_0000; i++) {
            list.add(random.nextInt(6000));
        }
        HashSet<Integer> set = new HashSet<>();
        for (Integer val: list) {
                set.add(val);
        }
    }
}
