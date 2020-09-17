import javax.swing.tree.TreeNode;
public class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;
    TreeNode(int x) {
        val = x;
    }
}
public class Main {
    public void Mirror(TreeNode root) {
//节点为null 不处理
        if(root == null)
            return;
//节点的左右子节点为null(即就是节点为叶子节点）同样不处理
        if(root.left == null && root.right == null)
            return;
//节点的左右子节点交换
        TreeNode pTemp = root.left;
        root.left = root.right;
        root.right = pTemp;
//递归处理
        if(root.left != null)
            Mirror(root.left);
        if(root.right != null)
            Mirror(root.right);
    }
}
