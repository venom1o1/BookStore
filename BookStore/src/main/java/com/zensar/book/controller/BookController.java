package com.zensar.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.zensar.book.dao.BookInterface;
import com.zensar.book.model.Book;


@Controller
public class BookController 
{

	@Autowired
	private BookInterface bookdao;
	
	@GetMapping(value="/")
	public String getAll(Model model)
	{
		
		  List<Book> list= bookdao.findAll(); 
		  model.addAttribute("booklist",list);
		 
		return "booklist";
	}
	
	
	  @PostMapping (value="/save") 
	  public String save(@ModelAttribute("Book")  Book b)
	  {
		  bookdao.save(b);
		  return "redirect:/";
	  }
	  
	  
	  @GetMapping(value="/add") 
	  public String AddBook()
	  { 
		  return "AddBook"; 
	  }
	  
	  @GetMapping(value="/edit/{bid}") 
	  public String edit(@PathVariable("bid") int bookid, Model model) 
	  {
		  Book b=bookdao.findById(bookid).orElse(null); 
		  model.addAttribute("Book",b);
		  return "updateBook"; 
	  }
	    
	  
	  @PostMapping("/edit/update") 
	  public String updatesave(@ModelAttribute("s") Book b) 
	  {
	  	  bookdao.save(b); 
	  	  return "redirect:/";
	  }
	  
	  
	  
	  @GetMapping(value="/delete/{bid}") 
	  public String edit(@PathVariable("bid")int bookid) 
	  {
		  bookdao.deleteById(bookid); 
		  return "redirect:/";
	  }
	 
}
