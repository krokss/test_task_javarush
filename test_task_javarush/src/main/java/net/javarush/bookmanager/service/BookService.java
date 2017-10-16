package net.javarush.bookmanager.service;

import net.javarush.bookmanager.model.Book;

import java.util.List;

public interface BookService {
    public void addBook(Book book);

    public void updateBook(Book book);
    public List<Book> searchBook(String bookTitle);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks();

    public void readBook(int id);
}
