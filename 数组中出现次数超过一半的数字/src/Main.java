// 方法一代码
import java.util.Arrays;
public class Main {
    public int MoreThanHalfNum_Solution(int [] array) {
        Arrays.sort(array);
        int count=0;
        for(int i=0;i<array.length;i++){
            if(array[i]==array[array.length/2]){
                count++;
            }
        }
        if(count>array.length/2){
            return array[array.length/2];
        }else{
            return 0;
        }
    }
}
// 方法二代码
public class Main {
    public int MoreThanHalfNum_Solution(int [] numbers) {
        int n = numbers.length;
        if (n == 0) return 0;
        int num = numbers[0], count = 1;
        for (int i = 1; i < n; i++) {
            if (numbers[i] == num) {
                count++;
            } else {
                count--;
            }
            if (count == 0) {
                num = numbers[i];
                count = 1;
            }
        }
// 经过上面的操作, 已经找到该数 num 了.
// 下面的操作是为了确认 num 确实是出现次数超过一半.
        count = 0;
        for (int i = 0; i < n; i++) {
            if (numbers[i] == num) count++;
        }
        if (count * 2 > n) return num;
        return 0;
    }
};