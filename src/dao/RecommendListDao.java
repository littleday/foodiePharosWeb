package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.RecommendList;

public class RecommendListDao {
	
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");
	
	public Boolean createRecommendList(RecommendList rl){
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(rl);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}
	
	public RecommendList findLastRecommendList(String username){
		EntityManager em = factory.createEntityManager();
		RecommendList rl = null;
		
		try {
			em.getTransaction().begin();

			rl = (RecommendList) em
					.createQuery(
							"select RL from RecommendList RL "
									+ "where RL.user.username = :username "
									+ "order by RL.date desc")
					.setParameter("username", username)
					.setMaxResults(1)
					.getSingleResult();

			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			em.close();
		}
		
		return rl;
	}

}
