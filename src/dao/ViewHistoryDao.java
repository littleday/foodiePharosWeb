package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.ViewHistory;

public class ViewHistoryDao {
	
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");
	
	public Boolean createViewHistory(ViewHistory vh){
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(vh);
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
