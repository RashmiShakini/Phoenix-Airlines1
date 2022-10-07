package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.User;
public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test1","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into register(FirstName,LastName,IDCardNumber,UserName,Email,Password,ConfirmPassword,PhoneNumber,Address) values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getFirstName());
		ps.setString(2,u.getLastName());
		ps.setString(3,u.getIDCardNumber());
		ps.setString(4,u.getUserName());
		ps.setString(5,u.getEmail());
                ps.setString(6,u.getPassword());
		ps.setString(7,u.getConfirmPassword());
		ps.setString(8,u.getPhoneNumber());
		ps.setString(9,u.getAddress());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update register set FirstName=?,LastName=?,IDCardNumber=?,UserName=?,Email=?,Password=?,ConfirmPassword=?,PhoneNumber=?,Address=? where id=?");
		ps.setString(1,u.getFirstName());
		ps.setString(2,u.getLastName());
		ps.setString(3,u.getIDCardNumber());
		ps.setString(4,u.getUserName());
		ps.setString(5,u.getEmail());
                ps.setString(6,u.getPassword());
		ps.setString(7,u.getConfirmPassword());
		ps.setString(8,u.getPhoneNumber());
		ps.setString(9,u.getAddress());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from register where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setFirstName(rs.getString("FirstName"));
			u.setLastName(rs.getString("LastName"));
			u.setIDCardNumber(rs.getString("IDCardNumber"));
			u.setUserName(rs.getString("UserName"));
			u.setEmail(rs.getString("Email"));
			u.setPassword(rs.getString("Password"));
                        u.setConfirmPassword(rs.getString("ConfirmPassword"))
                        u.setPhoneNumber(rs.getString("PhoneNumber"));
			u.setAddress(rs.getString("Address"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setFirstName(rs.getString("FirstName"));
			u.setLastName(rs.getString("LastName"));
			u.setIDCardNumber(rs.getString("IDCardNumber"));
			u.setUserName(rs.getString("UserName"));
			u.setEmail(rs.getString("Email"));
			u.setPassword(rs.getString("Password"));
                        u.setConfirmPassword(rs.getString("ConfirmPassword"))
                        u.setPhoneNumber(rs.getString("PhoneNumber"));
			u.setAddress(rs.getString("Address"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
