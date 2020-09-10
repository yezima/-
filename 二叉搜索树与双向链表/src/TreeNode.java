import java.util.*;
public class TreeNode {
    int val;
    TreeNode left = null;
    TreeNode right = null;

    public TreeNode(int val) {
        this.val = val;
    }
}
class Solution {
    public TreeNode prev = null;
    public void ConvertChild(TreeNode pRootOfTree) {
        if (pRootOfTree == null) return;
        ConvertChild(pRootOfTree.left);
        pRootOfTree.left = prev;
        if (prev != null) {
            prev.right = pRootOfTree;
        }
        prev = pRootOfTree;
        ConvertChild(pRootOfTree.right);
    }
    public TreeNode Convert(TreeNode pRootOfTree) {
        if (pRootOfTree == null) {
            return  null;
        }
        ConvertChild(pRootOfTree);
        TreeNode head = pRootOfTree;
        while (head.left != null) {
            head = head.left;
        }
        return head;
    }
}
