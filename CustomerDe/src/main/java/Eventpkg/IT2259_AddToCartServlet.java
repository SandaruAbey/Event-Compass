package Eventpkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AddToCartServlet")
public class IT2259_AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		try (PrintWriter out= response.getWriter()){
			ArrayList<IT2259_cart> cartlist = new ArrayList<>();
			
			int id = Integer.parseInt(request.getParameter("id"));
			IT2259_cart cm = new IT2259_cart();
			cm.setId(id);
			cm.setquantity(1);
			
			
			HttpSession session = request.getSession();
	
			ArrayList <IT2259_cart> cart_list =(ArrayList<IT2259_cart>) session.getAttribute("cart-list");
			
			
			if (cart_list == null) {
				cartlist.add(cm);
				session.setAttribute("cart-list", cartlist);
				response.sendRedirect("IT2259_useraccount.jsp");
				
			}
			else {
				//chech that event already in cart list
				cartlist = cart_list;
				
				boolean exist = false;
				
				cartlist.contains(cm);
				
				
				for (IT2259_cart c:cartlist) {
					if(c.getId()== id ) {
						exist = true;
						 out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='IT2259_Cart.jsp'>GO to Cart Page</a></h3>");
					}
					
				}
				if(!exist) {
					cartlist.add(cm);
					response.sendRedirect("IT2259_useraccount.jsp");
				}
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
