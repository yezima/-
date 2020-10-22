import java.util.Scanner;

public class Main {

    public static Node[] nodes;
    public static int n;
    public static int root;

    public static class Node {
        public int val;
        public int left, right;
        Node(int val, int left , int right) {
            this.val = val;
            this.left = left;
            this.right = right;
        }
    }

    public static class ReturnVal {
        public boolean isBalance;
        public int height;

        ReturnVal(boolean isBalance, int height) {
            this.isBalance = isBalance;
            this.height = height;
        }
    }

    public static ReturnVal isBalance(int index) {
        if (index == 0) {
            return new ReturnVal(true, 0);
        }
        ReturnVal left = isBalance(nodes[index].left);
        if (!left.isBalance) return new ReturnVal(false, 0);
        ReturnVal right = isBalance(nodes[index].right);
        if (!right.isBalance) return new ReturnVal(false, 0);
        if (Math.abs(left.height-right.height) > 1) return new ReturnVal(false, 0);
        int height = Math.max(left.height, right.height) + 1;
        boolean isBalance = Math.abs(left.height-right.height) <= 1 && left.isBalance & right.isBalance;
        return new ReturnVal(isBalance, height);
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        n = input.nextInt();
        root = input.nextInt();
        nodes = new Node[n+1];
        for (int i = 0; i < n; i++) {
            int val = input.nextInt();
            int left = input.nextInt();
            int right = input.nextInt();
            nodes[val] = new Node(val, left, right);
        }
        System.out.println(isBalance(root).isBalance);
    }
}
