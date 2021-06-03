package servlet.product;


import entity.Product;
import service.PRODUCTDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class DoProductUpdate extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //创建SmartUpload对象
//        SmartUpload su= new SmartUpload();
//
//        //初使化
//        su.initialize(this.getServletConfig(), request, response);
//
//        //上传过程
//        try {
//            su.upload();
//        } catch (SmartUploadException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//
//        //获取上传的文件对象
//        Files fs= su.getFiles();
//        File f = fs.getFile(1);
//        //获取上传的文件名称
//        String fname = f.getFileName();
//
//        try {
//            su.save("img");
//        } catch (SmartUploadException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }

        int id = Integer.parseInt(request.getParameter("Product_ID"));
        String name = request.getParameter("Product_NAME");
        String fname =request.getParameter("PRODUCT_FILENAME");
        String PRODUCT_DESCRIPTION = request.getParameter("PRODUCT_DESCRIPTION");
        int PRODUCT_PRICE = Integer.parseInt(request.getParameter("PRODUCT_PRICE"));
        int PRODUCT_STOCK = Integer.parseInt(request.getParameter("PRODUCT_STOCK"));
        int FID = Integer.parseInt(request.getParameter("PRODUCT_FID"));
        int Cid = Integer.parseInt(request.getParameter("PRODUCT_CID"));

        Product p = new Product(
                id,
                name,
                PRODUCT_DESCRIPTION,
                PRODUCT_PRICE,
                PRODUCT_STOCK,
                FID,
                Cid,
                fname

        );
        int count=PRODUCTDao.update(p);
        System.out.print(id);
        if(count>0) {
            response.sendRedirect("admin_productselect");
        }else {
            PrintWriter out = response.getWriter();

            out.write("<script>");
            out.write("alert('修改失败')");
            out.write("location.href='manage/admin_toproductupdate'");
            out.write("</script>");

        }

    }
}
