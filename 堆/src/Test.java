public class Test {
    public static void main(String[] args) {

        TestHeap testHeap = new TestHeap();
        int[] array = {27,15,19,18,28,34,65,49,25,37};
        testHeap.createTest(array);
        testHeap.show();
        testHeap.push(80);
        testHeap.show();
        testHeap.pop();
        testHeap.show();
        System.out.print("排序：");
        testHeap.headSort();
        testHeap.show();
    }
}
