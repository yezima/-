import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String except = scan.nextLine();//期望值
        String act = scan.nextLine();//实际值

        Set<Character> setAct = new HashSet<>();
        for (char actChar : act.toUpperCase().toCharArray()) {
            setAct.add(actChar);
        }
        Set<Character> setBroken = new HashSet<>();
        for (char exceptChar : except.toUpperCase().toCharArray()) {
            if ( !setAct.contains(exceptChar) &&
                    !setBroken.contains(exceptChar)) {
                //如果是坏的，那就放到setBroken
                setBroken.add(exceptChar);
                System.out.println(exceptChar);
            }
        }
    }
}
