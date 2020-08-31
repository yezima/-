import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

class SelectionSort {
    public static Node selectionSort(Node head) {
        Node tail = null; //有序部分的尾节点
        Node curr = head; //未排序的头节点
        Node preSmall = null; //最小节点前一个节点
        Node small = null; //最小节点

        while (curr != null) {
            small = curr; //初始化最小值

            //--在未排序的部分中找到最小值节点前一个节点
            preSmall = getSmallestPreNode(curr);

            //--删除该节点
            if (preSmall != null) {
                small = preSmall.getNext();
                preSmall.setNext(small.getNext());
            }

            //--将该节点连接到排好序的链表尾部
            if (tail == null) {
                head = small; // 整个链表的最小值为头节点
            } else {
                tail.setNext(small);
            }
            tail = small;

            curr = curr == small ? curr.getNext() : curr; // 未排序的头节点是否移动
        }

        return head;
    }

    private static Node getSmallestPreNode(Node head) {
        Node preSmall = null;
        Node small = head;
        Node preCurr = head;
        Node curr = head.getNext();
        while (curr != null) {
            if (curr.getValue() < small.getValue()) {
                preSmall = preCurr;
                small = curr;
            }
            //移动
            preCurr = curr;
            curr = curr.getNext();
        }
        return preSmall;
    }

    public static void main(String[] args) {
        Node head = Node.createNodeList(new Integer[]{6, 4, 3, 2, 5});
        head = SelectionSort.selectionSort(head);
        Node.printNodeList(head);
    }

}

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String n = in.readLine();
        String[] items = in.readLine().split(" ");
        Node head = Node.createNodeList(items);
        head = SelectionSort.selectionSort(head);
        Node.printNodeList(head);
    }
}

class Node {
    private Node next;
    private int value;

    public Node(int value) {
        this.value = value;
    }

    public Node getNext() {
        return next;
    }

    public void setNext(Node next) {
        this.next = next;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public static Node createNodeList(Integer[] values) {
        Node head = new Node((values[0]));
        Node node = head;
        for (int i = 1; i < values.length; i++) {
            Node newNode = new Node(values[i]);
            node.next = newNode;
            node = newNode;
        }
        return head;
    }

    public static Node createLoopNodeList(Integer[] values) {
        Node head = new Node((values[0]));
        Node node = head;
        for (int i = 1; i < values.length; i++) {
            Node newNode = new Node(values[i]);
            node.next = newNode;
            node = newNode;
        }
        node.setNext(head);
        return head;
    }

    public static Node createNodeList(String[] values) {
        Node head = new Node(Integer.parseInt(values[0]));
        Node node = head;
        for (int i = 1; i < values.length; i++) {
            Node newNode = new Node(Integer.parseInt(values[i]));
            node.next = newNode;
            node = newNode;
        }
        return head;
    }

    public static void printNodeList(Node head) {
        StringBuilder sb = new StringBuilder();
        while (head != null) {
            sb.append(head.getValue()).append(" ");
            head = head.getNext();
        }
        System.out.println(sb.toString());
    }

    public static void printLoopNodeList(Node head) {
        if (head == head.getNext()) { //只有一个节点
            System.out.println(head.getValue());
        } else {
            StringBuilder sb = new StringBuilder();
            Node last = head;
            while (last.getNext() != head) {
                sb.append(last.getValue()).append(" ");
                last = last.getNext();
            }
            System.out.println(sb.toString());
        }
    }
}

