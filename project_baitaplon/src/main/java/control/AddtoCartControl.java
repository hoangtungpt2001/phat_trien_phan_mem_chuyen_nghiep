package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Cart;

/**
 * Servlet implementation class AddtoCartControl
 */
@WebServlet("/addtocart")
public class AddtoCartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtoCartControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     try (PrintWriter out = response.getWriter()) {
//	        	out.print("add to cart servlet");

	            ArrayList<Cart> cartList = new ArrayList<>();
	            int id = Integer.parseInt(request.getParameter("id"));
	            Cart cm = new Cart();
	            cm.setId(id);
	            cm.setQuantity(1);
	            HttpSession session = request.getSession();
	            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	            if (cart_list == null) {
	                cartList.add(cm);
	                session.setAttribute("cart-list", cartList);
	                out.println(" lien ket ok");
	                response.sendRedirect("home");
	            } else {
	                cartList = cart_list;

	                boolean exist = false;
	                for (Cart c : cart_list) {
	                    if (c.getId() == id) {
	                        exist = true;
	                        response.sendRedirect("cart.jsp");
	                    }
	                }

	                if (!exist) {
	                    cartList.add(cm);
	                    response.sendRedirect("home");
	                }
	            }
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
