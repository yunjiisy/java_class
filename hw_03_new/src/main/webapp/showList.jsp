<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="week04.Book" %>
<%@ page import="static week04.Book.*" %>
    <%@ page isErrorPage="true" %>
<%	request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>


<html>
<head>
    <title>Title</title>
</head>
<body>

	<c:set var="id" value="${param.id}"/>
	<c:set var="name" value="${param.name}"/>
	<c:set var="publish" value="${param.publish}"/>
	<c:set var="price" value="${param.price}"/>
<%!
	
	List<Integer> idList = new ArrayList<>(Arrays.asList(1,2,3,4,5));	
	List<String> nameList = new ArrayList<>(Arrays.asList("축구의 역사","축구 아는여자", "축구의 이해", "골프 바이블", "피겨 교본"));	
	List<String> publishList = new ArrayList<>(Arrays.asList("굿 스포츠","나무수","대한미디어","대한미디어" ,"굿스포츠"));	
	List<Integer> priceList = new ArrayList<>(Arrays.asList(7000, 13000, 22000, 35000, 8000));	

    private void addBook(Book book) {
        idList.add(book.getId());
        nameList.add(book.getBookName());
        publishList.add(book.getPublish());
        priceList.add(book.getPrice());
    }
%>   


 <c:catch var="exception">
  <c:if test="${not empty id and not empty name and not empty publish and not empty price}" var="ifResult">
    <%
      week04.Book book = new week04.Book();
      book.createBook(Integer.parseInt(request.getParameter("id")),
      request.getParameter("name"), request.getParameter("publish"), Integer.parseInt(request.getParameter("price")));
      addBook(book);
      
    %>
  </c:if>
</c:catch>
<c:if test="${!ifResult}">
  <h3>이전으로 돌아가 모든 값을 입력해 주세요!</h3>
</c:if>
    
    <c:if test="${exception != null}">
    <p>오류 타입 : <%= exception.getClass().getName() %> 
    <br> 
    오류 메시지 : <%= exception.getMessage() %></p>
    </c:if>


    <% pageContext.setAttribute("idList", idList); %> 
    <% pageContext.setAttribute("nameList", nameList); %> 
    <% pageContext.setAttribute("publishList", publishList); %> 
    <% pageContext.setAttribute("priceList", priceList); %> 
<h2>도서 목록</h2>
<hr>
	
	
<table border="1">
   <tf:bookinfo/>

    
<c:forEach items="${idList}" var="id" varStatus="status">
    <tr>
        <td>${idList[status.index]}</td>
        <td>${nameList[status.index]}</td>
        <td>${publishList[status.index]}</td>
        <td>${priceList[status.index]}</td>
    </tr>
</c:forEach></table>

	<a href="addList.jsp">이전으로</a>

</body>
</html>

