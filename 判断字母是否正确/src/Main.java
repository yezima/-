import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        for (int i = 0; i < N; i++) {
            System.out.println(repair(sc.nextLine()));
        }
    }
    public static String repair(String str) {
        StringBuffer sb = new StringBuffer();
        for (char c : str.toCharArray()) {
            int n = sb.length();
            if (n >= 2) {
                if (c == sb.charAt(n - 1)){
                    if (c == sb.charAt(n - 2)) {
                        continue;
                    }else if (n >= 3 && sb.charAt(n - 2) == sb.charAt(n - 3)) {
                        continue;
                    }
                }
            }
            sb.append(c);
        }
        return sb.toString();
    }
}
