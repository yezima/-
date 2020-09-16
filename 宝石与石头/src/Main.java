import java.util.HashSet;
import java.util.Set;

public class Main{
    public int newJewelsInStones(String J,String S) {
        Set<Character> set = new HashSet<>();

        for (char j : J.toCharArray()) {
            set.add(j);
        }
        int count = 0;

        //接下来遍历石头

        for (char s : S.toCharArray()) {
            if (set.contains(s)) {
                count++;
            }
        }
        return count;
    }
}
