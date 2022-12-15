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
 * Servlet implementation class HomeControl
 */
@WebServlet("/home")
public class HomeControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeControl() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		 DAO dao = new DAO();
		 //đổ sản phẩm
			
				
			  List<Product> lista = dao.getAllProduct();
			  List<Category> listb = dao.getAllCategory();
			  List<Sex> listc = dao.getAllSex(); request.setAttribute("listc",listc);
			  
			  
			  //SẢN PHẨM
			  request.setAttribute("lista",lista);
			  //TÊN THƯƠNG HIỆU
			  request.setAttribute("listb",listb);
			  //GIỚI TÍNH
			  request.setAttribute("listc",listc);
			  request.getRequestDispatcher("product_information.jsp").forward(request,
			  response);
				 
				
			 
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * DAO dao = new DAO(); List<Product> list = dao.getAllProduct();
		 * request.setAttribute("listP",list);
		 * request.getRequestDispatcher("index.jsp").forward(request,response);
		 */
		/*
		 * DAO dao = new DAO(); List<Product> list = dao.getAllProduct();
		 * request.setAttribute("listP",list);
		 * request.getRequestDispatcher("index.jsp").forward(request,response);
		 */
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		/*
		 * DAO dao = new DAO(); List<Product> list = dao.getAllProduct();
		 * request.setAttribute("listP",list);
		 * request.getRequestDispatcher("index.jsp").forward(request,response);
		 */
		
}
}
