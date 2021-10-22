<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty book}">
<h1>Add Book</h1>
<form action="save" method="post">
</c:if> 

<c:if test="${not empty book}">
<h1>Edit Book</h1>
<form action="update" method="post">
</c:if>


Bid : <input type='text' name="bid" value="${book.getBid()}">
<br>
BookName : <input type='text' name="bookname" value="${book.getBookname()}" >
<br>
Author : <input type='text' name="author" value="${book.getAuthor()}" >
<br>
Publisher : <input type='text' name="publisher" value="${book.getPublisher()}">
<br>
Price : <input type='text' name="price" value="${book.getPrice()}">
<br>
<button type="submit">Save</button>
</form>


</body>
</html>