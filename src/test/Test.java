package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import dao.AdministratorDao;
import dao.LocationDao;
import dao.RecommendListDao;
import dao.RestaurantDao;
import dao.ReviewDao;
import dao.ViewHistoryDao;
import service.Service;
import myutil.*;
import entity.*;

public class Test {
	
	public static void main(String[] args) throws Exception{

	/*	Location loc = new Location("city1", "zip1", "MA", "USA");
		
		Restaurant rest = new Restaurant(null, 3, 100, "businessid");
		
		Service service = new Service();
		User user = service.getUserProfile("liyang920407@hotmail.com");
		System.out.println(user.getFavoriteRestaurants().size());
		*/
		RestaurantDao rd = new RestaurantDao();
		Restaurant rs = new Restaurant();
		rs = rd.findRestaurantByBusinessId("RuCvHXtZKfkujxIWYpu1Gg");
		System.out.println(rs.getId());
		System.out.println(rs.getRating());
		
		
	}
}
