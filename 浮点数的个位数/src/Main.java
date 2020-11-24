import java.util.Scanner;

public class Main{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String[] s = sc.nextLine().split("\\.");//用点分割字符串必须要加“//”不然报错哦
        System.out.println(s[0].charAt(s[0].length()-1));
        sc.close();
    }
}