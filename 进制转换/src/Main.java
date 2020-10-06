import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            long num = 0;
            for (int i = 2; i < line.length(); i++) {
                num *= 16;
                char ch = line.charAt(i);
                int n = 0;
                if (ch >= 'A' && ch <= 'F') {
                    n = ch - 'A' + 10;
                } else if (ch >= 'a' && ch <= 'f') {
                    n = ch - 'a' + 10;
                } else {
                    n = ch - '0';
                }
                num += n;
            }
            System.out.println(num);
        }
    }
}
