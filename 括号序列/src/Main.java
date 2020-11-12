import java.util.Stack;

public class Main {
    public boolean isValid(String s) {
        Stack<Character> stack = new Stack<>();
        for(int i=0; i < s.length(); i++){
            char c = s.charAt(i);
            if(c == '(' || c == '{' || c == '[' || stack.size() == 0){
                stack.push(c);
            }else{
                char peek = stack.peek();
                if(c == ')'){
                    if(peek == '(')
                        stack.pop();
                    else
                        return false;
                    continue;
                }
                if(c == '}'){
                    if(peek == '{')
                        stack.pop();
                    else
                        return false;
                    continue;
                }
                if(c == ']'){
                    if(peek == '[')
                        stack.pop();
                    else
                        return false;
                    continue;
                }
                stack.push(c);

            }
        }
        return stack.size() == 0;

    }
}