import java.util.*;


public class Solution {
    public static String solve (String s, String t) {
        // write code here
        int maxLength = Math.max(s.length(), t.length());
        String maxString  = s.length() > t.length() ? s : t;
        int minLength = Math.min(s.length(), t.length());
        String minString  = s.length() > t.length() ? t : s;
        StringBuilder resultSum = new StringBuilder();
        int carryOver = 0;
        for(int i = maxLength-1 , j = minLength-1 ; i >=0 || j>= 0;i--,j--  ){
            int maxInt = Integer.parseInt(String.valueOf(maxString.charAt(i))) ;
            int minInt = 0;
            if(j >= 0){
                minInt =  Integer.parseInt(String.valueOf(minString.charAt(j)));
            }
            int sum = maxInt + minInt + carryOver;
            carryOver = (sum - (sum % 10))/10;
            resultSum.append(sum % 10);
        }
        resultSum.append(carryOver);
        resultSum = resultSum.reverse();
        for (int i = 0 ; i < resultSum.length() ; i++){
            if (resultSum.charAt(i) == '0'){
                resultSum.deleteCharAt(0);
            }else{
                break;
            }
        }
        return resultSum.toString();

    }

    public static void main(String[] args) {
        solve("733064366","459309139");
    }
}