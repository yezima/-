import java.net.Inet4Address;
import java.util.HashSet;
import java.util.Iterator;

public class Main {
    /*方法一 异或
    public int singleNumber(int[] nums) {
        int ret = 0;
        for (int i = 0; i < nums.length;i++) {
            ret ^= nums[i];
        }
        return ret;
    }*/

    //方法二：数组
    public int singleNumber(int[] nums) {

        HashSet<Integer>hashSet = new HashSet<>();

        for (int i = 0; i < nums.length; i++) {
            if (hashSet.contains(nums[i])) {
                hashSet.remove(nums[i]);
            }else {
                hashSet.add(nums[i]);
            }
        }
        System.out.println(hashSet);
        Iterator<Integer> it = hashSet.iterator();
        return it.next();
    }
}
