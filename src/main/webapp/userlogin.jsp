<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Management System</title>
<style>
body{
 background: url("images/add.jpg");
 background-size: 150vh 90vh;
 background-position:20px 40px;
 background-repeat: no-repeat;

}
h2{
 color: red;
}
.conta{
  margin: 90px 130vh;
 text-align: center;
background-color:  #d9ffb3;
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 60vh;
  height: 50vh;
  border-radius: 20px;
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
<h2>${error}</h2>

<div class="conta">
 <h1>Login</h1>
 <form action="checklogin" method="post">
 <h2>Enter Username</h2>
 <input type="text" placeholder="Username" name="id" />
 <h2>Enter Password</h2>
 <input type="password" placeholder=Password" name="password" />
 <br>
 <br>
 <button>SUBMIT</button>
 </form>

 </div>
</body>
</html>