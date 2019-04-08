package Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	public Book validateBook(String title, String author, String isbn, double price) {
		Book b = new Book(title,author,isbn,price);
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("select * from books where title=? and author=? and ISBN=?");
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getISBN());

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				b.setTitle(rs.getString(1));
				b.setAuthor(rs.getString(2));
				b.setISBN(rs.getString(3));
			}
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return b;
	}

}

			
		

