import java.util.*;
public class Main {
    public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        while (cin.hasNextLine()) {
            String str = cin.nextLine();
            System.out.println(reverseSentence(str));
        }
    }
    //逆置函数
    public static void reverse(char[] ch,int start,int end) {
        while(start < end) {
            char tmp=ch[start];
            ch[start]=ch[end];
            ch[end]=tmp;
            start++;
            end--;
        }
    }
    //核心代码
    public static String reverseSentence(String str) {
        if(str == null) {
            return null;
        }
        char[] ch = str.toCharArray();
        //先对整体进行逆置
        reverse(ch,0,str.length()-1);
        int i = 0;
        int j = 0;
        //开始部分逆置，建议对着代码进行画图理解
        while(i < ch.length) {
        //都是空格，都进行++
            if(ch[i] == ' ') {
                i++;
                j++;
            }else if(j == ch.length || ch[j] == ' ' ) {//顺序不能反，否则会空指针异常
        //逆置每个单词,这里是--j，j本身会发生移动
                reverse(ch,i,--j);
                i = ++j;
            }else {
                ++j;
            }
        }
        return String.copyValueOf(ch);
    }
}