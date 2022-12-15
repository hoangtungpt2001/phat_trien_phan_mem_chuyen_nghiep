package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Account;

/**
 * Servlet implementation class SignUpControl
 */
@WebServlet("/signup")
public class SignUpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("name");
		String pass = request.getParameter("pass");
		String re_pass = request.getParameter("re_pass");
		if (!pass.equals(re_pass)) {
			request.setAttribute("mess_fail", "re-pass wrong password");
			request.getRequestDispatcher("registration.jsp").forward(request, response);

		} else {
			DAO dao = new DAO();
			Account a = dao.checkAccountExist(user); 
			

			
			 if(a == null) { 
				 
			  
			  dao.SignUp(user,pass); 
			  request.setAttribute("mess_success","SignUp success" ); 
			  request.getRequestDispatcher("registration.jsp").forward(request,response); 
			  }else {
			  
			  request.setAttribute("mess_fail","SignUp Fail" );
			  request.getRequestDispatcher("registration.jsp").forward(request, response);
			  
			  }
			 
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
