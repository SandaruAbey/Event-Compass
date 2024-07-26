package CustomerPkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class IT2259_UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get details from UpdateCustomer.jsp page name
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = IT2259_CustomerDBUtil.updatecustomer(id, name, phone, email, username, password);
		
		if(isTrue == true) {
			
			List <IT2259_Customer> CusDetails = IT2259_CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("CusDetails", CusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("IT2259_useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<IT2259_Customer> CusDetails = IT2259_CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("CusDetails", CusDetails);
			RequestDispatcher dis = request.getRequestDispatcher("IT2259_Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
