package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.entity.user;
public class UserDao {
     public Connection conn;
     public UserDao(Connection conn) {
    	 super();
    	 this.conn=conn;
     }
     public boolean addUser(user u) {
		 boolean  f=false;
    	 try {
			 String sql = "insert into user (name, qualification, email, password, role) values (?,?,?,?,?)";

			 PreparedStatement ps = conn.prepareStatement(sql);

			 ps.setString(1, u.getName());

			 ps.setString(2, u.getQualification());

			 ps.setString(3, u.getEmail());

			 ps.setString(4, u.getPassword());

			 ps.setString(5, "user");

			 int i =ps.executeUpdate();

			 if (i == 1) {

			 f = true;

			 }
		} catch (Exception e) {
         e.printStackTrace();
		}
		 return f;

     }
     public  user login(String em,String psw) {
 		user u1= new user();
    	 try {

    		String sql = "select * from user where email=? and password=?";

    		PreparedStatement ps = conn.prepareStatement(sql);

    		ps.setString(1, em);

    		ps.setString(2, psw);

    		ResultSet rs = ps.executeQuery();

    		while (rs.next()) {


    		u1.setId(rs.getInt(1));

    		u1.setName(rs.getString(2));

    		u1.setQualification(rs.getString(3));

    		u1.setEmail(rs.getString(4));

    		u1.setPassword(rs.getString(5));

    		u1.setRole(rs.getString(6));

    		}

    		} catch (Exception e) {

    		e.printStackTrace();

    		}
    	return u1;
     }
}
