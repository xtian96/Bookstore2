package domain.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DbManager;



public class AdminDaoImpl implements AdminDao {

	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	
	@Override
	public int register(Admin a) {
		int status = 0;
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("insert into admin values(?,?,?)");
			ps.setString(1, a.getUsername());
			ps.setString(2, a.getPassword());
			ps.setString(3, a.getName());
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
	
	

	@Override
	public Admin validateAdmin(AdminLogin login) {
		Admin a = new Admin();
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from admin where userId=? and password=?");
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				a.setUsername(rs.getString(1));
				a.setPassword(rs.getString(2));
				a.setName(rs.getString(3));
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return a;
	}

}