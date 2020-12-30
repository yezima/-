import java.util.*;
public class Solution {
    public int[] solve (int n, int m, int[] a) {
        int k=m%n;
        reverse(a,0,n-1);
        reverse(a,0,k-1);
        reverse(a,k,n-1);
        return a;
    }
    public void reverse(int[] a,int start,int end){
        while (start<end){
            int temp=a[start];
            a[start]=a[end];
            a[end]=temp;
            start++;
            end--;
        }
    }
}