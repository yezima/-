public class Main {
    int jumpFloorII(int n) {
        if (n==0 || n==1) return 1;
        int a = 1, b;
        for (int i=2; i<=n; ++i) {
            b = a << 1; //  口诀：左移乘2，右移除2
            a = b;
        }
        return b;
    }
}