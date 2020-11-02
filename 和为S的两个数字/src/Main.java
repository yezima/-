import java.util.ArrayList;
public class Main {
    public ArrayList<Integer> FindNumbersWithSum(int [] array,int sum) {
        ArrayList<Integer> result=new ArrayList<Integer>();
        //边界条件
        if(array==null||array.length<=1){
            return result;
        }
        int smallIndex=0;
        int bigIndex=array.length-1;
        while(smallIndex<bigIndex){
            //如果相等就放进去
            if((array[smallIndex]+array[bigIndex])==sum){
                result.add(array[smallIndex]);
                result.add(array[bigIndex]);
                //最外层的乘积最小，别被题目误导
                break;
            }else if((array[smallIndex]+array[bigIndex])<sum){
                smallIndex++;
            }else{
                bigIndex--;
            }
        }
        return result;
    }
}