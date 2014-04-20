package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.Service;


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
		
		int star = Integer.parseInt(request.getParameter("newRating"));
		String content = request.getParameter("reviewContent");
		
		// Add Review
		Service serv = new Service();
        
		// Register failed
		if(user == null){
			request.setAttribute("failMessage", "Please login in before you add a review!");
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}else{
			if(serv.addReview(user.getUsername(), restaurantId, star, content) == true)
			{
				//If add review successfully, return to the restaurant profile page
				request.getRequestDispatcher("restaurant.jsp?id="+request.getSession().getAttribute("bizId")).forward(request, response);
			}else
			{
				request.setAttribute("failMessage", "Something wrong happens, please try it later.");
				request.getRequestDispatcher("fail.jsp").forward(request, response);
			}
		}		
	
	}

}
