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
		StringBuffer sb = new StringBuffer();
		sb.append(categories[0][0]);
		
		for(int i = 1; i < categories.length; ++i){
			sb.append(", " + categories[i][0]);
		}
		return sb.toString();
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
	
	public String getName() {
		return name;
	}
	
	public String getId() {
		return id;
	}

	public String[] getCategoriesArray(){
		String[] categoriesArray = new String[categories.length];
		for(int m =0; m<categories.length; m++){
			categoriesArray[m] = categories[m][0];
			//System.out.println(categoriesArray[m]);
		}
		return categoriesArray;
	}
}