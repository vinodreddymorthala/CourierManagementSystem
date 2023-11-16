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
<h1>List Of Orders</h1>
<table align=center border=2>

<tr>

<th>ID</th>
<th>Method</th>
<th>item</th>
<th>name</th>
<th>email</th>
<th>Sender Address</th>
<th>Sender City</th>
<th>Sender state</th>
<th>Sender pin code</th>
<th>Receiver Address</th>
<th>Receiver City</th>
<th>Receiver state</th>
<th>Receiver pin code</th>



</tr>

<c:forEach items="${cour}" var="cour">

<tr>

<td> <c:out value="${cour.id}"></c:out>   </td>
<td> <c:out value="${cour.method}"></c:out>   </td>
<td> <c:out value="${cour.item}"></c:out>   </td>
<td> <c:out value="${cour.name}"></c:out>   </td>
<td> <c:out value="${cour.email}"></c:out>   </td>
<td> <c:out value="${cour.saddress}"></c:out>   </td>
<td> <c:out value="${cour.scity}"></c:out>   </td>
<td> <c:out value="${cour.sstate}"></c:out>   </td>
<td> <c:out value="${cour.spincode}"></c:out>   </td>
<td> <c:out value="${cour.raddress}"></c:out>   </td>
<td> <c:out value="${cour.rcity}"></c:out>   </td>
<td> <c:out value="${cour.rstate}"></c:out>   </td>
<td> <c:out value="${cour.rpincode}"></c:out>   </td>







</tr>

</c:forEach>

</table>
</body>
</html>