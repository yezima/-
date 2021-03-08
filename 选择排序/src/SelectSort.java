public class SelectSort {
    public static void main(String[] args) {
        int arr[] = {9,6,5,8,4,1,7,2,3};
        System.out.println("排序之前：");
        for (int k = 0; k < arr.length; k++) {
            System.out.print(arr[k]+",");
        }
        System.out.println("");
        System.out.println("排序之后：");
        new SelectSort().selectsort(arr);
    }
    private void selectsort(int[] arr) {
        int temp = 0;
        for (int i = 0; i < arr.length-1; i++) {
            for (int j = i+1; j < arr.length; j++) {
                if (arr[i]>arr[j]) {
                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
        for (int k = 0; k < arr.length; k++) {
            System.out.print(arr[k]+",");
        }
    }
}