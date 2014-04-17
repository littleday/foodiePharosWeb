package dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.*;

public class UserDao {

	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");

	public Boolean createUser(User user) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}
	
	public User findUserByPk(String username){
		User user = null;
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		user = em.find(User.class, username);
		em.getTransaction().commit();
		em.close();
		return user;
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findUserRegisteredBetween(Date startDate, Date endDate){
		EntityManager em = factory.createEntityManager();
		List<User> list=null;
		
		em.getTransaction().begin();
		
		
		Query query = em.createQuery("select u from User u where "
					+ "u.registerDate > :start and u.registerDate < :end")
					.setParameter("start", startDate)
					.setParameter("end", endDate);
		
		list = query.getResultList();			
		
		em.getTransaction().commit();
		em.close();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findUserByUsername(String name){
		EntityManager em = factory.createEntityManager();
		List<User> list=null;
		
		em.getTransaction().begin();
		
		Query query = em.createQuery("select u from User u where u.username like :username")
					.setParameter("username", "%"+name+"%");
		
		list = query.getResultList();			
		
		em.getTransaction().commit();
		em.close();
		return list;
	}
	
	
	public Boolean updateUser(User user){
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.merge(user);
			//em.flush();
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}

}
