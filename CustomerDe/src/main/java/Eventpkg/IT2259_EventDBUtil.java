package Eventpkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import java.util.List;
import Eventpkg.*;

public class IT2259_EventDBUtil {
	//get Event details from db
	private Connection con = null;
	private  String query;
	private  PreparedStatement pst;
	private  ResultSet rs = null;
	
	public IT2259_EventDBUtil(Connection con) {
		this.con = con;
	}
	
	public List<IT2259_product> getAllProduct (){
		List <IT2259_product> products = new ArrayList<IT2259_product>();
		
		try {
			query = "select * from product";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			
			while (rs.next()) {
				IT2259_product row = new IT2259_product();
				
				row.setId(rs.getInt("id"));
				row.setName(rs.getString("name"));
				row.setCategory(rs.getString("category"));
				row.setPrice(rs.getDouble("price"));
				row.setImage(rs.getString("image"));
				
				products.add(row);
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
	}
	
	//pass values to cart
	
	public List <IT2259_cart> getCartProducts(ArrayList<IT2259_cart> cartList){
		List<IT2259_cart> products = new ArrayList<IT2259_cart>();
		
		try {
			if(cartList.size()>0) {
				for(IT2259_cart item:cartList) {
					query = "select * from product where id = ?";
					pst = this.con.prepareStatement(query);
					pst.setInt(1, item.getId());
					rs = pst.executeQuery();
					
					while(rs.next()) {
						IT2259_cart row = new IT2259_cart();
						row.setId(rs.getInt("id"));
						row.setName(rs.getString("name"));
						row.setCategory(rs.getString("category"));
						row.setPrice(rs.getDouble("price")*item.getquantity());
						row.setquantity(item.getquantity());
						products.add(row);
					}
				}
			}
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
		return products;
	}
	
	//cal total
	
	public double getTotalCartPrice(ArrayList<IT2259_cart> cartList) {
		double sum = 0;
		try {
			if(cartList.size()>0) {
				for(IT2259_cart item : cartList) {
					query = "select price from product where id = ?";
					pst = this.con.prepareStatement(query);
					pst.setInt(1, item.getId());
					rs = pst.executeQuery();
					
					while(rs.next()) {
						sum+=rs.getDouble("price")*item.getquantity();
					}
				}
			}
			
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		
		
		return sum;
	}
}
