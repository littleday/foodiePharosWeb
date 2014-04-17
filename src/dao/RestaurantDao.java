package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entity.*;

public class RestaurantDao {
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");

	public Boolean createRestaurant(Restaurant rest) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(rest);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}

	public Restaurant findRestaurantByPk(long id) {
		Restaurant rest = null;
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		rest = em.find(Restaurant.class, id);
		em.getTransaction().commit();
		em.close();
		return rest;
	}

	public Restaurant findRestaurantByBusinessId(String businessId) {
		Restaurant rest = null;
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();

		Query query = em.createQuery(
				"select r from Restaurant r where r.businessId = :busId")
				.setParameter("busId", businessId);

		try {
			rest = (Restaurant) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
		}

		em.getTransaction().commit();
		em.close();
		return rest;
	}

	public Boolean updateRestaurant(Restaurant rest) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.merge(rest);
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
