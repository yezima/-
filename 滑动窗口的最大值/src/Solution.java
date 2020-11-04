import java.util.*;
public class Solution {
    public ArrayList<Integer> maxInWindows(int [] num, int size)
    {
        ArrayList<Integer> list = new ArrayList<>();
        LinkedList<Integer> stack = new LinkedList<>();
        if(size==0||num.length==0||size>num.length)return list;
        for (int i = 0; i < size; i++) {

            while(!stack.isEmpty()&&num[stack.peekLast()]<num[i]){
                stack.pollLast();
            }
            stack.add(i);
        }
        list.add(num[stack.peekFirst()]);
        for (int i = 1; i < num.length-size+1 ; i++) {
            while(!stack.isEmpty()&&i>stack.peekFirst()){
                stack.pollFirst();
            }
            while(!stack.isEmpty()&&num[stack.peekLast()]<num[i+size-1]){
                stack.pollLast();
            }
            stack.addLast(i+size-1);
            list.add(num[stack.peekFirst()]);
        }
        return list;
    }
}