package servlet.cart;

import service.CARTDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class CartShopDel
 */
@WebServlet("/cartshopdel")
public class CartShopDel extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String esid = request.getParameter("esid");
		
		int count=CARTDao.getDeleteDD(Integer.parseInt(esid));
		if(count >0 ) {

			response.sendRedirect("showcart");
		} else {
			PrintWriter out = response.getWriter();

			out.write("<script>");
			out.write("alert('购物车删除失败')");
			out.write("location.href='manage/showcart");
			out.write("</script>");

		}
	}
	

}
