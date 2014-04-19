package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SettingServlet")
public class SettingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SettingServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String photo = request.getParameter("photo_url");
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("first_name");
		String email = request.getParameter("signup_email");
		String gender = request.getParameter("sex");
		gender = gender.equals("1") ? "male" : "female";
		
		String current_pwd = request.getParameter("current_pwd");
		String new_pwd = request.getParameter("new_pwd");
		String repeat_pwd = request.getParameter("repeat_pwd");
		
		if(!new_pwd.equals(repeat_pwd)){
			
		}
	
	}

}
