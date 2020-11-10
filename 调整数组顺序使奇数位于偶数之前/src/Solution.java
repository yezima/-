public class Solution {
    public void reOrderArray(int[] array) {
        int len = array.length;
        if (len <= 1) {
            return;
        }
        int i = 0;
        while (i < len) {
            //如果i所指的元素是奇数，则继续前进
            if (array[i] % 2 == 1) {
                i++;
            } else {
                //当i遇到偶数停下时，j从i的后一位开始走
                int j = i + 1;
                //当j所指的元素也是偶数时，则j向后移动
                while (array[j] % 2 == 0) {
                    //当j移到队尾，则说明i到队尾全是偶数，已满足题目的奇偶分离要求
                    if (j == len - 1) {
                        return;
                    }
                    j++;
                }
                //此时j为奇数，i为偶数，用temp保存array[j]的值
                int temp = array[j];
                //把i到j-1的元素往后移一位
                while (j > i) {
                    array[j] = array[j - 1];
                    j--;
                }
                //把保存在temp中的原第j个元素的值赋给i，此时i就变成奇数了，并进入下个循环
                array[i] = temp;
            }
        }
    }
}