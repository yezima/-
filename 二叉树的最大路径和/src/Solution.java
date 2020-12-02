 class TreeNode {
     int val = 0;
     TreeNode left = null;
     TreeNode right = null;
 }
public class Solution {
    int maxValue = Integer.MIN_VALUE;
    public int help(TreeNode root){
        if(root == null)return 0;
        int left = help(root.left);
        int right = help(root.right);
        maxValue = Math.max(maxValue, Math.max(0,left) + root.val +  Math.max(0,right));
        return Math.max( Math.max(0,left) + root.val, Math.max(0,right)+root.val);
    }
    public int maxPathSum(TreeNode root) {

        if(root == null)return 0;
        //if(root.left == null && root.right == null)
        help(root);
        return maxValue;
    }
}