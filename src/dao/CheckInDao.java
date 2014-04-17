package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.*;

public class CheckInDao {
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");

	public Boolean createCheckIn(CheckIn checkin) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(checkin);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}

	public CheckIn findLastCheckIn(String username, long restId) {
		EntityManager em = factory.createEntityManager();
		CheckIn checkin = null;
		try {
			em.getTransaction().begin();

			checkin = (CheckIn) em
					.createQuery(
							"select c from CheckIn c "
									+ "where c.user.username = :username and "
									+ "c.restaurant.id = :restid order by c.checkInTime desc")
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
		
		return checkin;
	}
}
