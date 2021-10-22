package com.zensar.book.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zensar.book.model.Book;

public interface BookInterface extends JpaRepository<Book, Integer> 
{
	
}
