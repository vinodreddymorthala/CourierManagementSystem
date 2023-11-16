<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
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
<div class="about-section">
  <h1>About Us</h1>
  <p>We are only thinking about customers satisfaction</p>
  <p>Every Customer can have their orders shifted to their respective mentioned locations.</p>
</div>

<h2 style="text-align:center">Our Reviews</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/images/1.jpg" alt="" style="width:100%">
      <div class="container">
        <a href="https://www.instagram.com/">Review 1</a>
        <p class="title">Manikanta Reddy</p>
        <p>This Website is good and realistic</p>
        <p>contact1@gmail.com</p>
        <a href="https://www.instagram.com/manikanta_reddy_.25/"><button class="button">Contact</button></a>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/images/2.jpg" alt="" style="width:100%">
      <div class="container">
        <a href="">Review 2</a>
        <p class="title">Vinod Reddy</p>
        <p>Just Trust the site And go On</p>
        <p>person2@gmail.com</p>
        <a href="https://www.instagram.com/vinod_reddy_8/"><button class="button">Contact</button></a>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/images/3.jpg" alt="" style="width:100%">
      <div class="container">
        <a href="">Review 3</a>
        <p class="title">Mahesh</p>
        <p>One Time Experience</p>
        <p>person3@gmail.com</p>
        <a href="https://www.instagram.com/"><button class="button">Contact</button></a>
      </div>
    </div>
  </div>
</div>

</body>
</html>