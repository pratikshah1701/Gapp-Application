package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import gapp.model.GappApplication;
import gapp.model.dao.GappAccountingDeptAppDao;

@Repository
public class GappAccountingDeptAppDaoImpl implements GappAccountingDeptAppDao{
	
	
	
	
	 @PersistenceContext
	  private EntityManager entityManager;

	@Override
	public List<GappApplication> getApplicationForSpecificTerm(String term) {
		
		return entityManager.createQuery( "select app from GappApplication app join app.program p join p.department d  where d.name='Accounting' and app.term=:term", GappApplication.class )
	            .setParameter("term", term).getResultList();
	}

	
	
}
