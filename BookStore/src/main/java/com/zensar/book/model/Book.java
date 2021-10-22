package com.zensar.book.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")

public class Book 
{
	@Id
	private int bid;
	private String bookname;
	private String author;
	private String publisher;
	private int price;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(int bid, String bookname, String author, String publisher, int price) {
		super();
		this.bid = bid;
		this.bookname = bookname;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [bid=" + bid + ", bookname=" + bookname + ", author=" + author + ", publisher=" + publisher
				+ ", price=" + price + "]";
	}
	
	
}
