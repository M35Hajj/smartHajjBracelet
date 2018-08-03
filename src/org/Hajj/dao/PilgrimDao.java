package org.Hajj.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.Hajj.bean.Pilgrim;
import org.login.bean.userTable;

public class PilgrimDao {
	public static Connection getConn() {

		Connection conn = null;
		String connectionString = "jdbc:sqlserver://DESKTOP-R020LL0;databaseName=HajjDB;integratedSecurity=true";

		try {
			conn = DriverManager.getConnection(connectionString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
	
	public static List<Pilgrim> getAll(){
		List<Pilgrim> list = new ArrayList<Pilgrim>();
		try {
			Connection conn = getConn();
			PreparedStatement ps = conn.prepareStatement("select * from [HajjDB].[dbo].[Pilgrim]");
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				Pilgrim pilgrim = new Pilgrim();
				pilgrim.setId(rs.getInt(1));
				pilgrim.setName(rs.getString(2));
				list.add(pilgrim);
			}
			conn.close();
		}
		catch(Exception e ) {
			System.out.println(e);
		}
		return list;
	}
	public static void insert() {
		try {
			int id =10;
			String status="1";
			Connection conn = getConn();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO [dbo].[LostPilgrim] ([pilgrimId],[status]) VALUES(?,?)");
			ps.setInt(1,id);
			ps.setString(2,status);
			ps.executeUpdate();
			conn.close();
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}

}
