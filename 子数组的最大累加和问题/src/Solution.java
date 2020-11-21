import java.util.*;

public class Solution {

    public int maxsumofSubarray (int[] arr) {
        // write code here
        int left=getLeftIndex(arr);
        int right=getRightIndex(arr);
        int result=0;
        for(int i=left;i<=right;i++){
            result+=arr[i];
        }
        return result;
    }
    public int getRightIndex (int[] arr) {
        int right=0;
        int max=0;
        int temp=0;
        for(int i=0;i<arr.length;i++){
            temp+=arr[i];
            if(temp>max){
                right=i;
                max=temp;
            }
        }
        return right;
    }
    public int getLeftIndex(int[] arr) {
        int length=arr.length;
        int left=arr.length;
        int max=0;
        int temp=0;
        for(int i=length-1;i>=0;i--){
            temp+=arr[i];
            if(temp>max){
                left=i;
                max=temp;
            }
        }
        return left;
    }
}