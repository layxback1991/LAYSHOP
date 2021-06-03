package servlet.cate;

import entity.Category;
import service.CATEGORYDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class DoCateUpdate
 */
//@WebServlet("/manage/admin_docateupdate")
public class DoCateUpdate extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置字符集
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html;charset=utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int fid = Integer.parseInt(request.getParameter("parentId"));
		String name = request.getParameter("className");
		
		 Category cate= new Category(id, name, fid);
	     int count=CATEGORYDao.update(cate);
		 System.out.print(id);
	     if(count>0) {
	     	response.sendRedirect("admin_cateselect");
		 }else {
			 PrintWriter out = response.getWriter();

			 out.write("<script>");
			 out.write("alert('修改失败')");
			 out.write("location.href='manage/admin_tocateupdate'");
			 out.write("</script>");

		 }
	}

	
	
}
