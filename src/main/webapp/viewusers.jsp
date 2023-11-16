<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Users</h1>
<table align=center border=2>

<tr>

<th>ID</th>
<th>Username</th>
<th>Password</th>


</tr>

<c:forEach items="${usr}" var="usr">

<tr>

<td> <c:out value="${usr.id}"></c:out>   </td>
<td> <c:out value="${usr.email}"></c:out>   </td>
<td> <c:out value="${usr.password}"></c:out>   </td>

</tr>

</c:forEach>

</table>
</body>
</html>