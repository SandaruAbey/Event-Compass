<%@page import="CustomerPkg.IT2259_DBConnect" %>
<%@page import="Eventpkg.*" %>
<%@page import="java.util.*" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix= "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%


IT2259_EventDBUtil pd = new IT2259_EventDBUtil(IT2259_DBConnect.getConnection());
List<IT2259_product> products = pd.getAllProduct();

%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="IT2259_event.css">
  <link rel="stylesheet" href="IT2259_useraccount.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >
  <link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Nunito:wght@300&family=Poppins:wght@500;600&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" >

<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://kit.fontawesome.com/b3ca95fff7.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
  <title>Document</title>
<title>Insert title here</title>
</head>
<body>
	<table>
	<c:forEach var="cus" items= "${CusDetails}" >
	<!-- Catch data -->
	<c:set var = "id" value = "${cus.id}"/>
	<c:set var = "name" value = "${cus.name}"/>
	<c:set var = "phone" value = "${cus.phone}"/>
	<c:set var = "email" value = "${cus.email}"/>
	<c:set var = "username" value = "${cus.username}"/>
	<c:set var = "password" value = "${cus.password}"/>
	
	<!--Transfer data and navigate page -->
	<c:url value="IT2259_UpdateCustomer.jsp" var = "cusupdate">
	<c:param name="id" value = "${id}"/>
	<c:param name="name" value = "${name}"/>
	<c:param name="phone" value = "${phone}"/>
	<c:param name="email" value = "${email}"/>
	<c:param name="username" value = "${username}"/>
	<c:param name="password" value = "${password}"/>
	</c:url>
	
	<!-- Navigate delete page -->
	<c:url value="IT2259_DeleteCustomer.jsp" var = "cusdelete">
	<c:param name="id" value = "${id}"/>
	<c:param name="name" value = "${name}"/>
	<c:param name="phone" value = "${phone}"/>
	<c:param name="email" value = "${email}"/>
	<c:param name="username" value = "${username}"/>
	<c:param name="password" value = "${password}"/>
	
	</c:url>
	
	<nav>
    <header>
      <a href="IT2259_HomePage.jsp"><img src="logo.png" class="logo"></a>
      <ul>
          <li><a href="IT2259_HomePage.jsp">Home</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="IT22592156_About.html">About</a></li>
          <li><a href = "IT2259_Cart.jsp"><i class="fa-solid fa-cart-shopping fa-xl" style="color: #ffffff;"></i></a></li>
          <li><i class="fa-solid fa-user fa-xl" style="color: #ffffff;" onclick="toggleMenu()"></i></li>
      </ul>
  </header>
    <div class = "wrap" id ="submenu">
      <div class = "name-pic">
          <h1 id = 'profiletag'>Profile</h1>
          <image src = "https://cdn-icons-png.flaticon.com/512/6596/6596121.png " id = "profileimg">
          <h3 class = "nameuser">${cus.name}</h3>
          <h3 class = "nameusername">@${cus.username}</h3>
          <hr>
          
      </div>
      
      <div class = "useInfo">
        <div class = "inf">
          <i class="fa-solid fa-user" id = "usericon"></i>
          <h3 class = "userin">${cus.name}</h3>
        </div>

        <div class = "inf">
          <i class="fa-solid fa-phone" id = "usericon"></i>
          <h3 class = "userin">${cus.phone}</h3>
        </div>

        <div class = "inf">
          <i class="fa-solid fa-envelope" id = "usericon"></i>
        <h3 class = "userin">${cus.email}</h3>
        </div>

        <div class = "inf">
          <i class="fa-solid fa-circle-user" id = "usericon"></i>
          <h3 class = "userin">${cus.username}</h3>
        </div>

        <div class="inf">
          <i class="fa-solid fa-check" id = "usericon"></i>
          <h3 class = "userin">${cus.password}</h3>
        </div>

      </div>
      <div class = "btns">
          <br>
          <a href = "${cusupdate}">
          <input type = "button" class = "updatebtn"  name = "update" value = "Update Account"><br></a>
          
          <a href ="${cusdelete}">
          <input type = "button" class = "deletebtn" name = "delete" value = "Delete Account"></a>
      </div>
    

 
  </div>
  </c:forEach>
</nav>
    <script>
let submenu = document.getElementById("submenu");
        function toggleMenu(){

            submenu.classList.toggle("open-menu");
        }

    </script>
    <!-- get para from product -->
    <div class = "eventContainer">
  <div class = "eventrow">
   <%
   if(!products.isEmpty()){
	   for(IT2259_product p:products){%>
		   <div class = "event">
		   <img src = "<%= p.getImage() %>" class = "imgevent">
		      <div class = "detailarea">
		      <h2 class = "eventtitle"><%= p.getName() %></h2>
		      <h5 class = "date"> $<%= p.getPrice() %> | <%=p.getCategory() %></h5>
<a href = "AddToCartServlet?id=<%= p.getId() %>">
		      <button class = "viewbtn">Add To Card</button></a>
		      </div>
		    </div>
		    <% 
	   }
   }
   
   %>
    

	
	
</body>
</html>