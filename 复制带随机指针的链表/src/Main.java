import java.util.HashMap;
import java.util.Map;

class Node {
    int val;
    Node next;
    Node random;

    public Node(int val) {
        this.val = val;
        this.next = null;
        this.random = null;
    }
}
public class Main {
    public Node copyRandomList(Node head) {
        if (head == null) {
            return head;
        }
        Node cur = head;
        Map<Node,Node> map = new HashMap<>();
        while (cur != null) {
            Node node = new Node(cur.val);
            map.put(cur,node);
            cur = cur.next;
        }
        //新节点和老节点的映射关系全部都处理完了
        cur = head;
        while (cur != null) {
            map.get(cur).next = map.get(cur.next);
            map.get(cur).random = map.get(cur.random);
            cur = cur.next;
        }
        return map.get(head);
    }
}
