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
}
