import java.util.*;
public class Main {
    public int getValue(int[] gifts, int n) {
        Arrays.sort(gifts);//数组排序，采用Arrays的sort方法
        int ans = gifts[n/2];//理论上超过半数的数字
        int num = 0;
//遍历数组，进行统计
        for(int i = 0; i < gifts.length; i++) {
            if(gifts[i] == ans) {
                num++;
            }
        }
        return num <= n/2 ? 0 : ans;
    }
}

//最优解

/**
public class Main {
    public int getValue(int[] gifts, int n) {
        if(gifts.length<n) return 0;
        if(gifts.length==0) return 0;
        int count=0,temp=0;
        for(int i=0;i<n;i++)
        {if(count==0)
        {
            temp=gifts[i];
            count=1;
        }
        else{
            if(temp==gifts[i])
                count++;
            else
                count--;
        }
        }
        int size=0;
        for(int i=0;i<n;i++){
            if(temp==gifts[i])
                size++;
        }
        return (size>n/2)?temp:0;
    }
}
 */

