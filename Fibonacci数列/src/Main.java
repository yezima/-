import java.util.*;
public class Main {
    public static void main(String[] args) throws Exception{
        Scanner scanner = new Scanner(System.in);
        int n = 0;
        int a = 0,b = 1,c = 1;
        if (scanner.hasNextInt()) {
            n = scanner.nextInt();
        }
        while (c < n) {
            a = b;
            b = c;
            c = a + b;
        }
        int dis1 = n - b;
        int dis2 = c - n;
        System.out.println(dis1<dis2?dis1:dis2);
    }
}
