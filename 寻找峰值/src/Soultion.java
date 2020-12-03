class Solution {
    public int solve (int[] a,int aLen) {
        // write code here
        for (int i = aLen - 1; i >= 0; --i) {
            if (i == aLen - 1) {
                if (a[i] >= a[i - 1])
                    return i;
            }
            else if (i == 0) {
                if (a[i] >= a[i + 1])
                    return i;
            }
            else {
                if (a[i] >= a[i + 1] && a[i] >= a[i - 1])
                    return i;
            }
        }
        return -1;
    }
};