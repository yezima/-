import java.util.Arrays;

public class Main {

  // 数组扩大二倍 不改变原有数组
    public static int[] func(int[] arr) {
        int[] temp = new int[arr.length];
        for (int i = 0; i < arr.length; i++) {
             temp[i] = arr[i] * 2;
        }
        return temp;
    }
    public static void main(String[] args) {
        int[] arr = {1,2,3,4,5,6};
        func(arr);
        System.out.print(Arrays.toString(func(arr)));
    }
}


/**
 //数组扩大二倍 改变原数组
 public static void main(String[] args) {
     int[] arr = {1,2,3,4,5,6};
     int[] ret = func(arr);
     System.out.print(Arrays.toString(ret));

 }
    private static int[] func(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            arr[i] = arr[i] * 2;
        }
        return arr;
    }
}
 */