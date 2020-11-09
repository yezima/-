public class Solution {
    public String ReverseSentence(String str) {
        if (str == null || str.length() == 0)
            return str;
        char[] arr = str.toCharArray();//转换成字符数组
        reverse(arr, 0, arr.length - 1);//先全部翻转一次
        int start = 0;//指向单词第一个字母
        int end = 0;//指向单词最后一个字母
        while (start < arr.length) {
            if (arr[start] == ' ') {
                //如果start指向的是空格，就换下一个，因为指针要指向的是单词。
                start++;
                end++;
            } else if (end == arr.length || arr[end] == ' ') {
                //要么尾部是空格，要么end刚刚超过数组最后一个角标，这两种情况就应该翻转了
                //end之所以会超过最后角标，是因为当最后一个字符不是空格时，会让end++，所以会越界
                reverse(arr, start, end-1);
                //翻转后，应该重新记录下个单词，因此更新end和start。
                end++;
                start = end;//这句和上一句可以写成start = ++end;
            } else {
                //到这里就说明，start指的不是空格，end也指的不是空格，说明是正常单词，end++即可
                end++;
            }
        }
        return String.valueOf(arr);
    }
    private void reverse(char[] arr, int begin, int end){
        while(begin<end){
            char temp = arr[begin];
            arr[begin] = arr[end];
            arr[end] = temp;
            begin++;
            end--;
        }
    }
}