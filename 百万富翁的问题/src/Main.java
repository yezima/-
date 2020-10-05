import java.lang.Math;
public class Main{
    public static void main(String[] args){
        long sumRich = 30 * 10;
        long sumStranger = (1L << 30) - 1;
        System.out.print(sumRich + " " + sumStranger);
    }
}
