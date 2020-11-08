import javax.swing.tree.TreeNode;
 public class TreeNode {
    int val = 0;
    TreeNode left = null;
    TreeNode right = null;
    public TreeNode(int val) {
        this.val = val;
    }
}

//递归方法（前序）
public class Solution {
    //String str = "";
    private int index = -1;
    String Serialize(TreeNode root) {
        if(root == null){
            return "";
        }
        StringBuilder sb = new StringBuilder();
        SerializeHelp(root, sb);
        return sb.toString();
    }
    //主要实现前序遍历，然后加上#和！
    void SerializeHelp(TreeNode root, StringBuilder sb){
        if(root == null){
            sb.append("#!");
            return;
        }
        sb.append(root.val).append("!");
        SerializeHelp(root.left, sb);
        SerializeHelp(root.right, sb);
    }
    TreeNode Deserialize(String str) {
        if(str == null || str == ""){
            return null;
        }
        String[] strs = str.split("!"); //利用结束符分割出每个节点的值便于处理。
        return DeserializeHelp(strs);
    }
    TreeNode DeserializeHelp(String[] strs){
        index++;
        if(!strs[index].equals("#")){ //按顺序添加各节点。
            TreeNode node = new TreeNode(Integer.parseInt(strs[index]));
            node.left = DeserializeHelp(strs);
            node.right = DeserializeHelp(strs);
            return node;
        }
        return null;
    }
}