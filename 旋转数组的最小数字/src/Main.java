import java.util.ArrayList;
public class Main {
    public int minNumberInRotateArray(int [] array) {
        if(array==null||array.length==0){
            return 0;
        }
        //选最小！！！
        int left=0,right=array.length-1;
        while (left<right){
            int mid=left+(right-left)/2;
            if(array[mid]<array[right]){
                right=mid;
            }else if(array[mid]>array[right]){
                left=mid+1;
            }else {
                right--;
            }

        }
        return array[left];

    }
}