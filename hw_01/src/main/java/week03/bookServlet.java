package week03;
import static week03.Book.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class bookServlet
 */
@WebServlet(description = "bookServlet", urlPatterns = { "/Book" })
public class bookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //도서정보를 내보냄(get)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    { 
    	response.setContentType("text/html; charset=utf-8");
    	request.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    	out.println("<html>"); 
    	out.println("<head></head>"); 
    	out.println("<body>");
    	out.println("<h1>목록</h1>"); 
    	out.println("<table border=" + 1 + "cellspacing=" + 0 +">"); 
    	out.println("<th>도서번호</th>");
    	out.println("<th>도서이름</th>");
    	out.println("<th>출판사</th>");  
    	out.println("<th>가격</th>");
    	//도서목록을 테이블로 나열
	    for (int i = 0; i < idList.size(); i++) {
	    	out.println("<tr>");
	    	out.println("<td>" + idList.get(i) + "</td>");
	    	out.println("<td>" + nameList.get(i) + "</td>");
	    	out.println("<td>" + publishList.get(i) + "</td>");
	    	out.println("<td>" + priceList.get(i) + "</td>");
	    	out.println("</tr>");
	    }
	    
	    out.println("</table>");
	    out.print("</body></html>");
    	
    }
    
    /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) */
    //도서정보를 내보냄(post)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    { 
    	response.setContentType("text/html; charset=utf-8");
    	request.setCharacterEncoding("UTF-8");
    	PrintWriter out = response.getWriter();
    
    	Book book = new Book(); 
    	book.createBook(Integer.parseInt(request.getParameter("id")),request.getParameter("name"), request.getParameter("publish"), Integer.parseInt(request.getParameter("price")));
    	
    	addBookToList(book);
    	out.println("<html>"); 
    	out.println("<head></head>"); 
    	out.println("<body>");
    	out.println("<h1>목록</h1>"); 
    	out.println("<table border=" + 1 + "cellspacing=" + 0 + ">"); 
    	out.println("<th>도서번호</th>");
    	out.println("<th>도서이름</th>");
    	out.println("<th>출판사</th>");  
    	out.println("<th>가격</th>");
    	
	    for (int i = 0; i < idList.size(); i++) 
	    { 
	    	out.println("<tr>");
	    	out.println("<td>" + idList.get(i) + "</td>");
	    	out.println("<td>" + nameList.get(i) + "</td>");
	    	out.println("<td>" + publishList.get(i) + "</td>");
	    	out.println("<td>" + priceList.get(i) + "</td>");
	    	out.println("</tr>");
	    	
	    }
	    out.println("</table>"); 
	    out.println("</body></html>");
    }
    //입력받은 도서정보를 추
    private void addBookToList(Book book) 
    {
	    idList.add(book.getId()); 
	    nameList.add(book.getBookName()); 
	    publishList.add(book.getPublish()); 
	    priceList.add(book.getPrice());
    } 
    
}

    
    

