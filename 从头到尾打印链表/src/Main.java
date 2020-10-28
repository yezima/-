import java.util.*;
 class ListNode {
     int val;
      ListNode next = null;
      ListNode(int val) {
       this.val = val;
        }
   }
public class Main {
    public ArrayList<Integer> printListFromTailToHead(ListNode listNode) {
        ArrayList<Integer> list = new ArrayList<>();
        ListNode tmp = listNode;
        while(tmp!=null){
            list.add(0,tmp.val);
            tmp = tmp.next;
        }
        return list;
    }
}