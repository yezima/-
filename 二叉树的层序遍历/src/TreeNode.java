import java.util.*;

public class TreeNode {
    int val;
    TreeNode left;
    TreeNode right;
    TreeNode(int x) {
        val = x;
    }
}
class Solution {
    //把每一层的数据放到一个list 然后将这些list放到大的list中
    public List<List<Integer>>levelOrder(TreeNode root) {
        List<List<Integer>>ret = new LinkedList<>();
        if (root == null) return ret;
        Queue<TreeNode> queue = new LinkedList<>();
        queue.offer(root);

        while (!queue.isEmpty()) {
            //1.求当前队列的大小 size
            int size = queue.size();
            List<Integer>list = new ArrayList<>();
            //2.while（size>0） -->控制当前每一层的数据个数
            while (size > 0) {
                TreeNode cur = queue.poll();
                if (cur != null) {
                    list.add(cur.val);
                    if (cur.left != null) {
                        queue.offer(cur.left);
                    }
                    if (cur.right != null) {
                        queue.offer(cur.right);
                    }
                }
                size--;
            }
            ret.add(list);
    }
	return ret;
    }
}
