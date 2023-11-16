<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style >

form{
 border: 2px solid black;
 width:30%;
 
 text-align: center;
}
form input{
  margin-bottom: 30px;
}
form .nor{
  display:inline-flex;
  justify-content: center;
  
}

.star input{
 display: none;
 
}
.star label{
 font-size: 40px;
  transition: all 0.8s ease;
  float:right;
  margin-left: 40px;
 
}
form input[type=submit]{
  margin-top: 30px;
 
  padding: 20px;
  width: 100%
  
}

input:not(:checked) ~ label:hover,
input:not(:checked) ~ label:hover ~ label {
	color: orange;
}
input:checked ~ label {
	color: orange;
}

</style>
</head>
<body>
<center>
<form action="">
 <h1>Feedback Form</h1>
 <label class="nor">Name</label>
 <input placeholder="Enter Name">
 <br>
 
 <label class="nor">Email</label>
 <input placeholder="Enter Email">
 <br>
 <label class="nor" >Overal Rate Us</label>
 <div class="star">
<input type="radio" name="rate" id="5"> 
<label for="5" class="fa fa-star" ></label>
<input type="radio" name="rate" id="2"> 
<label for="2" class="fa fa-star" ></label>
<input type="radio" name="rate" id="3"> 
<label for="3" class="fa fa-star" ></label>
<input type="radio" name="rate" id="4"> 
<label for="4" class="fa fa-star" ></label>
<input type="radio" name="rate" id="1"> 
<label for="1" class="fa fa-star" ></label>
</div>
 <br>
 <input type="submit" value="Submit">
</form>
</center>
</body>
</html>