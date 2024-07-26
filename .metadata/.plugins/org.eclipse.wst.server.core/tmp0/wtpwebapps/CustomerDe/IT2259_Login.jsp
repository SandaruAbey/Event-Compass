<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="IT2259_login.css">
  <link rel="stylesheet" href="IT2259_event.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
  <title>EventCompass/Login.com</title>

</head>
<body>
 <header>
        <a href = "IT2259_HomePage.jsp"><img src = "logo.png" class = "logo"></a>
        <ul>
            <li><a href = "IT2259_HomePage.jsp">Home</li>
            <li><a href = "#">Contact</li>
            <li><a href = "IT2259_About.jsp">About</a></li>
            <!--<li><button class = "Login"><a href = "#" id = "loginbtn">Login</a></button></li> !-->
        </ul>
        
    </header>
 <div class="loginn">
      <h1 id="logtitle">LOGIN</h1><br>
      <form class="loginform" action="log" method="post">
          <label>Username</label>
           <i class="fa-solid fa-check" style="color: #ffffff;"></i>
          <input type="text" placeholder="John Max" name="uid"><br><br>
          <label>Password</label>
          <i class="fa-solid fa-lock" style="color: #ffffff;"></i>
          <input type="password" placeholder="Password" name="password"><br><br>
         I don't have an account <a href = "IT2259_CustomerInsert.jsp" ><span id = "signupspan">Sign Up</span></a><br><br>

          <input type = "submit" id  = "loginformbtn" value="Login" name = "submit">
      </form>
      <div class = "errormessage">
      <%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
%>
    <p class = "validationmessage"><font color="red"><%= errorMessage %></font></p>
<%
    }
%>
</div>
  </div>

	
	
</form>
</div>
</body>
</html>