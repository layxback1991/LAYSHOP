package servlet.cart;

import entity.Cart;
import entity.Product;
import entity.User;
import service.CARTDao;
import service.PRODUCTDao;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class CartAdd
 */

//@WebServlet("/cartadd")
public class CartAdd extends HttpServlet {
	private String message;
	//init方法只会执行一次
	@Override
	public void init() throws ServletException
	{
		// 初始化
		SimpleDateFormat data= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		//设置日期格式
		message=data.format(new Date());


	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product p = null;
		
		String pid = request.getParameter("id");
		String count = request.getParameter("count");
		String url = request.getParameter("url");
		
		HttpSession session =  request.getSession();
		
		String isLogin = (String)session.getAttribute("isLogin");
		
		User user=(User) session.getAttribute("name");
		
		if(user!=null && isLogin.equals("1")) {
			
			String uid = (String)user.getUSER_ID();
			
			
			//通过用户ID和购物车中的商品ID 查看有没有这条记录
			
			Cart srcsp = CARTDao.getCartShop(uid, pid);
			
			if(srcsp != null) {
				int srccount = srcsp.getCart_quantity();
				
				int newcount = srccount + Integer.parseInt(count);
				
				if(newcount >=5) {
					newcount =5;
				}
				
				CARTDao.updatenum(srcsp.getCart_id(),message, newcount);
				
			}else{
			
			
				if(pid !=null) {
					p  = PRODUCTDao.selectById(Integer.parseInt(pid));
				}
				
				Cart cart = new Cart(
							0,
							p.getPRODUCT_FILENAME(),
							p.getPRODUCT_NAME(),
							p.getPRODUCT_PRICE(),
							Integer.parseInt(count),
							p.getPRODUCT_STOCK(),
							p.getPRODUCT_ID(),
							uid,
							message,
							1
							
						);
				
				CARTDao.insert(cart);
			}
			
		}else{
			
			PrintWriter out = response.getWriter();
			
			out.write("<script>");
			out.write("alert('登录后，再购买')");
			out.write("location.href='login.jsp'");
			out.write("</script>");
			out.close();
			return;
		}
		
		if(url.equals("z")) {
			response.sendRedirect("showcart");
		}else{
			response.sendRedirect("selectproductview?id="+pid);
		}
		
	}

	

}
