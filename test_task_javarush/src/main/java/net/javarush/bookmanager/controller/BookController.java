package net.javarush.bookmanager.controller;

import net.javarush.bookmanager.model.Book;
import net.javarush.bookmanager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookController {

    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public String listBooks(@RequestParam(value = "page", required = false) Integer page,@RequestParam(value = "searchTitle", required = false) String searchTitle, Model model) {
        List<Book> books = bookService.listBooks();
        if (searchTitle!=null) books=this.bookService.searchBook(searchTitle);

        if (page == null) {
            page = 0;
        }
        int startpage;
        if (page - 7> 0) {
            startpage = page - 7;
        } else {
            startpage = 0;
        }

        int maxPage = (books.size()-1) / 10;
        int endpage = startpage + 8; //
        if (endpage > maxPage) {
            endpage = maxPage;
        }
        int last = books.size();
        int subListEnd = (page * 10) + 10;
        if (subListEnd > last) {
            subListEnd = last;
        }
        List<Book> booksSubList = books.subList((page) * 10, subListEnd);
        model.addAttribute("book", new Book());
        model.addAttribute("searchTitle", searchTitle);
        //model.addAttribute("listBooks", this.bookService.listBooks());
        model.addAttribute("listBooks", booksSubList);
        model.addAttribute("startpage", startpage);
        model.addAttribute("endpage", endpage);
        model.addAttribute("page", page);
        return "books";
    }

    @RequestMapping("/read/{id}")
    public String readBook(@PathVariable("id") int id,@RequestParam(value = "page", required = false) Integer page,@RequestParam(value = "searchTitle", required = false) String searchTitle) {
        this.bookService.readBook(id);
        return "redirect:/books?page="+page+"&searchTitle="+searchTitle;

    }

    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book,@RequestParam(value = "page", required = false) Integer page,@RequestParam(value = "searchTitle", required = false) String searchTitle) {
        if (book.getId() == 0) {
            this.bookService.addBook(book);
        } else {
            this.bookService.updateBook(book);
        }

        return "redirect:/books?page="+page+"&searchTitle="+searchTitle;
    }




    @RequestMapping("/remove/{id}")
    public String removeBook( @PathVariable("id") int id,@RequestParam(value = "page", required = false) Integer page,@RequestParam(value = "searchTitle", required = false) String searchTitle) {
        this.bookService.removeBook(id);
        return "redirect:/books?page="+page+"&searchTitle="+searchTitle;
    }

    @RequestMapping("edit/{id}/{page}")
    public String editBook(@PathVariable("id") int id, Model model,@PathVariable("page") Integer page,@RequestParam(value = "searchTitle", required = false) String searchTitle) {
        model.addAttribute("book", this.bookService.getBookById(id));
        model.addAttribute("listBooks", this.bookService.listBooks());
        model.addAttribute("page",page);
        model.addAttribute("searchTitle",searchTitle);

        return "books";
    }


}
