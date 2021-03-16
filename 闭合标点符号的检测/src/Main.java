import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int count = 0;
        int sum = 0;
        String s = sc.nextLine();
        for (int i = 0; i < s.length(); i++) {
            if ('"' == s.charAt(i))
                sum++;
            if ('{' == s.charAt(i) || '[' == s.charAt(i))
                count++;
            if ('}' == s.charAt(i) || ']' == s.charAt(i))
                count--;
        }
        if (count == 0 && sum %2 == 0) {
            System.out.println(true);
        }else {
            System.out.println(false);
        }
    }
}
