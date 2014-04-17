package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;
import dao.*;
import entity.*;

@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SigninServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Service serv = new Service();
		Boolean match = serv.userLogin(email, password);
		
		if(match){
			UserDao udao = new UserDao();
			User loginedUser = udao.findUserByPk(email);
			request.getSession().setAttribute("user", loginedUser);
			request.getRequestDispatcher("userIndex.jsp").forward(request, response);
			
		}else{
			request.getRequestDispatcher("loginFail.jsp").forward(request, response);
			
		}
			
		
	}

}
