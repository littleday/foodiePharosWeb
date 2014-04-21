package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myutil.AddResByYelp;
import dao.RestaurantDao;
import service.Service;
import entity.Restaurant;
import entity.Review;
import entity.User;


@WebServlet("/LikeServlet")
public class LikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LikeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		if(user == null)
		{
			request.setAttribute("failMessage", "Please login in before you like it!");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		else
		{
	    String resId = request.getParameter("restaurantId"); 
	    Long restaurantId;
		if(resId == null)
		{
			String bizId = (String)request.getSession().getAttribute("bizId");
			AddResByYelp ay = new AddResByYelp();
			ay.addRestaurantByYelp(bizId);
			RestaurantDao dao = new RestaurantDao();
			Restaurant res = dao.findRestaurantByBusinessId(bizId);
			restaurantId = res.getId();
			
		}
		else{
			restaurantId = Long.parseLong(resId);
		}
	    Service ser = new Service();
	    if(ser.userLikeRestaurant(user.getUsername(), restaurantId))
	    {
	    	if(request.getSession().getAttribute("favors") == null){
				ArrayList<Long> favors = new ArrayList<Long>();
				favors.add(restaurantId);
				request.getSession().setAttribute("favors", favors);
				
			}else{
				ArrayList<Long> favors = (ArrayList<Long>)request.getSession().getAttribute("favors");
				favors.add(restaurantId);
			}
	    	request.getRequestDispatcher("restaurant.jsp?id="+request.getSession().getAttribute("bizId")).forward(request, response);
	    }
		
		}
	
	}

}
