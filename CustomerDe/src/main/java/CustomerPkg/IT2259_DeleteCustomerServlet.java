package CustomerPkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class IT2259_DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = IT2259_CustomerDBUtil.deleteCustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("IT2259_CustomerInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List <IT2259_Customer> CusDetails = IT2259_CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("CusDetails", CusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("IT2259_useraccount.jsp");
			dispatcher.forward(request, response);
		}
		}
	}




