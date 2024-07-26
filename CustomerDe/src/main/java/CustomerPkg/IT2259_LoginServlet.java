package CustomerPkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")

public class IT2259_LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//get details in login jsp
		String username = request.getParameter("uid");
		String password = request.getParameter("password");
		List<IT2259_Customer> custDetails = IT2259_CustomerDBUtil.validate(username, password);
		//throw details for CustomerDBUtil.java
		 if (custDetails.isEmpty()) {
			String errorMessage = "Invalid username or password. Please try again.";
            request.setAttribute("errorMessage", errorMessage);
            RequestDispatcher dis = request.getRequestDispatcher("IT2259_Login.jsp");
			 dis.forward(request, response);
		}
		 else {
			 
			 request.setAttribute("CusDetails", custDetails);
			 RequestDispatcher dis = request.getRequestDispatcher("IT2259_useraccount.jsp");
			 dis.forward(request, response);
			 
//			 HttpSession session = request.getSession();
//     	    session.setAttribute("CusDetails", custDetails);
//     	    response.sendRedirect("IT2259_useraccount.jsp");
//			 
			
		 }
		
		
		
		
	}

}
