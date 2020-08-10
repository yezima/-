class Node {
    public int data;//0
    public Node next;//null
    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}
public class Test {
    public class PalindromeList {
        public boolean chkPalindrome(Node A) {
            //单链表为空 肯定不是回文结构
            if (A == null) {
                return false;
            }
            //这是只有头结点自己 必然是回文结构
            if (A.next == null) {
                return true;
            }
            //找到单链表的中间结点
            Node slow = A;
            Node fast = A;
            while (fast != null && fast.next != null) {
                fast = fast.next.next;
                slow = slow.next;
            }
            //反转单链表的后半部分，slow肯定在中间位置
            Node cur = slow.next;
            while (cur != null) {
                Node curNext = cur.next;
                cur.next = slow;
                slow = cur;
                cur = curNext;
            }
            //slow是最后一个节点了
            //开始一个从头走，一个从尾走
            while (slow != A) {
                if (slow.data != A.data) {
                    return false;
                }
                //判断偶数的情况
                if (A.next == slow) {
                    return true;
                }
                slow = slow.next;
                A = A.next;
            }
            return true;
        }
    }
}
