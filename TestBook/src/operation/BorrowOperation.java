package operation;

import book.Book;
import book.BookList;

import java.util.Scanner;

public class BorrowOperation implements IOperation{
    @Override
    public void work(BookList bookList) {
        System.out.println("借阅图书");
        Scanner scanner = new Scanner(System.in);
        System.out.println("请输入图书的名字： ");
        String name = scanner.nextLine();

        for (int i = 0;i < bookList.getUsedSize();i++) {
            Book book = bookList.getBook(i);
            if (book.getName().equals(name)) {
                //可以借阅
                book.setBorrowed(true);
                System.out.println("借阅成功！");
                return;
            }
        }
        System.out.println("没有你要借阅的书！");
    }
}
