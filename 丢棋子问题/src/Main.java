import java.util.*;
public class Main {
    public int solve (int n, int k) {
        public int main(int N,int K) {
            if ( N<1 || K<1 )
                return 0;
            if ( K == 1 ) return N;
            int[] preArr = new int[N+1];
            int[] curArr = new int[N+1];
            for(int i=1; i<curArr.length; ++i) {
                curArr[i] = i;
            }
            for(int i=1; i<K; ++i) {
                int[] tmp = preArr;
                preArr = curArr;
                curArr = tmp;
                for(int j=1; j<curArr.length; ++j){
                    int min = Integer.MAX_VALUE;
                    for(int K=1; k<j+1; ++k) {
                        min = Math.min(min,  Math.max(preArr[k-1], curArr[j-k]));
                    }
                    curArr[j] = min + 1;
                }
            }
            return curArr[curArr.length-1];
        }
    }
}