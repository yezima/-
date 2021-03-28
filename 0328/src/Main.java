import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int m = sc.nextInt();
        if ( n == 0 ) {
            System.out.println(0);
        }
        if ( n == 1) {
            int temp = m;
            System.out.println(temp);
        }
        if ( n > 1) {
            int ret = 0;
            if (m > n) {
                ret = m | n;
            }
            System.out.println(ret);
        }
    }
}
