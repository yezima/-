import java.util.ArrayList;
import java.util.List;

public class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;
    TreeNode(int x) {val = x;}
}

class Solution {
    public List<Integer>preorderTraversal(TreeNode root) {
        List<Integer>list = new ArrayList<>();
        if (root == null) {
            return list;
        }
        System.out.print(root.val+" ");
        list.add(root.val);

        List<Integer>left = preorderTraversal(root.left);
        list.addAll(left);
        List<Integer>rigth = preorderTraversal(root.right);
        list.addAll(rigth);
        return list;
    }
}
