import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int int1= scanner.nextInt();
        int int2= scanner.nextInt();
        System.out.println(int1*int2 / methods(int1,int2));
    }
    public static int methods(int int1,int int2){
        if(int1 == int2){
            return int2;
        }
        if(int1 > int2){
            int differ= int1 - int2;
            return methods(int2,differ);
        }else{
            int differ= int2 - int1;
            return methods(int1,differ);
        }
    }
}
