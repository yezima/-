import java.util.*;

public class Solution {
    public int compare (String version1, String version2) {
// write code here
        String[] s1 = version1.split("[.]");
        String[] s2 = version2.split("[.]");
        int len = Math.min(s1.length, s2.length);
        for (int i = 0; i < len; i++){
            if(s1[i].equals(s2[i])) continue;
            if(Integer.parseInt(s1[i]) > Integer.parseInt(s2[i])){
                return 1;
            }else if (Integer.parseInt(s1[i]) < Integer.parseInt(s2[i])){
                return -1;
            }else {
                return 0;
            }
        }
//缺失子版本号的部分默认为0，所以长的更大
        if(s1.length > s2.length){
            return 1;
        }else if(s1.length < s2.length){
            return -1;
        }
        return 0;
    }
}