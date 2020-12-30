import java.util.*;
public class Solution {
    public long maxWater (int[] arr) {
        if(arr.length == 0 || arr.length <= 2)
            return 0;
        int left = 0, right = arr.length-1;
        long res = 0;
        //取低的为边界
        int min = Math.min(arr[left],arr[right]);
        while(left < right){
            if(arr[left] < arr[right]){
                left++;
                //如果当前水位小于边界，则可以装水
                if(arr[left] < min){
                    res += min-arr[left];
                }else{
                    min = Math.min(arr[left],arr[right]);
                }
            }else{
                right--;
                if(arr[right] < min){
                    res += min-arr[right];
                }else{
                    min = Math.min(arr[right],arr[left]);
                }
            }
        }
        return res;
    }
}