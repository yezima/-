import java.util.*;
public class Main {
    public static void main(String[] args) throws Exception{
        Scanner sc = new Scanner(System.in);
        Set<String> s = new HashSet<>();
        while(sc.hasNext()) s.add(sc.next());
        System.out.println(s.size());
    }
}
