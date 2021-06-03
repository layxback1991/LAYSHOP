package service;

import dao.Basedao;
import entity.Order;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ORDERDao {
    public static int insert(Order o) {
        String sql = "insert into `order` values(?, ?, ?,?,?,?)";


        Object[] params = {
                o.getOrder_id(),
                o.getUSER_ID(),
                o.getOrder_status(),
                o.getOrder_time(),
                o.getTotal_price(),
                o.getPayment()
        };

        return Basedao.exectuIUD(sql, params);
    }


    public static ArrayList<Order> selectAll() {
        ArrayList<Order> list = new ArrayList<Order>();
        //声明结果集
        ResultSet rs = null;
        //获取连接对象
        Connection conn = Basedao.getconn();

        PreparedStatement ps = null;


        try {
            String sql = "select * from `order`";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Order p = new Order(
                        rs.getInt("order_id"),
                        rs.getString("USER_ID"),
                        rs.getString("order_status"),
                        rs.getString("order_time"),
                        rs.getInt("total_price"),
                        rs.getString("payment")
                );


                list.add(p);

            }


        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            Basedao.closeall(rs, ps, conn);
        }
        return list;
    }
}
