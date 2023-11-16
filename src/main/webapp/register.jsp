<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Management System</title>
<style>

span{
 font-size: 23px;
  text-transform: uppercase;
}
body{
  background: url("images/log.jpg");
  background-repeat: no-repeat;
  background-size: 220vh 110vh;

}
.divi form{
   background-color: #ffffcc;
   opacity: 0.8;
   width: 80vh;
}
.divi form label{
  font-size: 20px;
}
  
.divi form input{
  margin-top: 15px;
  padding: 10px 10px;

}
button{
 width: 20%;
 padding: 10px;
 text-decoration: none;
}
button a{
	text-decoration: none;
}
.error {
    color: red;
    font-size:15px;
    font-style: italic;
}
</style>
</head>
<body>
<center>
<div class="divi">
<form:form action="adduser" method="post" modelAttribute="usr" >


<h2>${name}</h2>
 <h2><span>Way To Join Our Courier Service</span> </h2>
 <form:label path="id" >Enter User ID</form:label>
 <form:input path="id" type="text" placeholder="User ID" name="id" />
 <br>
 <form:errors path="id" cssClass="error" />
 <br>
  <form:label path="email">Enter Email</form:label>
 <form:input path="email" type="text" placeholder="EMAIL" name="email" />
 <br>
 <form:errors path="email" cssClass="error" />
 <br>
  <form:label path="password">Enter Password</form:label>
 <form:input path="password" type="password" placeholder="PASSWORD"  name="password" />
 <br>
 <form:errors path="password" cssClass="error" />
 <br>
 <br>
 <button>SUBMIT</button>
<button> <a href="/userlogin">Login</a></button>

</form:form>
</div>
</center>
</body>
</html>