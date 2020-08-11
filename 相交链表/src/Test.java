
class Node {
    public int data;//0
    public Node next;//null

    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}

public class Test {
    public Node getIntersectionNode(Node headA,Node headB) {
        //1.求长度，走差值步
        int lenA = 0;
        int lenB = 0;
        Node pl = headA;
        Node ps = headB;
        while (pl != null) {
            lenA++;
            pl = pl.next;
        }
        while (ps != null) {
            lenB++;
            ps = ps.next;
        }
        pl = headA;
        ps = headB;
        int len = lenA - lenB;
        if (len < 0 ) {
            pl = headB;
            ps = headA;
            len = lenB - lenA;
        }
        //一定是pl指向的是最长的单链表
        for (int i = 0;i < len;i++) {
            pl = pl.next;
        }
        //2.ps 和 pl 一定是在同一个起跑线上
        while (ps != pl && pl != null && ps != null) {
            ps = ps.next;
            pl = pl.next;
        }
        if (pl == ps && pl != null && ps != null) {
            return pl;
        }
        return null;
    }
}
