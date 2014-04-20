package myutil;

import com.google.gson.Gson;

public class SearchByYelp {
	
	private SearchResult sr;
	
	public SearchResult getRestaurantsByLocation(String location, String sort) {
			
			// call rest api
			Gson gson = new Gson();
			Yelp yelp = new Yelp();
			sr = gson.fromJson(yelp.getRestaurantsByLocation(location, sort), SearchResult.class);
			return sr;		
		}
	
	public static void main(String[] args) {
		
		SearchByYelp search = new SearchByYelp();
		SearchResult sr = new SearchResult();
		
		sr = search.getRestaurantsByLocation("Boston", "2");
		
		System.out.println(sr.getTotal());
		System.out.println(sr.getBusinessList().length);
	}
	
}
