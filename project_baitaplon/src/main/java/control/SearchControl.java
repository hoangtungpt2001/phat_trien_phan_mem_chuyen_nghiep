package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Category;
import entity.Product;
import entity.Sex;


/**
 * Servlet implementation class SearchControl
 */
@WebServlet("/search")
public class SearchControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		DAO dao = new DAO(); 
		 String txtSearch = request.getParameter("search");
		 List<Product> listSearch = dao.getsearchProduct(txtSearch);
		 List<Category> listb = dao.getAllCategory();
		 List<Sex> listc = dao.getAllSex(); request.setAttribute("listc",listc);
		  
		  
		  //TÊN THƯƠNG HIỆU
		  request.setAttribute("listb",listb);
		  //GIỚI TÍNH
		  request.setAttribute("listc",listc);
		 request.setAttribute("lista",listSearch);
		 request.getRequestDispatcher("product_information.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
