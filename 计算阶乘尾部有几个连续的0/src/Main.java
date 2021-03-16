import java.util.*;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int result = GetZero(n);
        System.out.println(result);
    }
    public static int GetZero(int n) {
        int sum = 0;
        for (int i = 5; i <= n ; i+=5) {
            int num = i;
            while (num %5 == 0) {
                num/=5;
                sum++;
            }
        }
        return sum;
    }
}
