public class Solution {
    public int numTrees(int n) {
        if(n == 1)return 1;
        int dp[] = new int[n+1];
        dp[1] = 1;
        for(int i = 2; i<= n; i++){
            int mid = i/2;
            dp[i] += 2*dp[i-1];
            for(int j = 1; j < mid; j++)
                dp[i] += 2*dp[j]*dp[i-1-j];
            if(i % 2 != 0)//对奇数做单独的处理
                dp[i] += dp[mid]*dp[mid];
        }
        return dp[n];
    }
}