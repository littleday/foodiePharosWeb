package myutil;

import service.Service;
import entity.Location;
import entity.LocationPk;
import entity.Restaurant;

public class AddResByYelp {
	
	public void addRestaurantByYelp(String businessId)
	{
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
	
	}

}
