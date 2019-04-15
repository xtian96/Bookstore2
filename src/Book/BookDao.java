
package Book;




public interface BookDao {
	public int register(Book b);
	
	/*
	 * Retrieve the book object from the database
	 */
	public Book validateBook(String title, String author, String isbn, double price);
	
	
	
}
