package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entity.*;

public class AdministratorDao {
	
	EntityManagerFactory factory = Persistence
			.createEntityManagerFactory("foodiePharos");
	
	public Boolean createAdministrator(Administrator admin) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.persist(admin);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			returnVal = false;
		} finally {
			em.close();
		}
		return returnVal;
	}
	
	public Administrator findAdministratorByPk(String username){
		Administrator admin = null;
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		admin = em.find(Administrator.class, username);
		em.getTransaction().commit();
		em.close();
		return admin;
	}
	
	public Boolean updateAdministrator(Administrator admin) {
		EntityManager em = factory.createEntityManager();
		Boolean returnVal = true;

		try {
			em.getTransaction().begin();
			em.merge(admin);
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
