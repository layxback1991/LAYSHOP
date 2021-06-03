package servlet.product;

import entity.Category;
import entity.Product;
import service.CATEGORYDao;
import service.PRODUCTDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ToProductUpdate extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Product product =  PRODUCTDao.selectById(id);


        ArrayList<Product> productArrayList = PRODUCTDao.selectAll();

        request.setAttribute("productArrayList", productArrayList);
        request.setAttribute("product1", product);

        request.getRequestDispatcher("manage/admin_productmodify.jsp").forward(request, response);
    }


}
