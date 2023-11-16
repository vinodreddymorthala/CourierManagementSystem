<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Management System</title>
<style>
body {
    background: url("images/backadmin.jpg");
    background-repeat: no-repeat;
  background-size: 220vh 110vh;
}
.bo{
 margin-top:38vh;
 margin-left:120vh;
background-color: lightblue;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
  
}
div form{
 
  height: 50vh;
  
}
.ele {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

.elel{
  float: left;
}

.elel a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.elel a:hover:not(.active) {
  background-color: orange;
}



</style>
</head>
<body>
<ul class="ele">
  <li class="elel"><a href="/">HOME</a></li>
  <li class="elel"><a href="/about">ABOUT</a></li>
  <li class="elel"><a href="pricing">PRICING</a><li>
  <li class="elel"><a href="/booking">BOOKING</a></li>
   <li class="elel"><a href="adminlogin">ADMIN</a></li>
  <li class="elel" style="float: right;"><a href="userlogin">LOGIN</a></li>
  <li class="elel" style="float: right;"><a href="userreg">SIGN UP</a></li>
  <li class="elel" style="float: right;"><a href="/logout">${log}</a></li>
  <li class="elel" style="float: right;"><a href="profile" >${name}</a></li>
  
  
</ul>

<div class="bo">
<h2>${error}</h2>

 
 <form action="checkadmin" method="post">
 <center>
 <h1>ADMIN LOGIN</h1>
 <h1>Enter Username</h1>
 <input type="text" placeholder="Username" name="username" />
 <h1>Enter Password</h1>
 <input type="password" placeholder="Password" name="password" />
 <br>
 
 <br>
 <button>SUBMIT</button>
 </center>
 </form>
 </div>
</body>
</html>