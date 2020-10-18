import java.util.*;
public class Main {
    public String replaceSpace(String iniString, int length) {
// 如果允许分配额外空间
        if (iniString == null || iniString.length() <= 0) {
            return iniString;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char c = iniString.charAt(i);
            if (c == ' ')
                sb.append("%20");
            else
                sb.append(c);
        }
        return sb.toString();
    }
}


/**方法二
public class Main {
    public String replaceSpace(String iniString, int length) {
//字符串生成字符数组
        char[] ch = iniString.toCharArray();
        if(iniString == null || length <= 0) {
            return null;
        }
        int mLen = 0;//计算字符的个数
        int numBlank = 0;//计算空格的数组
        int i = 0;//从0号下标开始遍历
        while(i < ch.length) {
            ++mLen;
            if(ch[i] == ' ') {
                ++numBlank;
            }
            ++i;
        }
//替换为%20之后，新数组的长度。
        int newlen = mLen + numBlank * 2;//a%20b%20c%20d a b c d
//新的数组
        char []ch2 = new char[newlen];
//先把ch里面的内容，全部拷贝到ch2,我们要在ch2里面进行操作。
        System.arraycopy(ch,0,ch2,0,length);
        int indexofMLen = mLen-1;//也必须减一
        int indexofnew = newlen-1;//不减一就越界了
        while(indexofnew > indexofMLen && indexofMLen >= 0)
        {
            if(ch2[indexofMLen] == ' ')
            {
                ch2[indexofnew--] = '0';
                ch2[indexofnew--] = '2';
                ch2[indexofnew--] = '%';
            }
            else
            {
                ch2[indexofnew] = ch2[indexofMLen];
                indexofnew--;
            }
            --indexofMLen;
        }
        return String.copyValueOf(ch2);
    }
}
 */
