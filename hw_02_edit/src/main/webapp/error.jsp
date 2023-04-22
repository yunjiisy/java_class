 <%@ page language="java" contentType="text/html; charset=utf- 8" pageEncoding="utf-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 오류페이지</title>
</head>
<body>
<h2>잘못된 요청입니다.</h2>
오류 타입 : <%= exception.getClass().getName() %> <br> 오류 메시지 : <%= exception.getMessage() %>
<br>
<a href="addList.jsp">이전으로 ...</a>
</body>
</html>