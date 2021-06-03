package servlet.cart;

import entity.Cart;
import service.CARTDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class SaleCartUserSelect extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cpage = 1; //当前页
        int count = 5; //每页显示条数


        //获取用户指定的页面
        String cp = request.getParameter("cp");

        //接收用户搜索的关键字
        String keyword = request.getParameter("keywords");

        if(cp!=null)
        {
            cpage = Integer.parseInt(cp);
        }

        int arr[] = CARTDao.totalPageUser(count, keyword);

        //获取所有用户记录
        ArrayList<Cart> list= CARTDao.selectAllUser(cpage, count, keyword);

        //放到请求对象域里
        request.setAttribute("cartlist", list);
        request.setAttribute("tsum", arr[0]);
        request.setAttribute("tpage", arr[1]);
        request.setAttribute("cpage", cpage);



        if(keyword != null) {
            request.setAttribute("searchParams", "&keywords="+keyword);
        }
        //重定向
        request.getRequestDispatcher("manage/sale_foreorder.jsp").forward(request, response);


    }
}
