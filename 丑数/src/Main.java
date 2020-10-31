import java.util.*;
public class Main {
    public int GetUglyNumber_Solution(int index) {
        if(index<=0) return 0;
        int[] result=new int[index];
        int p2=0,p3=0,p5=0;
        result[0]=1;
        for (int i=1;i<index;i++){
            int min=Math.min(result[p2]*2,Math.min(result[p3]*3,result[p5]*5));
            if (min==result[p2]*2) {
                result[i]=min;
                p2++;
            }
            if (min==result[p3]*3){
                result[i]=min;
                p3++;
            }
            if (min==result[p5]*5){
                result[i]=min;
                p5++;
            }
        }
        return result[index-1];
    }
}