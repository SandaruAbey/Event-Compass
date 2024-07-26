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
<title>Insert title here</title>
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
      <h1 id="logtitle">Delete Account</h1><br>
	<form action = "delete" method = "post">
	
	<i class="fa-solid fa-id-card" style="color: #ffffff;"></i>
    <input type="text" placeholder="ID" name="cusid" value = "<%= id%>" readonly><br><br>
	
	<i class="fa-solid fa-user" style="color: #ffffff;"></i>
    <input type="text" placeholder="Name" name="name" value = "<%= name%>" readonly ><br><br>
    
    <i class="fa-solid fa-phone" style="color: #ffffff;"></i>
    <input type="text" placeholder="Mobile Number" name="phone" id="phone" value = "<%= phone%>" readonly><br><br>
    
    <i class="fa-solid fa-envelope" style="color: #ffffff;"></i>
    <input type="email" placeholder="Email" name="email" id="email" value = "<%= email%>" readonly><br><br>
   
    <i class="fa-solid fa-check" style="color: #ffffff;"></i>
    <input type="text" placeholder="User name" name="uid" value = "<%= username%>"><br><br>
 	
 	<input type="submit" id="loginformbtn" value="Delete" name="delete">
 	

</form>
</div>
</body>
</html>