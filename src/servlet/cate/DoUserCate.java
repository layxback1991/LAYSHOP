package servlet.cate;

import entity.Category;
import service.CATEGORYDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class DoUserCate
 */
//@WebServlet("/manage/admin_docateadd")
public class DoUserCate extends HttpServlet {
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=utf-8");
		
		
		int fid = Integer.parseInt(request.getParameter("parentId"));
		String name = request.getParameter("className");
		
		Category cate= new Category(0, name, fid);
		CATEGORYDao.insert(cate);
		
		response.sendRedirect("admin_cateselect");
		
	}

}
