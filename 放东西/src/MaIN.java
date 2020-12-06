import java.util.*;

 class MaiN {

    // 计算放苹果方法的数目
    private int count(int m, int n) {
        // 没有苹果或者只剩一个盘子
        if (m == 0 || n == 1) return 1;
        // 盘子大于苹果， 则不考虑多出来的盘子
        if (n > m) return count(m, m);
        return count(m, n-1) + count(m - n, n);
    }

    public MaiN() {
        Scanner in = new Scanner(System.in);
        while (in.hasNextInt()) {
            int m = in.nextInt();
            int n = in.nextInt();
            int result = -1;
            if (n >= 1 && n <= 10 && m >= 1 && m <= 10) {
                result = count(m, n);
            }
            System.out.println(result);
        }
    }

    public static void main(String[] args)
    {
        MaiN solution = new MaiN();
    }
}   