<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<% 
 if(session.getAttribute("booklist")==null || session.getAttribute("booklist")==null) 
	session.setAttribute("booknum","0");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>hw_01</title>
</head>
<body>
<form method="post" action="showList.jsp">
<center>
<h2>도서정보 추가</h2>

<%int num = Integer.parseInt((String)session.getAttribute("booknum"));%>


<div>도서번호 <%=num %></div>
<div>도서이름<input type="text" name=name size="10"></div><br><br>
<div>출판사<input type="text" name=publish size="10"></div><br><br>
<div>가격<input type="text" name=price size="10"></div><br><br>
<input type="submit" value="추가" name="Button1"> 
</center>
</form>

</body>
</html>

