public class Main {
    public static void bubbleSort(long[] array) {
        // 进行多少次冒泡过程
        for (int i = 0; i < array.length - 1; i++) {
            // 无序区间: [0, array.length - i)

            // 每次冒泡之前，都假设本次无序区间有序了
            boolean sorted = true;
            // 遍历无序区间，做冒泡过程
            // 一次冒泡过程，而且只在无序区间进行
            for (int j = 0; j < array.length - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    long t = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = t;

                    // 只要有过交换，无序区间有序的假设就不成立
                    sorted = false;
                }
            }
            // 每次冒泡之后，假设成立，整个数组有序
            if (sorted) {
                break;
            }
        }
    }
}