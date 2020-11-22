import java.util.ArrayList;

class ListNode {
      int val;
      ListNode next;
      ListNode(int x) {
          val = x;
          next = null;
      }
  }
  public class Solution {

      /**
       * 合并 k 个已排序的链表并将其作为一个已排序的链表
       *
       * @param lists
       * @return
       */
      public ListNode mergeKLists(ArrayList<ListNode> lists) {
          if (lists == null || lists.size() < 1) return null;
          if (lists.size() == 1) return lists.get(0);
          if (lists.size() % 2 != 0) lists.add(null);
          ArrayList<ListNode> sum = new ArrayList<>();
          for (int i = 0; i < lists.size(); i += 2) {
              sum.add(mergeTwoLists(lists.get(i), lists.get(i + 1)));
          }
          return mergeKLists(sum);
      }

      /**
       * 合并两个有序链表成一个有序链表
       *
       * @param l1 ListNode类
       * @param l2 ListNode类
       * @return ListNode类
       */
      public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
          // write code here
          if (l1 == null) return l2;
          if (l2 == null) return l1;
          ListNode h2 = new ListNode(0);
          while (l1 != null) {
              ListNode next = l1.next;
              h2 = addListNode(l1, l2);
              l2 = h2;
              l1 = next;
          }
          return h2;
      }

      /**
       * 一个节点一个节点的插入
       *
       * @param node 要插入的节点
       * @param head 头节点
       */
      public ListNode addListNode(ListNode node, ListNode head) {
          ListNode h = new ListNode(0);
          h.next = head;
          ListNode q = h;
          while (true) {
              if (head == null) {
                  q.next = node;
                  node.next = null;
                  break;
              }
              if (node.val > head.val) {
                  q = head;
                  head = head.next;
              } else {
                  q.next = node;
                  node.next = head;
                  break;
              }
          }

          return h.next;
      }
  }