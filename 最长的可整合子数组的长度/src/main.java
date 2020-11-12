import java.util.HashSet;
import java.util.Scanner;

public class main{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        final int N = scanner.nextInt();

        int[] arr = new int[N];
        for (int i = 0; i < N; i++) {
            arr[i] = scanner.nextInt();
        }
        HashSet<Integer> set = new HashSet<>();
        int maxCount = 1;
        for (int i = 0; i < N; i++) {
            if (maxCount >= N - i + 1) {//剩下的数组所最大可整合已不可能超过现在的数组，则直接跳出
                break;
            }
            int max = arr[i], min = arr[i];
            set.add(arr[i]);
            for (int j = i + 1; j < N; j++) {
                if (set.contains(arr[j])) {
                    break;
                }
                set.add(arr[j]);
                if (arr[j] > max) {
                    max = arr[j];
                }
                if (arr[j] < min) {
                    min = arr[j];
                }
                if (max - min == j - i) {//如果当前数组没有重复，而且最大值减去最小值等于数组长度-1，那么当前数据就是可整合数组
                    maxCount = max - min + 1 > maxCount ? max - min + 1 : maxCount;
                }
            }
            set.clear();
        }
        System.out.println(maxCount);
    }
}