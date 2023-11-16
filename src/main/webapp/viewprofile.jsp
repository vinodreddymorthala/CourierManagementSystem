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

<tr>

<td> ${usr.id}   </td>
<td> ${usr.email} </td>
<td> ${usr.password}   </td>

</tr>

</table>
</body>
</html>