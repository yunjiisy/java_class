package week04;

import java.util.ArrayList; 
import java.util.Arrays; 
import java.util.List;

//Book class (도서정보)
public class Book {
	
	private int id;
	private String bookName; 
	private String publish;
	private int price;
	
	public Book() {}
	public void createBook(final int id, final String name, final String publish, final int price) { 
		this.id=id;
		this.bookName=name;
		this.publish=publish;
		this.price=price; 
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id; 
	}
	public String getBookName() { 
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getPublish() { 
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish; 
		}
	public int getPrice() { 
		return price;
	}
	public void setPrice(int price) {
		this.price = price; 
	}
	

}
