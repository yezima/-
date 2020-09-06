public class Main {
    public static void main(String[] args) {
        Test test = new Test();
        Node root = test.bulidTree();
        test.preOrderTraversal(root);
        System.out.println();
        test.inOrderTraversal(root);
        System.out.println();
        test.postOrderTraversal(root);
        System.out.println();
        test.getSize1(root);
        System.out.println("结点的个数：" + Test.size);
        System.out.println("结点的个数：" + test.getSize2(root));
        test.getLeafSize1(root);
        System.out.println("叶子结点的个数：" + Test.leafSize);
        System.out.println("叶子结点的个数：" + test.getLeafSize2(root));
    }
}
