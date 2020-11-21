<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"
    import="com.edu.beans.BookBean"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl1</title>
</head>
<body>
	<!--
		JSTL은 JAVA SERVER STANDARD TAG LIBRARY 의 줄임말이다.
		jsp에서 사용하는 태그 라이브러리를 공통으로 사용하기 위해 정해진 표준
	-->
	
	<c:set var="name" value="key"></c:set>
	<c:out value="${name}"></c:out> <br>
	<c:remove var="name"/>
	<c:out value="${name}"></c:out>
	
	<br>
	<hr>
	<br>
	
	<c:set var="name">ToBe</c:set>
	<c:out value="${name}"></c:out>
	
	<br>
	<hr>
	<br>
	
	<%
		BookBean book = new BookBean("aa", "bb", "cc");
		request.setAttribute("bookOne", book);
	%>
	
	<c:set var="title" value="${bookOne.title}"></c:set>
	<c:out value="${title}"></c:out> <br>
	<c:set var="author" value="<%=book.getAuthor()%>"></c:set>
	<c:out value="${author}"></c:out> <br>
</body>
</html>