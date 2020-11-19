import java.util.*;
public class Main{
    public static void main(String[] args){
        Scanner scan=new Scanner(System.in);
        String s[] = scan.nextLine().split(",|=");
        System.out.println("a="+s[3]+","+"b="+s[1]);
    }
}