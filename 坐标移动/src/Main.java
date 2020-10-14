import java.util.*;
public class Main{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        //判断是否有下一个录入的元素
        while(sc.hasNext()){
            String str=sc.nextLine();
            //使用;切割录入的字符串数据,返回字符串数组
            String[] A=str.split(";");
            int x=0,y=0;
            for(String string:A){
                //遍历字符串数组获取每一个部分内容,分别判断0索引对应的元素的内容
                //判断从1号位置开始是否有连续的1到2位的数字。(数字是0-9)
                if(string.charAt(0)=='D' && string.substring(1).matches("[0-9]{1,2}"))
                //将字符串的字符转换为整形数字
                    x+=Integer.parseInt(string.substring(1));
                if(string.charAt(0)=='W' && string.substring(1).matches("[0-9]{1,2}"))
                    y+=Integer.parseInt(string.substring(1));
                if(string.charAt(0)=='S' && string.substring(1).matches("[0-9]{1,2}"))
                    y-=Integer.parseInt(string.substring(1));
                if(string.charAt(0)=='A' && string.substring(1).matches("[0-9]{1,2}"))
                    x-=Integer.parseInt(string.substring(1));
            }
            System.out.println(x+","+y);
        }
        sc.close();
    }
}