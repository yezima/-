import java.util.*;

public class Main {

    //找出十万个数据中第一个重复的数据


    public static void main(String[] args) {
        Random random = new  Random();
        ArrayList<Integer> list = new ArrayList<>();

        for (int i = 0; i < 10_0000; i++) {
            list.add(random.nextInt(6000));
        }
        HashSet<Integer> set = new HashSet<>();
        for (Integer val: list) {
            if (set.contains(val)) {
                System.out.println(("找到了第一个重复的元素" + val));
                return;
            }else {
                set.add(val);
            }
        }
    }
}
