package org.atharva.servelet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.atharva.dao.UserDao;
import org.atharva.dao.UserDaoImp;


public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UserDao userDao= new UserDaoImp();
    
    
   
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(userDao.isValidUser(username,password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("login.jsp?error=1");
		System.out.print("Error occured");
		}
	}

}
