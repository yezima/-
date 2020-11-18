import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.nextLine();
        System.out.print(
                "year=" + str.substring(0, 4) + "\nmonth=" + str.substring(4, 6) + "\ndate=" + str.substring(6, 8));
    }
}