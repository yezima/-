class Node {
    public int data;//0
    public Node next;//null
    public Node head;

    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}
public class Test {
    public boolean hascycle() {
        Node fast = this.head;
        Node slow = this.head;
        while (fast != null && fast.next !=null) {
            fast = fast.next.next;
            slow = slow.next;
            if (fast == slow) {
                return true;
            }
        }
        return false;
    }
}
