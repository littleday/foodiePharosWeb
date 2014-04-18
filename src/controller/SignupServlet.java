package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.*;
import service.Service;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SignupServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().write("Signup servlet being called in get() method");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("signup_email");
		String password = request.getParameter("signup_pwd");
		
		// Use email as username
		Service serv = new Service();
		User user = serv.userRegister(email, password, email, "", firstName, lastName, null);
		
		// Register failed
		if(user == null){
			//response.getWriter().write("<script>alert(\"Register failed!\");</script>");
			request.getRequestDispatcher("registerFail.jsp").forward(request, response);
		}else{
		
			//after register, jump back to home page
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
