package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beans.Product;
import com.beans.User;


public class DB {
	
	private final String username = "sa";
	private final String password = "12345678";
	private final String dbName = "myproject";
	private final String url = "jdbc:sqlserver://localhost:1433;databaseName="+ dbName;
	private final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	
	ArrayList<Product> list = new ArrayList<>();
	ArrayList<User> userList = new ArrayList<>();
	Connection connect;
	public void dbConnect() {
		try {
			Class.forName(driver);
			
			connect = DriverManager.getConnection(url, username, password);
			
		} catch (ClassNotFoundException | SQLException e){}
                    // TODO Auto-generated catch block

		
            // TODO Auto-generated catch block
            
	}
        public void setorder (String uid,String id) throws SQLException{
            dbConnect();
            String sql="insert into \"order\" (userid, id) values (?,?)";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, uid);
            st.setString(2, id);
            st.executeUpdate();
            dbClose();
        }
        public void deleteorder(String userid) throws SQLException{
            dbConnect();
            String sql="delete from \"order\" where userid = ?";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, userid);
            st.executeUpdate();
            dbClose();
        }
        public String getid (String username, String password) throws SQLException{
             dbConnect();
             String q= null;
            String sql="select id from \"user\" where (username = ? and password = ?)";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                 q= Integer.toString(rs.getInt(1));
            }
           return  q; 
        }
	/*public int getimg(int i) throws SQLException{
            dbConnect();
            String sql="select image from product where id=? ";
            PreparedStatement st = connect.prepareStatement(sql);
            st.setInt(1, i);
            ResultSet rs=st.executeQuery();
            int t=rs.getInt(1);
            return t;
        }*/
	private void dbClose() {
		try {
			connect.close();
		} catch (SQLException e) {
		}
		
	}
	public void addUser(User user) throws SQLException {
		dbConnect();
		String sql = "Insert into \"user\"(name,email,username,address,password) values(?,?,?,?,?)";
		PreparedStatement st = connect.prepareStatement(sql);
		
		st.setString(1, user.getName());
		st.setString(2, user.getEmail());
		st.setString(3, user.getUsername());
		st.setString(4, user.getAddress());
		st.setString(5, user.getPassword());
		
		
		st.executeUpdate();
		dbClose();
	}

	public boolean checkUser(String username, String password) throws SQLException {
		dbConnect();
		int count = 0;
		String sql = "Select * from \"user\" where username = ? and password = ?";
		PreparedStatement st = connect.prepareStatement(sql);
		
		st.setString(1, username);
		st.setString(2, password);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			count = 1;
		}
		
		dbClose();
		return (count != 0);
	}

	public ArrayList<Product> fetch() throws SQLException {
		dbConnect();
		String sql = "Select * from product";
		PreparedStatement st = connect.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("id");
			String name= rs.getString("name");
			String category= rs.getString("category");
			String price= rs.getString("price");
			String featured= rs.getString("featured");
			String image= rs.getString("image");
			
			Product p = new Product();
			p.setCategory(category);
			p.setFeatured(featured);
			p.setId(id);
			p.setImage(image);
			p.setName(name);
			p.setPrice(price);
			list.add(p);
			p=null;
			
		}
		
		dbClose();
		return list;
	}

	public ArrayList<User> fetchUser() throws SQLException {
		dbConnect();
		String sql = "Select * from user";
		PreparedStatement st = connect.prepareStatement(sql);
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next()) {
			String address = rs.getString("address");
			String user = rs.getString("username");
			String email = rs.getString("email");
			String name = rs.getString("name");
			int id = rs.getInt("id");
			String password = rs.getString("password");
			
			User u = new User();
			u.setAddress(address);
			u.setEmail(email);
			u.setId(id);
			u.setName(name);
			u.setUsername(user);
			u.setPassword(password);
			userList.add(u);
			u=null;
				
		}
		
		dbClose();
		return userList;
	}

	public void deleteProduct(String id) throws SQLException {
		
		dbConnect();
		String sql = "Delete from product where id=?";
		PreparedStatement st = connect.prepareStatement(sql);
		st.setString(1, id);
		st.executeUpdate();
		dbClose();
		
	}

	public Product fetchProduct(String id) throws SQLException {
		dbConnect();
		String sql = "select * from product where id=?";
		PreparedStatement pstmt = connect.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rst = pstmt.executeQuery();
		Product p = new Product();
		while(rst.next()){
			
			p.setId(rst.getInt("id"));
			p.setName(rst.getString("name"));
			p.setPrice(rst.getString("price"));
			p.setCategory(rst.getString("category"));
			p.setFeatured(rst.getString("featured"));
			p.setImage(rst.getString("image"));
		}
		dbClose();
		return p;
	}

	public void updateProduct(Product p) throws SQLException {
		dbConnect();
		String sql = "update product set name=?,price=?,category=?,featured=? where id=?";
		PreparedStatement st = connect.prepareStatement(sql);
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setInt(5, p.getId());
		st.executeUpdate();
		dbClose();
	}

	public void addProduct(Product p) throws SQLException {
		dbConnect();
		String sql = "insert into product(name,price,category,featured,image) values(?,?,?,?,?)";
		PreparedStatement st = connect.prepareStatement(sql);
		
		st.setString(1, p.getName());
		st.setString(2, p.getPrice());
		st.setString(3, p.getCategory());
		st.setString(4, p.getFeatured());
		st.setString(5, p.getImage());
		
		
		st.executeUpdate();
		dbClose();
	}

	
	
	
}
