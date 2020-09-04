import java.util.Stack;

public class MinStack {
    private Stack<Integer>stack;
    private Stack<Integer>minstack;

    public MinStack() {
        this.stack = new Stack<>();
        this.minstack = new Stack<>();
    }
    public void push(int x) {
        stack.push(x);
        if (minstack.empty()) {
            //最小栈内没有元素
            minstack.push(x);
        }else {
            //最小栈内有元素 那倒栈顶元素 与x比较
            int top = minstack.peek();
            if (x <= top) {
                minstack.push(x);
            }
        }
    }

    public void pop() {
        if (!stack.empty()) {
            int tmp = stack.pop();
            if (tmp == minstack.peek()) {
                minstack.pop();
            }
        }
    }

    public int top() {
        if (stack.empty()) {
            return -1;
        }
        return stack.peek();
    }

    public int getMin() {
        if (minstack.empty()) {
            return -1;
        }
        return minstack.peek();
    }

}
