package myutil;

import java.util.Iterator;
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
	
	public SearchResult searchByLocation(String term, String location) {
		
		// call rest api
		Gson gson = new Gson();
		Yelp yelp = new Yelp();
		sr = gson.fromJson(yelp.searchByLocation(term, location), SearchResult.class);
		return sr;
	}
	
	public static void main(String[] args) {
		
		SearchByYelp search = new SearchByYelp();
		SearchResult sr = new SearchResult();
		
		//sr = search.getRestaurantsByLocation("Boston", "2");
		sr = search.searchByLocation("seafood", "Boston");
		
		System.out.println(sr.getTotal());
		System.out.println("(" + sr.getRegion().getSpan().getLatitude_delta() + "," + sr.getRegion().getSpan().getLongitude_delta() + ")");
		System.out.println("(" + sr.getRegion().getCenter().getLatitude() + "," + sr.getRegion().getCenter().getLongitude() + ")");
		Iterator<Business> it = sr.getBusinessList().iterator();
		Business busi = new Business();
		while(it.hasNext()) {
			busi = it.next();
			System.out.println(busi.getName());
		}

	}
	
}
