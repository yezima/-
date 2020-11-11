import java.util.*;
 class RandomListNode {
    int label;
    RandomListNode next = null;
    RandomListNode random = null;

    RandomListNode(int label) {
        this.label = label;
    }
}
public class Solution {
    public static ArrayList<RandomListNode> alrs1;   //原始节点队列
    public static ArrayList<RandomListNode> alrs2;   //复制节点队列
    public static ArrayList<Integer> flag;           //路径选择标志

    public RandomListNode Clone(RandomListNode pHead)
    {
        if(pHead==null){
            return pHead;
        }
        alrs1=new ArrayList<RandomListNode>();
        alrs2=new ArrayList<RandomListNode>();
        flag=new ArrayList<Integer>();

        alrs1.add(pHead);
        RandomListNode p=new RandomListNode(pHead.label);
        RandomListNode first=p;
        alrs2.add(p);
        flag.add(1);
        bianli(pHead.next,p);
        if(flag.get(0)==1){
            bianli(pHead.random,p);
        }
        return first;
    }

    public void bianli(RandomListNode rn,RandomListNode pre){
        if(rn==null){
            return;
        }
        int loc=alrs1.indexOf(rn);
        RandomListNode buf;
        if(loc==-1){
            alrs1.add(rn);
            buf=new RandomListNode(rn.label);
            alrs2.add(buf);
            int loc2=alrs2.indexOf(pre);
            if(flag.get(loc2)==2) {
                pre.random=buf;
            }else {
                pre.next=buf;
            }
            pre=buf;
            flag.add(0);
            loc=flag.size()-1;
        }else{
            buf=alrs2.get(loc);
            pre.random=buf;
            pre=buf;
        }
        if(flag.get(loc)==0){
            flag.set(loc,1);
            bianli(rn.next,buf);
            if(flag.get(loc)==1){
                bianli(rn.random,buf);
            }
        }else if(flag.get(loc)==1){
            flag.set(loc,2);
            bianli(rn.random,buf);
        }else{
            return;
        }
    }
}