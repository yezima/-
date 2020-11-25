import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int str1= sc.nextInt();
        int str2= sc.nextInt();
        int str3= sc.nextInt();
        float a = str1+str2+str3;
        float c = a/2;
        double b = Math.sqrt(c*(c-str1)*(c-str2)*(c-str3));
        System.out.print("circumference="+String.format("%.2f",a));
        System.out.print(" area="+String.format("%.2f",b));
    }
}