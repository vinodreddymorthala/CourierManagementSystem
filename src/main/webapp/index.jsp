<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/index.css"  />
 <link rel = "icon" href = 
"images/log.jpg" 
        type = "image/x-icon">
<title>Courier Management System</title>
<style>
.ele {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

body{
       background: url("images/background.jpg");
        background-size:210vh 90vh;
        background-repeat: no-repeat;
 opacity: 0.8;
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

.active {
  background-color: #04AA6D;
}
.truck{
  margin-top: 2px;
  height: 40%;
  width: 100%;
}
.foot{

 background-color:#9fbfdf;
 
}
.foot h1{
  margin-top:10vh;
  color: red;
  
}

.foot {
display:inline-flex;
 
 

}
.foot  ul{
margin-left:30vh;
 margin-top: 8vh;
 margin-right: 40px;
 
}

.foot  ul li{
  margin-top: 20px;
  
  text-transform: uppercase;
  padding: 5px 8px;
  cursor: pointer;
}
.foot  ul li:hover{
   font-size:15px;
   padding: 8px 10px;
}

.bac{
height:23vh;
 
 color: white;
}
.bac h1{
 margin: 60vh 30vh;
 text-transform: uppercase;
 
}
.bac h1 span{
  font-size: 80px;
   color:yellow;
   
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
<div class="bac">
 <h1>Welcome To <br><span>Quick </span> courier Services</h1>
 

</div>

 <div class="foot">

 <h1>Courier Service</h1>

  <ul >
  Company
 <li><a href="about">Blogs</a></li>
<li><a href="pricing">Service</a></li>
<li><a href="/facebook">News</a></li>

 </ul>
 <ul>
  Social Media
<li><a href="/Facebook">Facebook </a></li>
<li><a href="/Instagram">Instagram </a></li>
<li><a href="/Twitter">Twitter</a></li>

<li><a href="/comment.jsp">Contact Us </a></li>

 </ul>
 <ul >
  <img class="truck" src="images/trucks.png" alt="" >
 
 </ul>

 
 </div>
 


</body>
</html>