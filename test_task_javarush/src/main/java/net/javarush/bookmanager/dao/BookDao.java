package net.javarush.bookmanager.dao;

import net.javarush.bookmanager.model.Book;

import java.util.List;

public interface BookDao {
    public void addBook(Book book);
    public List<Book> searchBook(String bookTitle);
    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks();

    public void readBook(int id);
}
