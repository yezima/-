import java.util.*;
public class Main {

    public int[] MySort (int[] arr) {
        // write code here
        return sort(arr);
    }

    private int[] sort(int []arr){
        if(arr.length==1)
            return arr;
        else{
            int mid = arr.length/2;
            int temp[]=new int[arr.length];
            int [] left=sort(Arrays.copyOfRange(arr,0,mid));
            int [] right=sort(Arrays.copyOfRange(arr,mid,arr.length));
            int i = 0;
            int j = 0;
            for(int k = 0;k<temp.length;k++){
                if(i<left.length&&j<right.length) {
                    if(left[i]<=right[j]){
                        temp[k]=left[i];
                        i++;
                    }else{
                        temp[k]=right[j];
                        j++;
                    }
                }else if(i<left.length&&j>=right.length){
                    temp[k]=left[i];
                    i++;
                }else if(i>=left.length&&j<right.length){
                    temp[k]=right[j];
                    j++;
                }
            }
            return temp;
        }
    }
}