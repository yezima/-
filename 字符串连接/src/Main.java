import java.util.Scanner;

public class Main {
    public static String func(String str) {
        String[] strings = str.split(" ");
        String ret = "";
        for (String s : strings) {
            ret += s;
        }
        return ret;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String str = scanner.nextLine();
        //不能用next 因为next遇到空格就结束了
        String ret = func(str);
        System.out.println(ret);
    }
}
