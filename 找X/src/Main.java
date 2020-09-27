import java.util.Arrays;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String n = sc.nextLine();//输入第一个数 表示数字个数 n
        String[] nums = sc.nextLine().split(" ");//输入n个数字，空格分割
        String x = sc.nextLine();//输入要找的数字
        System.out.println(Arrays.asList(nums).indexOf(x));
    }
}