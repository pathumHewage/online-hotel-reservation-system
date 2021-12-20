package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class CustomerDBUtil {
	
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
		
	public static List<Customer> validate(String userName, String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		
	
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone= rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				Customer c=new Customer(id,name,email,phone,userU,passU);
				
				cus.add(c);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	public static boolean insertroom(String roomname,String type,String roomnumber,String pets, String serve,String menu,String gymFacility,String Pswimmingpol,String sorrounding, String recommedation,String discountSeason,String guide,String vehicleFacility) {
		
		boolean isSuccess = false;
		
		
		
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into room values (0,'"+roomname+"','"+type+"','"+roomnumber+"','"+pets+"','"+serve+"','"+menu +"','"+gymFacility+"','"+Pswimmingpol+"','"+sorrounding+"','"+recommedation+"','"+discountSeason+"','"+guide+"','"+vehicleFacility+"')";
    		int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	
	public static boolean updateroom(String roomid,String roomname,String type,String roomnumber,String pets, String serve,String menu,String gymFacility,String Pswimmingpol,String sorrounding, String recommedation,String discountSeason,String guide,String vehicleFacility) {
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update room set roomname='"+roomname+"',type='"+type+"',roomnumber='"+roomnumber+"',pets='"+pets+"',serve='"+serve+"',menu='"+menu+"',gymFacility='"+gymFacility+"',Pswimmingpool='"+Pswimmingpol+"',sorrounding='"+sorrounding+"',recommedation='"+recommedation+"',discountSeason='"+discountSeason+"',guide='"+guide+"',vehicleFacility='"+vehicleFacility+"'"
    				+ "where roomid='"+roomid+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs >0){
    			
    			isSuccess = true;
    			
    		}else {
    			
    			isSuccess = false;
    		}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<room> getroomDetails(String roomname){
		
		
		
		ArrayList<room>rd = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from room where roomname='"+roomname+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			
    			int roomid = rs.getInt(1);
    			String Roomname = rs.getString(2);
    			String type = rs.getString(3);
    			String roomnumber = rs.getString(4);
    			String pets = rs.getString(5);
    			String serve = rs.getString(6);
    			String menu = rs.getString(7);
    			String gymFacility = rs.getString(8);
    			String Pswimmingpol = rs.getString(9);
    			String sorrounding = rs.getString(10);
    			String recommedation = rs.getString(11);
    			String discountSeason = rs.getString(12);
    			String guide = rs.getString(13);
    			String vehicleFacility = rs.getString(14);
    			
    			
    			room c = new room(roomid,Roomname,type,roomnumber,pets,serve,menu,gymFacility,Pswimmingpol,sorrounding,recommedation,discountSeason,guide,vehicleFacility);
    			rd.add(c);
    		}
    		
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return rd;
	}
	
	public static boolean deleteCustomer(String id) {
		
		int connvId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="delete from room where roomid='"+connvId+"' ";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
				
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
	
}
