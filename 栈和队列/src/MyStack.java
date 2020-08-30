import java.lang.reflect.Array;
import java.util.Arrays;

public class MyStack {
    public int[] elem;//数组
    public int top;//表示当前可以存放数据的小标

    public MyStack() {
        this.elem = new int[10];
    }

    public void push(int val) {
        if (full()) {
            this.elem = Arrays.copyOf(this.elem,2*this.elem.length);
        }
        this.elem[this.top++] = val;
    }

    public boolean empty() {
        return this.top == this.elem.length;
    }

    public boolean full() {
        return this.top == this.elem.length;

    }

    public int pop() {
        if (empty()) {
            throw new RuntimeException("栈空！");
        }
        int data = this.elem[this.top-1];
        this.top--;
        return data;
        //return this.elem[--this.top]
    }

    public int peek() {
        if (empty()) {
            throw new RuntimeException("栈空！");
        }
        return this.elem[this.top-1];
    }

    public int size() {
        return this.top;
    }
}
