<%@page import = "CustomerPkg.IT2259_DBConnect" %>
<%@page import="Eventpkg.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
//session
ArrayList<IT2259_cart> cart_list = (ArrayList<IT2259_cart>) session.getAttribute("cart-list");
List<IT2259_cart> cartProduct = null;
// call clases
if (cart_list != null){
	IT2259_EventDBUtil pd = new IT2259_EventDBUtil(IT2259_DBConnect.getConnection());
	cartProduct = pd.getCartProducts(cart_list);
	double total = pd.getTotalCartPrice(cart_list);
	//*
	 request.setAttribute("cart_list", cart_list);
	request.setAttribute("total", total);
}
 %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="IT2259_Home.css">
  <link rel="stylesheet" href="IT2259_event.css">
  <link rel="stylesheet" href="IT2259_cart.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cabin:wght@600&family=Gabarito:wght@700;800&family=Poppins:wght@600&display=swap" rel="stylesheet">
<title>Cart</title>
</head>
<body>
 <header>
        <a href = "#"><img src = "logo.png" class = "logo"></a>
        <ul>
            <li><a href = "IT2259_HomePage.jsp">Home</a></li>
            <li>Total Price $<span id ="tot"> ${total}</span></li>
            <li><button class = "Login"><a href = "#" id = "loginbtn">Pay</a></button></li>
            </ul>     
    </header>
</body>

<div class= "container">
<table class = "carttable">
    <tr>
        <th>Event Name</th>
        <th>Price</th>
        <th>Category</th>
        <th>Qut</th>
        

    </tr>
    <%
    if(cart_list != null){
    	for (IT2259_cart c :cartProduct ){%>
    		<tr>
            <td><%=c.getName() %></td>
            <td>$<%=c.getPrice() %></td>
            <td><%=c.getCategory() %></td>
            <td>
                <form action="order-now" method="post" class="form-inline">
                <input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
                    <div class="form-group d-flex justify-content-between">
                        <input type="text" name="quantity" class="quantityspace"  value="1" readonly> 
                        <a class="plubtn" href="IT2259_quentityIncrement"><i class="fas fa-plus-square"></i></a> 
                        <a class="plubtn" href="IT2259_quentityIncrement"><i class="fas fa-minus-square"></i></a>
                    </div>
                </form>
            </td>
        </tr><%
    	}
    }
    %>
    
</table>
</div>


</html>