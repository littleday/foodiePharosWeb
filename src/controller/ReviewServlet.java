package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RestaurantDao;
import entity.Restaurant;
import entity.Review;
import entity.User;
import service.Service;
import myutil.AddResByYelp;


@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReviewServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		Long restaurantId = (Long)request.getSession().getAttribute("restaurantId");
		
		if(restaurantId == 0)
		{
			String bizId = (String)request.getSession().getAttribute("bizId");
			AddResByYelp ay = new AddResByYelp();
			ay.addRestaurantByYelp(bizId);
			RestaurantDao dao = new RestaurantDao();
			Restaurant res = dao.findRestaurantByBusinessId(bizId);
			restaurantId = res.getId();
			
		}
		int star = Integer.parseInt(request.getParameter("newRating"));
		String content = request.getParameter("reviewContent");
		
		// Add Review
		Service serv = new Service();
        
		// Register failed
		if(user == null){
			request.setAttribute("failMessage", "Please login in before you add a review!");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}else{
			
			Review revw = serv.addReview(user.getUsername(), restaurantId, star, content);
			if(revw != null)
			{
				//If add review successfully, return to the restaurant profile page
				
				if(request.getSession().getAttribute("reviews") == null){
					ArrayList<Review> reviews = new ArrayList<Review>();
					reviews.add(revw);
					request.getSession().setAttribute("reviews", reviews);
					
				}else{
					ArrayList<Review> reviews = (ArrayList<Review>)request.getSession().getAttribute("reviews");
					reviews.add(revw);
					request.getSession().setAttribute("reviews", reviews);
				}
				
				request.getRequestDispatcher("restaurant.jsp?id="+request.getSession().getAttribute("bizId")).forward(request, response);
			}else
			{
				request.setAttribute("failMessage", "Something wrong happens, please try it later.");
				request.getRequestDispatcher("fail.jsp").forward(request, response);
			}
		}		
	
	}

}
