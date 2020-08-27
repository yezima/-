import java.util.Scanner;
public class Test {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String str = scanner.nextLine();
            StringBuffer ret = new StringBuffer();
            for (int i = 0; i < str.length(); i++) {
                char ch = str.charAt(i);
                String tmp = ret.toString();
                if (!tmp.contains(ch + "")) {
                    ret.append(ch);
                }
            }
            System.out.println(ret);
        }
    }
}
