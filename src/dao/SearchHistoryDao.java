package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.Review;
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
	
	public SearchHistory findLastSearchHistory(String username){
		EntityManager em = factory.createEntityManager();
		SearchHistory shistory = null;
		try {
			em.getTransaction().begin();

			shistory = (SearchHistory) em
					.createQuery(
							"select sh from SearchHistory sh "
									+ "where sh.user.username = :username order by sh.time desc")
					.setParameter("username", username)
					.setMaxResults(1)
					.getSingleResult();

			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			em.close();
		}
		
		return shistory;
	}
}
