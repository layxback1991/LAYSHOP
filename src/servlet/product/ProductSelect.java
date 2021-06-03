package servlet.product;

import entity.Product;
import service.PRODUCTDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ProductSelect
 */
//@WebServlet("/manage/admin_productselect")
public class ProductSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Product>  plist =PRODUCTDao.selectAll();
//		response.setContentType("text/html;charset=utf-8");
		request.setAttribute("plist", plist);

		request.setCharacterEncoding("UTF-8");
		request.getRequestDispatcher("manage/admin_product.jsp").forward(request, response);
	}



}
