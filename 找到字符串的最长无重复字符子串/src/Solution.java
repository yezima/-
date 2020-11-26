import java.util.*;

public class Solution {
    public int maxLength (int[] arr) {
        //先最笨法实现功能吧  再优化
        if(arr==null) return 0;
        if(arr.length==1) return 1;
        int max = 0;
        Set<Integer> set = new HashSet<Integer>();
        int leftIndex = 0;
        int len = arr.length;
        while(leftIndex<len){
            for(int i=leftIndex;i<len;i++){
                if(set.contains(arr[i])){
                    break;
                }
                set.add(arr[i]);
            }
            max = Math.max(max,set.size());
            set.clear();
            leftIndex++;
        }
        return max;
    }
}