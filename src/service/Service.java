package service;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.*;
import dao.*;
import myutil.DateUtil;;

public class Service {
	
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");
	
	//Passed test, 3/24/2014
	public User userRegister(String username, String password, String email,
			String photo, String firstName, String lastName, String gender){
		User newUser = new User(username, password, email, new Date(), photo, firstName, lastName, gender);
		UserDao uDao = new UserDao();
		
		if( uDao.createUser(newUser) ){
			//Successfully persisted
			return newUser;
		}else{
			return null;
		}
	}
	
	//Passed test, 3/24/2014
	public Boolean userLogin(String username, String password){
		User user = new UserDao().findUserByPk(username);
		
		if(user == null || !user.getPassword().equals(password)){
			return false;
		}else{
			return true;
		}
	}
	
	//Passed test, 3/24/2014
	public Boolean addUserCheckIn(String username, long restaurantId){
		Date currentDate = new Date();
		CheckIn lastCheckIn = new CheckInDao().findLastCheckIn(username, restaurantId);
		
		if(lastCheckIn == null || DateUtil.dateAfter(currentDate, lastCheckIn.getCheckInTime())){
			CheckIn newCheckin = new CheckIn(new Date());
			User user = (lastCheckIn == null) ? new UserDao().findUserByPk(username) 
					: lastCheckIn.getUser();
			Restaurant rest = (lastCheckIn == null) ? new RestaurantDao().findRestaurantByPk(restaurantId)
					: lastCheckIn.getRestaurant();
			
			
			newCheckin.setUser(user);
			newCheckin.setRestaurant(rest);
			
			new CheckInDao().createCheckIn(newCheckin);
			return true;
			
		}else{
			return false;
		}
	}
	
	//Passed test, 3/24/2014
	public User getUserProfile(String username){
		return new UserDao().findUserByPk(username);
	}
	
	
	//Passed test, 3/24/2014
	public Administrator addAdmin(String username, String password, String email){
		Administrator newAdmin = new Administrator(username, password, email, new Date());
		AdministratorDao dao = new AdministratorDao();
		
		if(dao.createAdministrator(newAdmin)){
			return newAdmin;
		}else{
			return null;
		}
	}
	
	//Passed test, 3/24/2014
	public Administrator getAdminProfile(String username){
		return new AdministratorDao().findAdministratorByPk(username);
	}
	
	//Passed test, 3/24/2014
	public Boolean adminLogin(String username, String password){
		Administrator admin = getAdminProfile(username);
		
		if(admin == null || !admin.getPassword().equals(password)){
			return false;
		}else{
			return true;
		}
	}
	
	//Passed test, 3/24/2014
	public User updateUserProfile(String username, String password, String email, 
			String photo, String firstName, String lastName, String gender){
		UserDao dao = new UserDao();
		User user = dao.findUserByPk(username);
		
		user.setPassword(password);
		user.setEmail(email);
		user.setPhoto(photo);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setGender(gender);
		
		return dao.updateUser(user);
		
	}
	
	//Passed test, 3/24/2014
	public Boolean updateAdminProfile(String username, String password, String email){
		AdministratorDao dao = new AdministratorDao();
		Administrator admin = dao.findAdministratorByPk(username);
		
		if(admin == null){
			return false;
		}else{
			admin.setPassword(password);
			admin.setEmail(email);
			
			return dao.updateAdministrator(admin);
		}
	}
	
	//passed test, 3/24/2014
	public Boolean addUserSearchHistory(String username, String[] keywords, String location ){
		//version one
//		UserDao udao = new UserDao();
//		SearchHistory sh = new SearchHistory(new Date(), keywords, location);
//		User user = udao.findUserByPk(username);
//		
//		if(user == null){
//			return false;
//		}else{
//			user.addSearchHistory(sh);
//			return udao.updateUser(user);
//		}
		
		//version two
		UserDao udao = new UserDao();
		SearchHistory sh = new SearchHistory(new Date(), keywords, location);
		User user = udao.findUserByPk(username);
		
		if(user == null){
			return false;
		}else{
			user.addSearchHistory(sh);
			sh.setUser(user);
			return new SearchHistoryDao().createSearchHistory(sh);
		}
	}
	
	//passed test, 3/24/2014
	public Review addReview(String username, long restaurantId, int star, String review){
		
		EntityManager em = factory.createEntityManager();
		
		Date currentDate = new Date();
		Review lastReview = new ReviewDao().findLastReview(username, restaurantId);
		
		// User never posted a review or didn't post review in the last hour
		// In this case user is permitted to post a new review
		if(lastReview == null || DateUtil.oneHourAfter(currentDate, lastReview.getCreateDate())){
			em.getTransaction().begin();
			
			// Persist new review
			Review newReview = new Review(star, review, new Date(), new Date());
			User user = (lastReview == null)? new UserDao().findUserByPk(username) : lastReview.getUser();
			Restaurant rest = (lastReview == null)? new 
					RestaurantDao().findRestaurantByPk(restaurantId) : lastReview.getRestaurant();
			
			newReview.setUser(user);
			newReview.setRestaurant(rest);
			new ReviewDao().createReview(newReview);
			
			// Update restaurant(rating, totalRatingNumber)
			rest.setRating((rest.getRating() * rest.getRatingNumber() + newReview.getRating())/
					(rest.getRatingNumber()+1));
			rest.setRatingNumber(rest.getRatingNumber()+1);
			new RestaurantDao().updateRestaurant(rest);
			
			em.getTransaction().commit();
			em.close();
			return newReview;
			
		}else{
			return null;
		}
	}
	
//	public Boolean deleteReview(long reviewId){
//		
//	}
	
	
	//passed test, 3/24/2014
	public Boolean userLikeRestaurant(String username, long restaurantId){
		// return true if user already liked this restaurant
		User user = new UserDao().findUserByPk(username);
		Restaurant rest = new RestaurantDao().findRestaurantByPk(restaurantId);
		
		if(user == null || rest == null){
			return false;
		}
		
		for(Restaurant r : user.getFavoriteRestaurants()){
			if(r.getId() == restaurantId){
				return true;
			}
		}
		
		user.addFavoriteRestaurant(rest);
		rest.addFavoredByUser(user);
		new UserDao().updateUser(user);
		new RestaurantDao().updateRestaurant(rest);
		return true;
	}

	//passed test, 3/24/2014
	public Boolean userDislikeRestaurant(String username, long restaurantId){
		// Only return false when user doesn't exists
		
		User user = new UserDao().findUserByPk(username);
		if(user == null){
			return false;
		}
		
		for(Restaurant r : user.getFavoriteRestaurants()){
			if(r.getId() == restaurantId){
				user.removeFavoriteRestaurant(r);
				break;
			}
		}
		new UserDao().updateUser(user);
		return true;
	}
	
	//passed test, 3/25/2014
	public Boolean addUserViewHistory(String username, long restaurantId, 
			Date startTime, Date endTime){
		if(startTime.after(endTime)){
			return false;
		}
		
		User user = new UserDao().findUserByPk(username);
		Restaurant rest = new RestaurantDao().findRestaurantByPk(restaurantId);
		if(user == null || rest == null){
			return false;
		}
		
		ViewHistory vh = new ViewHistory(startTime, endTime);
		vh.setRestaurant(rest);
		vh.setUser(user);
		
		return new ViewHistoryDao().createViewHistory(vh);
	}
	
	
	public List<RecommendList> getRecommendationList(String username){
		/*
		 * Need to implement
		 */
		
		return null;
	}
	

	//passed test, 3/25/2014
	public List<User> searchUserByUsername(String keyword){
		return new UserDao().findUserByUsername(keyword);
	}
	
	//passed test, 3/25/2014
	public List<User> searchUserByDateRange(Date startDate, Date endDate){
		return new UserDao().findUserRegisteredBetween(startDate, endDate);
	}
	
	public Boolean addRestaurant(Location loc, Restaurant rest){
		LocationDao dao = new LocationDao();
		Location persistedLoc = dao.findLocationByPk(loc.getLocationPk().getCity(), loc.getLocationPk().getZipcode());
		if(persistedLoc == null){
			dao.createLocation(loc);
			persistedLoc = loc;
		}
		
		RestaurantDao rdao = new RestaurantDao();
		Restaurant persistedRest = rdao.findRestaurantByBusinessId(rest.getBusinessId());
		if(persistedRest == null){
			rest.setLocation(persistedLoc);
			rdao.createRestaurant(rest);
		}
		
		return true;
	}
 

}
