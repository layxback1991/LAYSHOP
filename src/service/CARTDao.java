package service;

import dao.Basedao;
import entity.Cart;
import entity.Category;
import entity.User;
import org.jetbrains.annotations.NotNull;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CARTDao {
	public static int insert(Cart cart){
		String sql = "insert into cart values(null,?,?,?,?,?,?,?,?,1)";
		
		Object[] params = {
				cart.getCart_p_filename(),
				cart.getCart_p_name(),
				cart.getCart_p_price(),
				cart.getCart_quantity(),
				cart.getCart_p_stock(),
				cart.getCart_p_id(),
				cart.getCart_u_id(),
				cart.getOrder_time()
		};
		
		return Basedao.exectuIUD(sql, params);
	}
	
	
	public static Cart getCartShop(String id) {
		Cart es =null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from CART where CART_ID=? and CART_VALID=1 order by CART_ID desc";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
		
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 es = new Cart(
						 	rs.getInt("cart_id"),
						 	rs.getString("cart_p_filename"),
						 	rs.getString("cart_p_name"),
						 	rs.getInt("cart_p_price"),
						 	rs.getInt("cart_quantity"),
						 	rs.getInt("cart_p_stock"),
						 	rs.getInt("cart_p_id"),
						 	rs.getString("cart_u_id"),
						 	rs.getString("order_time"),
						 	rs.getInt("cart_valid")
						 );


			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return es;	
	}
	
	

	public static Cart getCartShop(String uid, String pid) {
		Cart es =null;
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from CART where CART_U_ID=? and CART_P_ID=? and CART_VALID=1 order by CART_ID desc";
			ps = conn.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setInt(2, Integer.parseInt(pid));
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 es = new Cart(
						 	rs.getInt("cart_id"),
						 	rs.getString("cart_p_filename"),
						 	rs.getString("cart_p_name"),
						 	rs.getInt("cart_p_price"),
						 	rs.getInt("cart_quantity"),
						 	rs.getInt("cart_p_stock"),
						 	rs.getInt("cart_p_id"),
						 	rs.getString("cart_u_id"),
						 	rs.getString("order_time"),
						 	rs.getInt("cart_valid")
						 );
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return es;	
	}
	
	
	public static ArrayList<Cart> getCart(String id){
		ArrayList<Cart> list = new ArrayList<Cart>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from CART where CART_U_ID=? and CART_VALID=1 order by CART_ID desc";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 Cart c = new Cart(
						 	rs.getInt("cart_id"),
						 	rs.getString("cart_p_filename"),
						 	rs.getString("cart_p_name"),
						 	rs.getInt("cart_p_price"),
						 	rs.getInt("cart_quantity"),
						 	rs.getInt("cart_p_stock"),
						 	rs.getInt("cart_p_id"),
						 	rs.getString("cart_u_id"),
						 rs.getString("order_time"),
						 	rs.getInt("cart_valid")
						 );
				 
				 
				
				 
				 
				 list.add(c);
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return list;
	}
	
	public static int updatenum(int esid ,String time,int count){
		
		String sql = "update cart set cart_quantity=? and order_time=? where cart_id=? ";
		
		Object[] params = {count,time, esid};
		
		return Basedao.exectuIUD(sql, params);
		
	}
	public static int updateStock(int num,int esid){

		String sql = "update cart set cart_p_stock=? where cart_p_id=?";
		Object[] params = {num,esid};

		String sql1 = "update PRODUCT set PRODUCT_STOCK=? where PRODUCT_ID=?";
		Object[] params2 = {num,esid};
		Basedao.exectuIUD(sql1,params2);
		return Basedao.exectuIUD(sql, params);

	}
	public static int getDeleteDD(int id) {
		String sql="delete from cart where cart_id=?";
		
		Object[] params={id};
		
		return Basedao.exectuIUD(sql, params);
	}

	@NotNull
	public static ArrayList<Cart> selectAll(int cpage, int count, String keyword) {
		ArrayList<Cart> list = new ArrayList<Cart>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();

		PreparedStatement ps = null;
		try {
			String sql = "";

			if(keyword!=null) {
				sql = "select * from Cart where  cart_p_id like ? order by cart_quantity desc limit ?, ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else{

				sql = "select * from Cart order by cart_quantity desc limit ?, ?";
				ps = conn.prepareStatement(sql);

				ps.setInt(1, (cpage-1)*count);
				ps.setInt(2, count);
			}

			rs = ps.executeQuery();

			while(rs.next()) {
				Cart cart = new Cart(
						rs.getInt("cart_id"),
						rs.getString("cart_p_filename"),
						rs.getString("cart_p_name"),
						rs.getInt("cart_p_price"),
						rs.getInt("cart_quantity"),
						rs.getInt("cart_p_stock"),
						rs.getInt("cart_p_id"),
						rs.getString("cart_u_id"),
						rs.getString("order_time"),
						rs.getInt("cart_valid")

				);

				System.out.print(cart.getCart_id());
				list.add(cart);

			}


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		return list;


	}

	public static ArrayList<Cart> selectAllUser(int cpage, int count, String keyword) {
		ArrayList<Cart> list = new ArrayList<Cart>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();

		PreparedStatement ps = null;
		try {
			String sql = "";

			if(keyword!=null) {
				sql = "select * from Cart where  cart_u_id like ? order by cart_quantity desc limit ?, ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else{

				sql = "select * from Cart order by cart_quantity desc limit ?, ?";
				ps = conn.prepareStatement(sql);

				ps.setInt(1, (cpage-1)*count);
				ps.setInt(2, count);
			}

			rs = ps.executeQuery();

			while(rs.next()) {
				Cart cart = new Cart(
						rs.getInt("cart_id"),
						rs.getString("cart_p_filename"),
						rs.getString("cart_p_name"),
						rs.getInt("cart_p_price"),
						rs.getInt("cart_quantity"),
						rs.getInt("cart_p_stock"),
						rs.getInt("cart_p_id"),
						rs.getString("cart_u_id"),
						rs.getString("order_time"),
						rs.getInt("cart_valid")

				);


				list.add(cart);

			}


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		return list;


	}
	//用户买了多少
	public static ArrayList<Cart> selectByName(String id) {
		int count = 0;
		Connection conn = Basedao.getconn();
		ArrayList<Cart> list = new ArrayList<Cart>();
		//声明结果集
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			String sql = "select * from cart where cart_u_id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				Cart cart = new Cart(
						rs.getInt("cart_id"),
						rs.getString("cart_p_filename"),
						rs.getString("cart_p_name"),
						rs.getInt("cart_p_price"),
						rs.getInt("cart_quantity"),
						rs.getInt("cart_p_stock"),
						rs.getInt("cart_p_id"),
						rs.getString("cart_u_id"),
						rs.getString("order_time"),
						rs.getInt("cart_valid")

				);
				list.add(cart);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Basedao.closeall(rs, ps, conn);
		}
		return list;
	}


	/**
	 * 获取总记录数和总页数
	 * @param count
	 * @return
	 */

	public static int[] totalPage(int count, String keyword) {
		// 0 总记录数， 1， 页数
		int arr[] = {0, 1};

		Connection conn = Basedao.getconn();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select count(*) from cart where cart_p_id like ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
			}else
			{
				sql = "select count(*) from cart";
				ps = conn.prepareStatement(sql);

			}

			rs = ps.executeQuery();

			while(rs.next()) {
				arr[0]= rs.getInt(1);

				if(arr[0]%count==0){
					arr[1] = arr[0]/count;
				}else{
					arr[1] = arr[0]/count+1;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Basedao.closeall(rs, ps, conn);
		}
		return arr;
	}


	public static int[] totalPageUser(int count, String keyword) {
		// 0 总记录数， 1， 页数
		int arr[] = {0, 1};

		Connection conn = Basedao.getconn();
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select count(*) from cart where cart_u_id like ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
			}else
			{
				sql = "select count(*) from cart";
				ps = conn.prepareStatement(sql);

			}

			rs = ps.executeQuery();

			while(rs.next()) {
				arr[0]= rs.getInt(1);

				if(arr[0]%count==0){
					arr[1] = arr[0]/count;
				}else{
					arr[1] = arr[0]/count+1;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			Basedao.closeall(rs, ps, conn);
		}
		return arr;
	}

}
