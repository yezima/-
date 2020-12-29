import java.util.*;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int h = sc.nextInt();
        int m = sc.nextInt();
        if(m % h == 0) {
            System.out.println(n - (m / h));
        }else {
            System.out.println(n - (m / h) - 1);
        }
    }
}
