<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
   
    <title></title>
  </head>
  <body>


<br/>
<h1>BOOK STORE</h1>
<br/>


<a href="add">Add-Data</a>
&nbsp;&nbsp;&nbsp;&nbsp;
 



<br/><br/>


		<table border=2>
		<tr>
		<th>Book Id</th>
		<th>Book Name</th>
		<th>Author</th>
		<th>Publisher</th>
		<th>Price</th>
		<th>Action</th>


</tr>

<tr>
<c:forEach items="${booklist}" var="sobj">
<tr>
	<td>${sobj.getBid()}</td>
	<td>${sobj.getBookname()}</td>
	<td>${sobj.getAuthor()}</td>
	<td>${sobj.getPublisher()}</td>
	<td>${sobj.getPrice()}</td>


	<td><a href="edit/${sobj.getBid()}">Edit</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	<a href="delete/${sobj.getBid()}">Delete</a> 
	</td>

</tr>

</c:forEach>
</table>

</body>
</html>