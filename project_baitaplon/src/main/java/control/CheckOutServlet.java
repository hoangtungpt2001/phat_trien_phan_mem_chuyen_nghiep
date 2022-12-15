package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Account;
import entity.Cart;
import entity.Order;


@WebServlet("/cart-check-out")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try(PrintWriter out = response.getWriter()){
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
			ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
			Account auth = (Account) request.getSession().getAttribute("auth");
			if(cart_list != null && auth!=null) {
				for(Cart c:cart_list) {
					Order order = new Order();
					order.setId(c.getId());
					order.setAid(auth.getId());
					order.setQunatity(c.getQuantity());
					order.setDate(formatter.format(date));
					
					DAO oDao = new DAO();
					boolean result = oDao.insertOrder(order);
					if(!result) break;
				}
				cart_list.clear();
				
				out.print("<div class=\"alert alert-primary\" role=\"alert\">\n"
						+ "    thanh toán thành công\n"
						+ "</div>");
				
				
				response.sendRedirect("home");
			}else {
				if(auth==null) {
					response.sendRedirect("login.jsp");
				}
				response.sendRedirect("cart.jsp");
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
