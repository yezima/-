public class Main {
    public static void main(String[] args) {
        int arr[] = {1, 5, 9, 6, 4, 7, 3};
        //首先打印一遍原数组
        for (int i = 0; i < arr.length ; i++) {
            System.out.print(arr[i] + " ");
        }

        System.out.println();
        System.out.println("=========");

        //进行交换位置
        for (int min = 0, max = arr.length - 1; min < max; min++, max--) {
            int temp = arr[min];
            arr[min] = arr[max];
            arr[max] = temp;
        }

        //打印出翻转好的数组
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
    }
}
