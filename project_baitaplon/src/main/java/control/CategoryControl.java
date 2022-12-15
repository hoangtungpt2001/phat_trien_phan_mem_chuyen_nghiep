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
 * Servlet implementation class CategoryControl
 */
@WebServlet("/category")
public class CategoryControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//lấy id category về
		String cateid = request.getParameter("cid");
		//lấy sản phẩm theo id
		DAO dao = new DAO();
		
		List<Product> list = dao.getProductBycid(cateid);
		List<Category> listb = dao.getAllCategory();
		List<Sex> listc = dao.getAllSex(); request.setAttribute("listc",listc);
		request.setAttribute("lista", list);
		//TÊN THƯƠNG HIỆU
		  request.setAttribute("listb",listb);
		  //GIỚI TÍNH
		  request.setAttribute("listc",listc);
		  request.setAttribute("tag",cateid);
		request.getRequestDispatcher("product_information.jsp").forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
