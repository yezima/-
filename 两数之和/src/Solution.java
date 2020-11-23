import java.util.*;

public class Solution {
    public int[] twoSum (int[] numbers, int target) {
        // write code here‘
        int[] twoSum = new int[2];
        List<Integer> list = new ArrayList<Integer>();
        for(int i=0 ; i < numbers.length ; i++){
            list.add(numbers[i]);
        }
        for(int i=0 ; i < numbers.length ; i++){
            int index = target - numbers[i];
            if(list.contains(index)){
                index  = list.indexOf(index);
                if(index != i){
                    if(index < i){
                        twoSum[0] = index + 1;
                        twoSum[1] = i + 1;
                    }else{
                        twoSum[1] = index + 1;
                        twoSum[0] = i + 1;
                    }
                    break;
                }

            }
        }
        return twoSum;
    }
}