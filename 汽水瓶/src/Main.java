import java.util.Scanner;

public class Main {
    public static int drink(int n) {
        int total = 0;//饮料数
        //当大于两个空瓶子的时候才可以换饮料
        while (n > 2) {
            total = total + n/3;
            n = n/3 + n%3;
        }
        //如果n==2 说明有两个空瓶可以和商家借一瓶饮料
        if (n == 2) {
            total = total + 1;
        }
        return total;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        while (sc.hasNext()) {
            n = sc.nextInt();
            System.out.println(drink(n));
        }
    }
}
