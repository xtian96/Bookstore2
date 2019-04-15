package domain.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public AdminController() {}
    
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	AdminDao adminDao = new AdminDaoImpl();
		
		String username = request.getParameter("user");
		String pass = request.getParameter("pass");
		String submitType = request.getParameter("submit");
		AdminLogin login = new AdminLogin(username, pass);
		Admin a = adminDao.validateAdmin(login);

		
		if(submitType.equals("login") && a!=null && a.getName()!=null){
			request.setAttribute("message", "Hello "+a.getName() + ",");
			request.getRequestDispatcher("adminWelcome.jsp").forward(request, response);
		}	
		
		else{
			request.setAttribute("message", "   Data not found! Please try again.");
			request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
		}

	}

}