<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: red;
}

body{
    margin: 0;
    padding: 0;
    background: url(addproduct.jpg);
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
    background-repeat: no-repeat;
    
   
}
 h1{
  font-size: 18px;
  font-weight: bold;
  color: white;
  font-family: 'Montserrat',sans-serif;
  }
  h3{
     font-size: 40px;
  font-weight: bold;
color: black;
  font-family: 'Montserrat',sans-serif;

  }
h4{
   font-size: 18px;
  font-weight: bold;
  color: black  ;
  font-family: 'Montserrat',sans-serif;

}
input {
 
  width: 65%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  margin left: 50px;
}

/* Style the submit button */
input[type=submit] {
  background-color: red;
  color: white;

}

/* Style the container for inputs */
.container {
height: 550px;
  margin-left:400px;
margin-right:400px;
  background-color:rgba(0,0,0,0.8);
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "?";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "?";
}
</style>

</head>
<body>
 <ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">Items</a></li>
  <li><a href="#contact">Contact</a></li>
  <li style="float:right"><a class="active" href="login.jsp">LOGOUT</a></li>
</ul>


 <br>
  <br>
  <br>
  <br>
</center>

<div class="container">
  <center>
  <form action="addproduct" method="post">
    
    <label for="username"><h1>Name</h1></label>
    <input type="text" id="usrname" name="name" required>
<br>
 <label for="username"><h1>Price</h1></label>
    <input type="text" id="usrname" name="price" required>
    <br>
    <label for="username"><h1>Quantity</h1></label>
    <input type="text" id="usrname" name="quantity" required>
   
    <br>
    <label for="username"><h1>Description</h1></label>
    <input type="text" id="usrname" name="description" required>
    <br>
    <label for="username"><h1>Category</h1></label>
    <input type="text" id="usrname" name="category" required>
    
    <br>
    <br>
    <input type="submit" value="Add Product" onclick="myFunction()">

    

  </form>
</center>
</div>


				
<script>

var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}

function myFunction() {
	  alert("PRODUCT ADDED SUCCESSFULLY");
	}
</script>


</body>
</html>