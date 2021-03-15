import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
        String son = sc.nextLine();
        String mother = sc.nextLine();
        int i,j;
        for ( i = 0,j = 0; i < mother.length() && j < son.length(); i++) {
            if (mother.charAt(i) == son.charAt(j)) {
                j++;
            }
        }
        if (j == son.length()) {
            System.out.println(true);
        }else {
            System.out.println(false);
        }
    }
}
