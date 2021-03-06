package servlet.cate;

import entity.Category;
import service.CATEGORYDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ToCateUpdate
 */
//@WebServlet("/manage/admin_tocateupdate")
public class ToCateUpdate extends HttpServlet {


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));	
		
		Category cate =  CATEGORYDao.selectById(id);
		
		
		ArrayList<Category> catelist = CATEGORYDao.selectAll();
		
		request.setAttribute("catelist", catelist);
		request.setAttribute("cate1", cate);
		
		request.getRequestDispatcher("manage/admin_catemodify.jsp").forward(request, response);
	}



}
