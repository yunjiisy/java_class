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
	
	public static List<Integer> idList = new ArrayList<>(Arrays.asList(1,2,3,4,5));
	public static List<String> nameList = new ArrayList<>(Arrays.asList("축구의 역사", "축구 아는 여자", "축구의 이해", "골프 바이블","피겨 교본"));
    public static List<String> publishList = new ArrayList<>(Arrays.asList("굿 스포츠","나무수","대한미디어","대한미디어","굿스포츠"));
	public static List<Integer> priceList = new ArrayList<>(Arrays.asList(7000, 13000, 22000, 35000, 8000));
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
