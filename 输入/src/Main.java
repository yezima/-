import java.util.Scanner;

public class Main {
    public static void main1(String[] args) {
        System.out.printf("Hello world!");
        System.out.println();
        System.out.println("Hello world!".length());
    }


        public static void main(String[] args) {
            Scanner s = new Scanner(System.in);
            String[] a = s.nextLine().split("[;,]");//split表示输入的字符以;,分割成String数组
            int id = Integer.parseInt(a[0]);
            double s1 = Double.parseDouble(a[1]);
            double s2 = Double.parseDouble(a[2]);
            double s3 = Double.parseDouble(a[3]);
            System.out.print("The each subject score of  No. " + id + " is " + String.format("%.2f", s1) + ", " + String.format("%.2f", s2) + ", " + String.format("%.2f", s3) + ".");

    }
}