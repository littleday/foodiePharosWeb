package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import entity.Review;

public class ReviewDao {
	
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");
	
	public Boolean createReview(Review review) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(review);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}
	
	
	public Review findLastReview(String username, long restId){
		EntityManager em = factory.createEntityManager();
		Review review = null;
		try {
			em.getTransaction().begin();

			review = (Review) em
					.createQuery(
							"select r from Review r "
									+ "where r.user.username = :username and "
									+ "r.restaurant.id = :restid order by r.createDate desc")
					.setParameter("username", username)
					.setParameter("restid", restId)
					.setMaxResults(1)
					.getSingleResult();

			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			em.close();
		}
		
		return review;
	}
	
	

	public Boolean deleteReview(long id) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			
			Review review = em.find(Review.class, id);
			em.remove(review);
			
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
