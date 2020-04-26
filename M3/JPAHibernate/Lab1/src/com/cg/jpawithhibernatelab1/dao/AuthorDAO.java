package com.cg.jpawithhibernatelab1.dao;

import com.cg.jpawithhibernatelab1.entity.Author;

public interface AuthorDAO {
	public boolean addAuthor(Author author);
	public boolean deleteAuthor(Author author);
	public Author updateAuthor(Author author);
	public Author findAuthor(Integer id);
}
