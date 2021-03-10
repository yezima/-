public class Main {
    public static void main(String[] args) {
        int arr[] = {1,2,3,4,65};

        //打印原来的数组
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
        System.out.println("===========");

        /*
        初始化判断语句：int min = 0,max = arr.length - 1
        条件判断：min < max
        步进表达式：min++,max--
        循环体：用第三个变量倒手
         */
        for (int min = 0,max = arr.length-1;min < max ; min++,max--) {
            int temp = arr[min];
            arr[min] = arr[max];
            arr[max] = temp;
        }

        //再次打印数组
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}
