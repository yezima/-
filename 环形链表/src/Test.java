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
    public Node datectCycle(Node head) {
        Node fast = head;
        Node slow = head;
        while (fast != null && fast.next !=null) {
            fast = fast.next.next;
            slow = slow.next;
            if (fast == slow) {
                break;
            }
        }
        if (fast != null && fast.next != null) {
            return null;
        }
        slow = head;
        while (fast != slow) {
            fast = fast.next;
            slow = slow.next;
        }
        return slow;
    }
}
