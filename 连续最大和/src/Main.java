import java.util.*;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = 0;
        while(sc.hasNext()){
            n = sc.nextInt();
            int[] num = new int[n];
            for(int i=0;i<n;i++){
                num[i] = sc.nextInt();
            }
            int result = maxArry(num,n);
            System.out.println(result);
        }
    }
    public static int maxArry(int[] array,int len) {
        if(array == null || len <= 0) {
            return -1;
        }
//假设最大值为这个数字，这里有一个几千，这个数字正好是整形的最小值。
        int maxnum = 0x80000000;
        int sum = 0;
        for(int i = 0;i < len;i++) {
            if(sum <= 0) {
                sum = array[i];
            }else{
                sum += array[i];
            }
            if(sum > maxnum) {
                maxnum = sum;
            }
        }
        return maxnum;
    }
}
