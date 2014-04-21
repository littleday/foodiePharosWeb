package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myutil.AddResByYelp;
import service.Service;
import dao.RestaurantDao;
import entity.Restaurant;
import entity.User;


@WebServlet("/DislikeServlet")
public class DislikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DislikeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		if(user == null)
		{
			request.setAttribute("failMessage", "Please login in before you cancel it!");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		else
		{
	    Long restaurantId = Long.parseLong(request.getParameter("dislike")); 
	    Service ser = new Service();
	    if(ser.userDislikeRestaurant(user.getUsername(), restaurantId))
	    {
	    	ArrayList<Long> favors = (ArrayList<Long>)request.getSession().getAttribute("favors");
	    	favors.remove(restaurantId);
	    	request.getSession().removeAttribute("favors");
	    	request.getSession().setAttribute("favors", favors);
		}
	    	request.getRequestDispatcher("myloves.jsp").forward(request, response);
	    }
		
		}
	

}
