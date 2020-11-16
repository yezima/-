import java.util.*;
 class TreeNode {
  int val = 0;
  TreeNode left = null;
   TreeNode right = null;
 }
public class Solution {
    public int run (TreeNode root) {
        if (root == null) {
            return 0;
        }
        int left = 1 + run(root.left);
        int right = 1 + run(root.right);
        if (left == 1 && right == 1) {
            return 1;
        }
        if (left == 1) {
            return right;
        }
        if (right == 1) {
            return left;
        }
        return left < right? left: right;
    }
}