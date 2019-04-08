package Book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		public BookController() {}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			BookDao bdao = new BookDaoImpl();
			String title = request.getParameter("title");
			String author = request.getParameter("author");
			String isbn = request.getParameter("isbn");
			String submitType = request.getParameter("submit");
			Book b = bdao.validateBook(title,author,isbn,0);
			if(submitType.equals(isbn))
					{
					
					}
		
		}
	}

