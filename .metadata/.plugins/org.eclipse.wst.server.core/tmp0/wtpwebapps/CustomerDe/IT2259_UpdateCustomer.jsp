<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="IT2259_CustomerInsert.css">
  <link rel="stylesheet" href="event.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://kit.fontawesome.com/b3ca95fff7.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<title>Update Account</title>
</head>
<body>

	<%
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
	%>
	<header>
        <a href = "IT2259_HomePage.jsp"><img src = "logo.png" class = "logo"></a>
        <ul>
            <li><a href = "IT2259_HomePage.jsp">Home</li>
            <li><a href = "#">Contact</li>
            <li><a href = "IT22592156_About.html">About</a></li>
            <i class="fa-solid fa-bars fa-lg" style="color: #ffffff;"></i>
        </ul>
        
    </header>
<div class="loginn">
      <h1 id="logtitle">Update Account</h1><br>
      <form class="loginform" action="update" method="post" onsubmit="return validateForm();">
     
     <i class="fa-solid fa-id-card" style="color: #ffffff;"></i>
    <input type="text" placeholder="Id" name="cusid" value = "<%= id%>" readonly><br><br> 
      
    <i class="fa-solid fa-user" style="color: #ffffff;"></i>
    <input type="text" placeholder="Name" name="name"  value = "<%= name%>"><br><br>
    
    <i class="fa-solid fa-phone" style="color: #ffffff;"></i>
    <input type="text" placeholder="Mobile Number" name="phone" id="phone" value = "<%= phone%>"><br><br>
    
    <i class="fa-solid fa-envelope" style="color: #ffffff;"></i>
    <input type="email" placeholder="Email" name="email" id="email" value = "<%= email%>"><br><br>
   
    <i class="fa-solid fa-check" style="color: #ffffff;"></i>
    <input type="text" placeholder="User name" name="uid" value = "<%= username%>"><br><br>
    
    <i class="fa-solid fa-lock" style="color: #ffffff;"></i>
    <input type="password" placeholder="Password" name="password" value = "<%= password%>"><br><br>

    <input type="submit" id="loginformbtn" value="Update" name="submit">
</form>
  </div>
<script>
function validateForm() {
    var phone = document.getElementById("phone").value;
    var email = document.getElementById("email").value;
    
    // Phone number validation
    if (phone.length < 10 || phone.length >=11 ) {
        alert("Phone number should have 10 digits only.");
        return false;
    }
    
    // Email validation
    if (email.indexOf("@") === -1 || email.indexOf(".") === -1) {
        alert("Please enter a valid email address.");
        return false;
    }
    
    return true;
}
</script>


</body>
</html>