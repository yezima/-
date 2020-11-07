public class Solution {
    public int cutRope(int target) {
        if(target<=1){
            return 0;
        }
        if(target==2){
            return 1;
        }
        if(target==3){
            return 2;
        }
        //数字长度
        int length=target%3==0?target/3:target/3+1;
        //数字后面2的个数
        int length2=3-target%3;
        int result=1;
        //算乘积
        for(int i=0;i<length;i++){
            result=result*(i<length-length2?3:2);
        }
        return result;
    }
}