package servlet.cart;

import entity.Order;
import service.CARTDao;
import service.ORDERDao;
import service.PRODUCTDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class CartShopNumAdd
 */
@WebServlet("/cartshopnumadd")
public class CartShopNumAdd extends HttpServlet {
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
		 String count = request.getParameter("count");
	     String num = request.getParameter("num");
		 String esid = request.getParameter("esid");
		 String id = request.getParameter("id");
		 String uid=request.getParameter("uid");
		 String money=request.getParameter("money");
		 String payment="网络支付";
		 Order order=new Order();
		 order.setOrder_id(Integer.parseInt(esid));
		 order.setOrder_status("成功支付");
		 order.setOrder_time(message);
		 order.setPayment(payment);
		 order.setTotal_price(Integer.parseInt(money));
		 order.setUSER_ID(uid);

		 int n= CARTDao.updateStock(Integer.parseInt(num),Integer.parseInt(id));
		 int cnt= CARTDao.updatenum(Integer.parseInt(esid),message,Integer.parseInt(count));
       //  int q= ORDERDao.insert(order);
		if(cnt >0&n>0 ) {
			response.sendRedirect("ok.jsp");
		} else {
			PrintWriter out = response.getWriter();

			out.write("<script>");
			out.write("alert('结算失败')");
			out.write("location.href='showcart");
			out.write("</script>");

		}
	}

	

}
