<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
    <%@ page isErrorPage="true" %>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String publish = request.getParameter("publish");
	int price = Integer.parseInt(request.getParameter("price"));


%> 

<!DOCTYPE html>
<html>
<head>
<%@ page import="week05.Book" %>
<meta charset="UTF-8">
<%
	Book booklist[];
%>
<%
	if(session.getAttribute("booklist")==null){
		booklist = new Book[10];
	} else{
		booklist = (Book [])session.getAttribute("booklist");

	}
	request.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt((String)session.getAttribute("booknum"));

	
	 if(num >= 10){
			throw new RuntimeException("더 이상 저장할 수 없습니다.");
		}
 
	
	
	
%>

 <%
	booklist[num] = new Book();
	booklist[num].setId(num);
	booklist[num].setBookName(name);
	booklist[num].setPublish(publish);
	booklist[num].setPrice(price);
	
	

%>




<title></title>
</head>
<body>

	
	<h1>목록</h1>
	<table border=1>
		<th>도서번호</th>
		<th>도서이름</th>
		<th>출판사</th>
		<th>가격</th>
		<% for(int i=0; i<=num; i++) {%>
		<tr>
		
			<td><%=booklist[i].getId() %></td>
			<td><%=booklist[i].getBookName() %></td>
			<td><%=booklist[i].getPublish() %></td>
			<td><%=booklist[i].getPrice() %></td>
		</tr>
		<%} %>
		
	</table>
	<%
	num++;
	session.setAttribute("booknum", Integer.toString(num));
	session.setAttribute("booklist",booklist);
	%>
	<a href="addList.jsp">이전으로</a>
</body>

</html>