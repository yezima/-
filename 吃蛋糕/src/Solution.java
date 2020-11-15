public class Solution {
    int  cakeNumber(int n) {
        int x = 1;
        for (int i = 0; i < n - 1; i++) {
            x = (x + 1) * 3 / 2;
        }
        return x;
    }
}
