package dao;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.*;


public class LocationDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("foodiePharos");
	
	public void createLocation(Location loc){
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();

		em.persist(loc);

		em.getTransaction().commit();
		em.close();
	}
	
	public Location findLocationByPk(String city, String zipcode){
		if(city == null || zipcode == null){
			return null;
		}
		LocationPk lpk  = new LocationPk(city, zipcode);
		
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();

		Location loc = em.find(Location.class, lpk);

		em.getTransaction().commit();
		em.close();
		
		return loc;
	}
	
}
