import java.util.*;
public class Main{
    public static void main(String[] args){
        Scanner scan=new Scanner(System.in);
        String s =scan.nextLine();
        String[] p=s.split(" ");
        int a= Integer.parseInt(p[0]);
        int b= Integer.parseInt(p[1]);
        if(b==0){
        }else{  int k=a/b;
            int j=a%b;
            System.out.print(k+" "+j);}
    }
}