package CustomerPkg;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class IT2259_CustomerDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<IT2259_Customer> validate(String username , String password){
		
		ArrayList<IT2259_Customer> cus = new ArrayList<>();
		
		//validate
		
		try {	
			 //call database
			
			con = IT2259_DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from customer2 where username = '"+username+"' and password = '"+password+"'";
			 rs = stmt.executeQuery(sql);
			
			if (rs.next()){
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);			
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				//Customer class object
				IT2259_Customer c = new IT2259_Customer (id,name,phone,email,userU,passU);
				
				//pass arraylist object
				cus.add(c);
				
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	// Insert part
	public static boolean insertcustomer (String name , String Phone ,String email,String username , String password) {
		
		isSuccess = false;
		
		
		
		try {
			
			con = IT2259_DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			//*
			String sql = "insert into customer2 values ( 0 ,'"+name+"' , '"+Phone+"' , '"+email+"' , '"+username+"' , '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			// when return 1 our work success
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;	
	}
	//update
	
	public static boolean updatecustomer(String id,String name,String phone ,String email,String username,String password) {
		
		try {
			
			con = IT2259_DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer2 set name = '"+name+"',PhoneNumber = '"+phone+"' , email = '"+email+"', username = '"+username+"', password = '"+password+"'"
					+ "where idCustomer = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	//data retrive 
	
	public static List <IT2259_Customer> getCustomerDetails(String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<IT2259_Customer> cus = new ArrayList<>();
		
		try {
			con = IT2259_DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer2 where idCustomer ='"+convertedID+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				//assign value in database
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				//pass values for customer.java
				IT2259_Customer c = new IT2259_Customer(id,name,phone,email,username,password);
				//add arraylist
				cus.add(c);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	//delete part
	
	public static boolean deleteCustomer(String Id) {
		int convId = Integer.parseInt(Id);
		
		try {
			con = IT2259_DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer2 where idCustomer = '"+convId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if ( rs> 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			
		}
		
		return isSuccess;
	}
}
