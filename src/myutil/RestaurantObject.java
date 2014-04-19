package myutil;

public class RestaurantObject{
	public String[][] categories;
	public String display_phone;
	public String id;
	public String image_url;
	public String is_claimed;
	public String is_closed;
	public LocationObject location;
	public String mobile_url;
	public String name;
	public String phone;
	public double rating;
	public int review_count;
	public String url;
	public String snippet_text;
	
	public String getCategories(){
		return categories[0][0] + ", " + categories[1][0];
	}
	
	public String getAddress(){
		StringBuffer sb = new StringBuffer();
		sb.append(location.display_address[0]);
		
		for(int i = 1; i < location.display_address.length; ++i){
			sb.append(", ");
			sb.append(location.display_address[i]);
		}
		return sb.toString();
	}
}