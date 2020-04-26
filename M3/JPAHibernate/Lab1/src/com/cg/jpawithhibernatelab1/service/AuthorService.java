package com.cg.jpawithhibernatelab1.service;

import com.cg.jpawithhibernatelab1.entity.Author;

public interface AuthorService {
	public boolean addAuthor(Author author);
	public Author updateAuthor(Author author);
	public boolean deleteAuthor(Integer id);
}
