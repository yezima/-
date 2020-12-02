import java.util.*;

public class Main {
    public static  int sqrt (int x) {
        // write code here
        if(x == 0 || x == 1){
            return x;
        }
        long r = x;
        long result = r * r;
        while(x  < result){
            r = (r+x/r)/2;
            result = r * r;
        }
        return (int)r;
    }
}