package test;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import entity.Location;
import entity.LocationPk;
import entity.Restaurant;
import service.Service;

/**
 * Just parse for Yelp Boston
 * @author Yuyu
 *
 */
public class YelpGeneration {
	public static void main(String[] args) throws IOException{
		String iniURL = "http://www.yelp.com/search?cflt=restaurants&find_loc=Boston%2C+MA%2C+USA"; // initial page
		/* http://www.yelp.com/search?cflt=restaurants&find_loc=Boston%2C+MA%2C+USA#find_desc ->second page 
		 * http://www.yelp.com/search?cflt=restaurants&find_loc=Boston%2C+MA%2C+USA&start=10
		 * */
		String baseURl = "http://www.yelp.com";
		String curURL = null;
		Document doc = null;
		/* The deep of pages: n */
		for(int n = 0; n< 20; n++){
			if( n != 0)
			{
				curURL = iniURL + "&start="+ n*10;
				System.out.println("Current page is:"+(n+1));
			}
			else
			{
				curURL = iniURL;
			}
			try
			{
				ArrayList<String> links = new ArrayList<String>();
				System.out.println(curURL);
				doc = Jsoup.connect(curURL).timeout(30*1000).get();
				Elements bizs = doc.select("a[class=biz-name]");
				//System.out.println(bizs.size());
				if(bizs != null)
					{
						for (Element e : bizs)
							{
								String link = e.attr("href").toString();
								if (link.startsWith("/biz/"))
									{
										//System.out.println(link);
										links.add(link);
									}
							}
					}
				for(int i =0; i<links.size();i++){
					String fullUrl = baseURl + links.get(i).toString();
					Document subDoc = Jsoup.connect(fullUrl).timeout(30*1000).get();
					ArrayList<String> categories  = new ArrayList<String>(); // The Categories
					double rating;
					int ratingnumber;
					String businessId;
					String countryCode= "USA";
					String stateCode= "MA";
					String zipCode;
					String city ="Boston";
	
					Elements cates = subDoc.select("span[class=category-str-list]").get(0).getElementsByTag("a");	
					for(int m = 0; m < cates.size(); m++)
					{
						categories.add(cates.get(m).text());
					}
					
					Element rate = subDoc.select("meta[itemprop=ratingValue]").get(0);
					rating = Double.parseDouble(rate.attr("content").toString());
					Element ratecount = subDoc.select("span[itemprop=reviewCount]").get(0);
					ratingnumber = Integer.parseInt(ratecount.text());
					Element bizId = subDoc.select("meta[name=yelp-biz-id]").get(0);
					businessId = bizId.attr("content").toString();
					Element post = subDoc.select("span[itemprop=postalCode]").get(0);
					zipCode = post.text();
					for(int m=0;m<categories.size();m++){
						System.out.println(categories.get(m));
					}
					System.out.println(rating);
					System.out.println(ratingnumber);
					System.out.println(businessId);
					System.out.println(zipCode);
					System.out.println("------------------------");
					//Use service to add restaurants to database 
					Service service = new Service();
					Restaurant rest = new Restaurant();
					rest.setBusinessId(businessId);
					String[] category = new String[categories.size()];
					for (int m = 0; m<categories.size(); m++)
					{
						category[m] = categories.get(m);
					}
					rest.setCategory(category);
					rest.setRating(rating);
					rest.setRatingNumber(ratingnumber);
					Location local = new Location();
					local.setCountrycode(countryCode);
					local.setStatecode(stateCode);
					LocationPk lp = new LocationPk();
					lp.setCity(city);
					lp.setZipcode(zipCode);
					local.setLocationPk(lp);
					//rest.setLocation(local);
					if(service.addRestaurant(local, rest)){
						System.out.println("Add success!");
					}
					else
					{
						i--;
					}
				}
			}
			catch (Exception e){
				System.out.println("Timeout");
				n--;
			}
	 
		}
				
		
	}


}
