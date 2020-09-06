import java.util.ArrayList;
import java.util.List;

public class TreeNode2 {
    int val;
    TreeNode2 left;
    TreeNode2 right;
    TreeNode2(int x) {val = x;}
}

class Solution2 {
    public List<Integer>inorderTraversal(TreeNode root) {
        List<Integer>list = new ArrayList<>();
        if (root == null) {
            return list;
        }
        System.out.print(root.val+" ");

        List<Integer>left = inorderTraversal(root.left);
        list.addAll(left);

        list.add(root.val);

        List<Integer>rigth = inorderTraversal(root.right);
        list.addAll(rigth);
        return list;
    }
}
