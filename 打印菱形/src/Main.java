public class Main {
    public static void main(String[] args) {
        int n = 2;
        // 打印上半部分
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n - i; j++) {
                System.out.print(" ");
            }
            for (int j = 0; j < i + 1; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
        // 打印中间
        for (int i = 0; i < n + 1; i++) {
            System.out.print("* ");
        }
        System.out.println();
        // 打印下半部分
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < i + 1; j++) {
                System.out.print(" ");
            }
            for (int j = 0; j < n - i; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}
