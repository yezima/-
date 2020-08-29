import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer>list = new ArrayList<>();
        list.add(10);
        list.add(30);
        list.add(40);
        list.add(50);
        list.add(70);
        list.add(85);
        list.add(100);
        Collections.sort(list);
        System.out.println(list);


    }
}
