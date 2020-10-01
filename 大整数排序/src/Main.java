import java.util.*;
import java.math.*;
public class Main{
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        while(s.hasNext()){
            int n = s.nextInt();
            BigInteger[] bg = new BigInteger[n];
            for(int i=0; i<n; i++)
                bg[i] = s.nextBigInteger();
            Arrays.sort(bg);//Java中Arrays的排序静态方法调用即可完成
            for(int i=0; i<n; i++)
                System.out.println(bg[i]);
        }
    }
}
