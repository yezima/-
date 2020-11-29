import java.util.*;
public class Main{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int n=s.nextInt();
        int a[]=new int[n];
        int sum=0,av=0;
        for(int i=0;i<n;i++){
            a[i]=s.nextInt();
            sum+=a[i];
        }
        if(sum%n!=0){System.out.println(-1);
            return;}
        av=sum/n;
        for(int i=0;i<n;i++){
            if(Math.abs(a[i]-av) % 2 !=0){
                System.out.println(-1);
                return ;
            }
        }
        int count=0;
        for(int i=0;i<n;i++){
            if(a[i]>av){
                count+=(a[i]-av)/2;
            }
        }
        System.out.println(count);
    }
}