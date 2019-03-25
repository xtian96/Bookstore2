package Book;
import java.sql.Connection;
import java.sql.PreparedStatement;


import db.DbManager;



public class BookDaoImpl implements BookDao{
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	@Override
	public int register(Book b)
	{
	int status = 0;
	try {
		
		conn = db.getConnection();
		ps = conn.prepareStatement("insert into books values(?,?,?)");
		
		ps.setString(1, b.getTitle());
		ps.setString(2, b.getAuthor());
		ps.setString(3, b.getISBN());
			
		//	ps.setDouble(4, b.getPrice());
		
		status = ps.executeUpdate();
	
				// b.setPrice(rs.getDouble(4));

		 
			
			
		
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

}

			
		

