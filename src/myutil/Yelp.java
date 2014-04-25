package myutil;
/*
 Example code based on code from Nicholas Smith at http://imnes.blogspot.com/2011/01/how-to-use-yelp-v2-from-java-including.html
 For a more complete example (how to integrate with GSON, etc) see the blog post above.
 */

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.scribe.builder.ServiceBuilder;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Response;
import org.scribe.model.Token;
import org.scribe.model.Verb;
import org.scribe.oauth.OAuthService;

/**
 * Example for accessing the Yelp API.
 */
public class Yelp {

	OAuthService service;
	Token accessToken;

	/**
	 * Setup the Yelp API OAuth credentials.
	 * 
	 * OAuth credentials are available from the developer site, under Manage API
	 * access (version 2 API).
	 * 
	 * @param consumerKey
	 *            Consumer key
	 * @param consumerSecret
	 *            Consumer secret
	 * @param token
	 *            Token
	 * @param tokenSecret
	 *            Token secret
	 */
	public Yelp() {
		String consumerKey = "eUqcTUF2LgdZGB-ZjHr85g";
		String consumerSecret = "HwFzz0zvumYvhlq-vgcu-vDLf8w";
		String token = "d9O9FMYi1UDeNhTX1BP87UP4Q82xEAKE";
		String tokenSecret = "c0KdpfZNXDcYu3lhhG6hMhq2hro";
		
		
		this.service = new ServiceBuilder().provider(YelpApi2.class)
				.apiKey(consumerKey).apiSecret(consumerSecret).build();
		this.accessToken = new Token(token, tokenSecret);
	}

	/**
	 * Search with term and location.
	 * 
	 * @param term
	 *            Search term
	 * @param latitude
	 *            Latitude
	 * @param longitude
	 *            Longitude
	 * @return JSON string response
	 */
	public String search(String term, double latitude, double longitude) {
		OAuthRequest request = new OAuthRequest(Verb.GET,
				"http://api.yelp.com/v2/search");
		request.addQuerystringParameter("term", term);
		request.addQuerystringParameter("ll", latitude + "," + longitude);
		request.addQuerystringParameter("category_filter", "food");
		this.service.signRequest(this.accessToken, request);
		Response response = request.send();
		return response.getBody();
	}
	
	public String searchByLocation(String term, String location) {
		OAuthRequest request = new OAuthRequest(Verb.GET,
				"http://api.yelp.com/v2/search");
		request.addQuerystringParameter("term", term);
		request.addQuerystringParameter("location", location);
		request.addQuerystringParameter("category_filter", "food");
		this.service.signRequest(this.accessToken, request);
		Response response = request.send();
		return response.getBody();
	}
	
	public String getRestaurantsByLocation(String location, String sort) {
		OAuthRequest request = new OAuthRequest(Verb.GET,
				"http://api.yelp.com/v2/search");
		request.addQuerystringParameter("sort", sort); //Sort mode: 0=Best matched (default), 1=Distance, 2=Highest Rated.
		request.addQuerystringParameter("location", location);
		request.addQuerystringParameter("category_filter", "food");
		this.service.signRequest(this.accessToken, request);
		Response response = request.send();
		return response.getBody();
	}
	

	public String getBusiness(String id) {
		OAuthRequest request = new OAuthRequest(Verb.GET,
				"http://api.yelp.com/v2/business/"+id);
		this.service.signRequest(this.accessToken, request);
		Response response = request.send();
		return response.getBody();
	}

	// CLI
	public static void main(String[] args) {
		// Update tokens here from Yelp developers site, Manage API access.
		String consumerKey = "eUqcTUF2LgdZGB-ZjHr85g";
		String consumerSecret = "HwFzz0zvumYvhlq-vgcu-vDLf8w";
		String token = "d9O9FMYi1UDeNhTX1BP87UP4Q82xEAKE";
		String tokenSecret = "c0KdpfZNXDcYu3lhhG6hMhq2hro";

		Yelp yelp = new Yelp();
		String response = yelp.search("burritos", 30.361471, -87.164326);
		//String response2 = yelp.getBusiness("taco-bell-gulf-breeze");
		String response2 = yelp.getBusiness("light-my-fire-los-angeles");
		String response3 = yelp.searchByLocation("burritos", " Franccisco");
		String response4 = yelp.getRestaurantsByLocation("Boston", "2");
		
		System.out.println(response2);
	}
}
