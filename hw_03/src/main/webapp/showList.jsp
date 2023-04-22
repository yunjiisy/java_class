<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<

<!DOCTYPE html>
<html>
<head>
<%@ page import="week05.Book" %>
<meta charset="UTF-8">
<%
	Book abooklist[];
%>
<%
	if(session.getAttribute("booklist")==null){
		abooklist = new Book[5];
	} else{
		abooklist = (Book [])session.getAttribute("booklist");

	}
	int num= Integer.parseInt((String)session.getAttribute("booknum"));

	request.setCharacterEncoding("UTF-8");
	
	/* if(num >= 5){
		throw new RuntimeException("더 이상 저장할 수 없습니다.");
	}
	 */
	
	
	
%>

 <% 
String name = (String)request.getParameter("name");
String publish = (String)request.getParameter("publish");
int price = Integer.parseInt(request.getParameter("price"));

/* pageContext.setAttribute("num", num);
pageContext.setAttribute("name", name);
pageContext.setAttribute("publish", publish);
pageContext.setAttribute("price", price);

booklist[num]=new Book(); */

%> 

 <%
	abooklist[num] = new Book();
	abooklist[num].setId(num);
	abooklist[num].setBookName(name);
	abooklist[num].setPublish(publish);
	abooklist[num].setPrice(price);
%> 

<%-- <c:set var="list" value="<%=new Book()%>" />
<c:set target="${booklist[num]}" property="id" value="${num}"/>
<c:set target="${booklist[num]}" property="bookName" value="${name}"/>
<c:set target="${booklist[num]}" property="publish" value="${publish}"/>
<c:set target="${booklist[num]}" property="price" value="${price}"/> --%>

<title></title>
</head>
<body>

	
	<h1>목록</h1>
	<table border=1>
		<th>도서번호</th>
		<th>도서이름</th>
		<th>출판사</th>
		<th>가격</th>

		<% pageContext.setAttribute("abooklist", abooklist); %> 
		<c:forEach var="list" items="${abooklist}">
		<c:if test="${not empty list}">
		<c:set target="${list}" property="id" value="${list.id}" /> 
		<tr>
			<td>${list.id}</td> 
			<td>${list.bookName}</td> 
			<td>${list.publish}</td> 
			<td>${list.price}</td>
        </tr>
        </c:if>
     </c:forEach>
		
	</table>
	<%
	num++;
	session.setAttribute("booklist",abooklist);
	session.setAttribute("booknum", Integer.toString(num));


	%>
	<a href="addList.jsp">이전으로</a>
</body>

</html>