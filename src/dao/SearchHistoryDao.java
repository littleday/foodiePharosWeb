package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.SearchHistory;

public class SearchHistoryDao {
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");

	public Boolean createSearchHistory(SearchHistory sh) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(sh);
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
