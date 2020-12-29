import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double str1 = sc.nextInt();
        int str2 = sc.nextInt();
        int str3 = sc.nextInt();
        int str4 = sc.nextInt();
        if (str2 == 11 && str3 == 11) {
            if (str4 == 1) {
                double a =  (str1*0.7 - 50);
                System.out.println(a);
            }else {
                double a = (double) (str1*0.7);
                System.out.println(a);
            }
        }
        if (str2 == 12 && str3 == 12 ) {
            if (str4 == 1) {
                double a = (double) (str1*0.8 - 50);
                System.out.println(a);
            }else {
                double a = (double) (str1*0.8);
                System.out.println(a);
            }
        }
    }
}
