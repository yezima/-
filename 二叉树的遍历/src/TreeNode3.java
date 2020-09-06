import java.util.ArrayList;
import java.util.List;

public class TreeNode3 {
    int val;
    TreeNode3 left;
    TreeNode3 right;
    TreeNode3(int x) {val = x;}
}

class Solution3{
    public List<Integer>postorderTraversal(TreeNode root) {
        List<Integer>list = new ArrayList<>();
        if (root == null) {
            return list;
        }
        System.out.print(root.val+" ");

        List<Integer>left = postorderTraversal(root.left);
        list.addAll(left);

        List<Integer>rigth = postorderTraversal(root.right);
        list.addAll(rigth);

        list.add(root.val);
        return list;
    }
}
