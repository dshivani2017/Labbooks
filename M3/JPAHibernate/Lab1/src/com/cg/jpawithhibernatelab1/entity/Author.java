package com.cg.jpawithhibernatelab1.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//Entity Class

@Entity
@Table(name="Author")

//Making a Table with name Author

public class Author {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer aId;
	private String fName;
	private String mName;
	private String lName;
	private String phoneNo;
	
	public Author() {

	}

	public Author(Integer authorId, String firstName, String middleName, String lastName, String phoneNo) {
		super();
		this.aId = aId;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.phoneNo = phoneNo;
	}

	@Override
	public String toString() {
		return "Author [authorId=" + aId + ", firstName=" + fName + ", middleName=" + mName
				+ ", lastName=" + lName + ", phoneNo=" + phoneNo + "]";
	}

	public int getAuthorId() {
		return aId;
	}

	public void setAuthorId(int aId) {
		this.aId = aId;
	}

	public String getFirstName() {
		return fName;
	}

	public void setFirstName(String fName) {
		this.fName = fName;
	}

	public String getMiddleName() {
		return mName;
	}

	public void setMiddleName(String mName) {
		this.mName = mName;
	}

	public String getLastName() {
		return lName;
	}

	public void setLastName(String lName) {
		this.lName = lName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	
}
