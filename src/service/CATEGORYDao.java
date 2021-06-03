package service;

import dao.Basedao;
import entity.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * 获取所有分类
 * @author Administrator
 *
 */
public class CATEGORYDao {
	public static ArrayList<Category> selectAll() {
		ArrayList<Category> list = new ArrayList<Category>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select * from Category";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 Category cate = new Category(
						 	rs.getInt("CATE_ID"),
						 	rs.getString("CATE_NAME"),
						 	rs.getInt("CATE_PARENT_ID")
						 
						 );
				 
				 
				 list.add(cate);
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return list;
	}
	/**
	 * 查询分类，子分类和父级分类
	 * @param flag  flag="father" flag="child"
	 * @return
	 */
	
	public static ArrayList<Category> selectCat(String flag) {
		ArrayList<Category> list = new ArrayList<Category>();
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			
			String sql = null;
			
			if(flag!=null && flag.equals("father")){
				sql = "select * from Category where CATE_PARENT_ID=0";
			}else{
				sql = "select * from Category where CATE_PARENT_ID!=0";
			}
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 Category cate = new Category(
						 	rs.getInt("CATE_ID"),
						 	rs.getString("CATE_NAME"),
						 	rs.getInt("CATE_PARENT_ID")
						 
						 );
				 
				 
				 list.add(cate);
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return list;
	}
	
	
	
	public static Category selectById(int id) {

		Category cate = null;
		
		//声明结果集
		ResultSet rs = null;
		//获取连接对象
		Connection conn = Basedao.getconn();
		
		PreparedStatement ps = null;
		
		
		
		try {
			String sql = "select *  from Category  where CATE_ID=?";
			
			 ps = conn.prepareStatement(sql);
			 ps.setInt(1, id);
			
			 
			 rs = ps.executeQuery();
			 
			 while(rs.next()) {
				 cate = new Category(
						 	rs.getInt("CATE_ID"),
						 	rs.getString("CATE_NAME"),
						 	rs.getInt("CATE_PARENT_ID")
			
						 );
				 
				 
				
				 
			 }
			 
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			Basedao.closeall(rs, ps, conn);
		}
		
		
		
		return cate;
	}
	
	
	
	/**
	 * 添加分类
	 * @param cate
	 * @return
	 */
	
	public static int insert(Category cate) {
		String sql = "insert into Category values(null, ?, ?)";

		Object[] params = {
					cate.getCATE_NAME(), 
					cate.getCATE_PARENT_ID()
					};
		
		return Basedao.exectuIUD(sql, params);
	}
	
	

	public static int update(Category cate) {
		String sql = "update Category set CATE_NAME=?, CATE_PARENT_ID=?  where CATE_ID = ?";
		
		Object[] params = {
					cate.getCATE_NAME(),
					cate.getCATE_PARENT_ID(),
					cate.getCATE_ID()
					};
		
		return Basedao.exectuIUD(sql, params);
}

	
	public static int del(int id) {
		String sql = "delete from Category where CATE_ID=?";
		
		Object[] params = {id};
		
		return Basedao.exectuIUD(sql, params);
		
	}
	
	
	

}
