package net.javarush.bookmanager.model;

import javax.persistence.*;

@Entity
@Table(name = "BOOK")
public class Book {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    private String bookTitle;
    @Column(name = "description")
    private String bookDescription;
    @Column(name = "author")
    private String bookAuthor;
    @Column(name = "isbn")
    private String bookIsbn;
    @Column(name = "printYear")
    private int printYear=2000;
    @Column(name = "readAlready")
    private int  readAlready;

    public String getSearchTitle() {
        return searchTitle;
    }

    public void setSearchTitle(String searchTitle) {
        this.searchTitle = searchTitle;
    }

    @Transient
    private String searchTitle;

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    @Transient
    private String page;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }
    public String getBookIsbn() {
        return bookIsbn;
    }

    public void setBookIsbn(String bookIsbn) {
        this.bookIsbn = bookIsbn;
    }
    public int getPrintYear() {
        return printYear;
    }
    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }
    public int getReadAlready()
    {
       return readAlready;
    }
    public void setReadAlready(int readAlready) {
        this.readAlready = readAlready;
    }
    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", Title='" + bookTitle + '\'' +
                ", Description='" + bookDescription + '\'' +
                ", Author='" + bookAuthor + '\'' +
                ", ISBN='" + bookIsbn + '\'' +
                ", PrintYear=" + printYear +
                ", ReadAlready=" + readAlready +
                '}';
    }
}
