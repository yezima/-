import java.util.*;


//冒泡排序
public class BubbleSort {
    public static void main(String[] args) {
        int arr[] = new int[]{1, 6, 2, 2, 5, 4};
        BubbleSort(arr);
        System.out.println(Arrays.toString(arr));
    }
    public static void BubbleSort(int[] arr) {

            int temp;
            for (int i = 0; i < arr.length - 1; i++) {
                for (int j = 0; j < arr.length - i - 1; j++) {
                    if (arr[j] > arr[j + 1]) {
                        temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }
        }
    }



//冒泡排序优化
/*
public class BubbleSort {
    public static void main(String[] args) {
        int arr[] = new int[] {1,6,2,2,5,4};
        BubbleSort(arr);
        System.out.println(Arrays.toString(arr));
    }

    public static void BubbleSort(int[] arr) {
        boolean flag = true;
        while (flag) {
            int temp ;
            for (int i = 0; i < arr.length-1; i++) {
                for (int j = 0; j < arr.length-i-1 ; j++) {
                    if (arr[j] > arr [j+1]) {
                        temp = arr[j];
                        arr[j] = arr[j+1];
                        arr[j+1] = temp;
                        flag = true;
                    }
                }
                if (!flag) {
                    break;//若没有发生交换则退出循环
                }
            }
        }

    }
}
**/
