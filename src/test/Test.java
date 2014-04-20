package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

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
		String bizId = "polcaris-coffee-boston";
		Restaurant newRes = new Restaurant();
		newRes.setBusinessId(bizId);
		RestaurantTool newTool = new RestaurantTool(newRes);
		RestaurantObject newRestObj = newTool.getRestObj();
		newRes.setCategory(newRestObj.getCategoriesArray());
		newRes.setRating(newRestObj.rating);
		newRes.setRatingNumber(newRestObj.review_count);
		Location local = new Location();
		local.setCountrycode(newRestObj.location.getCountry_code());
		local.setStatecode(newRestObj.location.getState_code());
		LocationPk lp = new LocationPk();
		lp.setCity(newRestObj.location.getCity());
		lp.setZipcode(newRestObj.location.getPostal_code());
		local.setLocationPk(lp);
		Service ser = new Service();
		ser.addRestaurant(local, newRes);	
		// Add restaurant to database and search again
		RestaurantDao dao = new RestaurantDao();
		Restaurant res = dao.findRestaurantByBusinessId(bizId); 
		System.out.println(res.getId());
		System.out.println(res.getBusinessId());
		//System.out.println(res.getCategory());
		for(int i =0; i<res.getCategory().length;i++)
		{
			System.out.println("The category:"+res.getCategory()[i]);
		}
		System.out.println(res.getRating());
		System.out.println(res.getRatingNumber());
		/*for (int i = 0; i <newRes.getCategory().length;i++)
		{
			System.out.println(newRes.getCategory()[i]);
		}*/
		//System.out.println(newRes.getCategory());

		/*
		Location local = new Location();
		local.setCountrycode(newRestObj.location.getCountry_code());
		local.setStatecode(newRestObj.location.getState_code());
		LocationPk lp = new LocationPk();
		lp.setCity(newRestObj.location.getCity());
		lp.setZipcode(newRestObj.location.getPostal_code());
		local.setLocationPk(lp);
		Service ser = new Service();
		ser.addRestaurant(local, newRes);	
		// Add restaurant to database and search again
		RestaurantDao dao = new RestaurantDao();
		Restaurant res = dao.findRestaurantByBusinessId(bizId); 
		System.out.println(res.getId());
		System.out.println(res.getBusinessId());
		System.out.println(res.getCategory());
		System.out.println(res.getRating());
		System.out.println(res.getRatingNumber());
		*/
		
		
	}
}
