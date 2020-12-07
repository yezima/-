public class Solution {
    public void sortColors(int[] A) {
        int n=A.length;
        int begin=0,end=n-1,lt=0,gt=n-1;
        for(int i=0;i<=gt;i++){
            if(A[i]<1){
                A[i]=A[lt];
                A[lt]=0;
                lt++;
            }
            else if(A[i]>1){
                A[i]=A[gt];
                A[gt]=2;
                gt--;
                i=i-1;
            }
        }
    }
}