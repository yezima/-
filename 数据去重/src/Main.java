import java.util.*;
public class Main {
    //统计十万个数据中出现重复数据以及出现的次数
    public static void main(String[] args) {
        Random random = new  Random();
        ArrayList<Integer> list = new ArrayList<>();

        for (int i = 0; i < 10_0000; i++) {
            list.add(random.nextInt(6000));
        }
        HashMap<Integer,Integer>map = new HashMap<>();
        //key -->关键字重复的数字
        //value-->重复的数字出现的次数
        for (Integer key: list) {
            if (map.get(key) == null) {
                map.put(key,1);
            }else {
                Integer val = map.get(key);
                map.put(key,val+1);
            }
        }
        for (Map.Entry<Integer,Integer>entry:map.entrySet()) {
            System.out.println(entry.getKey()+"数字出现l"+entry.getValue()+"次");
        }
    }
}
