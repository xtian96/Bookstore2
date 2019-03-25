package Book;
import java.sql.Connection;
import java.sql.PreparedStatement;

import db.DbManager;


public class BookDaoImpl{
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	public int register(Book b)
	{
	int status = 0;
	try {
		conn = db.getConnection();
	
		if(conn != null) {
			ps =conn.prepareStatement("insert into customer values(?,?,?,?)");
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getISBN());
			ps.setDouble(4, b.getPrice());
			status = ps.executeUpdate();
			conn.close();
		}
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
}

			
		

