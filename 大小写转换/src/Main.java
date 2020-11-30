import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        char c = input.next().charAt(0);
        change(c);
    }
    private static void change(char c) {
        //如果输入的是大写，+32即可得到小写
        if (c >= 'A' && c <= 'Z') {
            c += 32;
            System.out.println(c);
        } else if (c >= 'a' && c <= 'z') {    //如果输入的是小写，-32即可得大小写
            c -= 32;
            System.out.println(c);
        }
    }
}