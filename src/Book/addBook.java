package Book;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Book b = new Book() ;
		String title = request.getParameter("bookname");
		String author = request.getParameter("author");
		String isbn = request.getParameter("ISBN");
		double price = Double.parseDouble(request.getParameter("price"));
		b.setTitle(title);
		b.setAuthor(author);
		b.setISBN(isbn);
		b.setPrice(price);
		
	}
}
