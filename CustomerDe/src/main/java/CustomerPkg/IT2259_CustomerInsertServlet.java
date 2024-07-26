package CustomerPkg;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class IT2259_CustomerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get details in login jsp
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("password");

		boolean isSuccess;

		// pass values and check 
		isSuccess = IT2259_CustomerDBUtil.insertcustomer(name, phone, email, username, password);

		// check database connection success

		if (isSuccess == true ) {
			// when want to navigate another jsp page use **request dispatcher class **
			
			
			RequestDispatcher dis = request.getRequestDispatcher("IT2259_Success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("IT2259_Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
