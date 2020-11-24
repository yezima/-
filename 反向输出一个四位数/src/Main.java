import java.util.Scanner;
public class Main{
    public static void main(String[] args){
        Scanner in=new Scanner(System.in);
        int a=in.nextInt();
        int b=a/1%10;
        String f=String.valueOf(b);
        int c=a/10%10;
        String g=String.valueOf(c);
        int d=a/100%10;
        String h=String.valueOf(d);
        int e=a/1000%10;
        String i=String.valueOf(e);
        System.out.println(f+g+h+i);
    }
}