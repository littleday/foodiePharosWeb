package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.Service;


@WebServlet("/SettingServlet")
public class SettingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SettingServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		
		String email = user.getEmail();
		String photo = request.getParameter("photo_url");
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String gender = request.getParameter("sex");
		gender = gender.equals("1") ? "male" : "female";
		
		String current_pwd = request.getParameter("current_pwd");
		String new_pwd = request.getParameter("new_pwd");
		String repeat_pwd = request.getParameter("repeat_pwd");
		
		if(!new_pwd.equals(repeat_pwd)){
			request.setAttribute("failMessage", "New password and repeat password are not the same.");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
			return;
		}
		
		
		if(!user.getPassword().equals(current_pwd)){
			request.setAttribute("failMessage", "The current password you entered is incorrect.");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
			return;
			
		}else{
			Service serv = new Service();
			User updatedUser = serv.updateUserProfile(email, new_pwd, email, photo, 
					firstName, lastName, gender);
			
			if(updatedUser == null){
				request.setAttribute("failMessage", "We are sorry an error occured when updating your profile.");
				request.getRequestDispatcher("fail.jsp").forward(request, response);
				return;
			}else{
				// update success
				// use the fail.jsp wisely
				// update user object in memory

				// update the user object cache in memory
				request.getSession().setAttribute("user", updatedUser);
				
				request.setAttribute("failMessage", "Your update is successful!");
				request.getRequestDispatcher("fail.jsp").forward(request, response);
				return;
			}
		}
		
		
	
	}

}
