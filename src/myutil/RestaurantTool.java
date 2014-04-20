package myutil;

import entity.Restaurant;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;


public class RestaurantTool {
	
	Restaurant rest;
	RestaurantObject restObj;
	 
	
	public RestaurantTool(Restaurant rest){
		this.rest = rest;
		
		// call rest api
		Gson gson = new Gson();
		Yelp yelp = new Yelp();
		RestaurantObject restObj = gson.fromJson(yelp.getBusiness(rest.getBusinessId()), RestaurantObject.class);
		this.restObj = restObj;
	}

	public RestaurantObject getRestObj() {
		return restObj;
	}
	
	
/*	public static void main(String[] args) {
		Restaurant rest = new Restaurant();
		rest.setBusinessId("RuCvHXtZKfkujxIWYpu1Gg");
		
		RestaurantTool tool = new RestaurantTool(rest);
		System.out.println( tool.getRestObj().id );
		System.out.println( tool.getRestObj().getCategories() );
//		System.out.println( tool.getRestObj().getLocation()  );
	}*/

}



