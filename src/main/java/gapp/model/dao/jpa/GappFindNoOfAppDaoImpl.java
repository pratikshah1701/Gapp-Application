package gapp.model.dao.jpa;

import java.util.List;

import gapp.model.GappApplication;
import gapp.model.dao.GappFindNoOfAppDao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class GappFindNoOfAppDaoImpl implements GappFindNoOfAppDao{
	
	 @PersistenceContext
	  private EntityManager entityManager;

	@Override
	public List<GappApplication> GetNoOfAppByStudent(String name) {
		
		return entityManager.createQuery( "select app from GappApplication app join app.user u join u.usertype utype  where utype.type='student' and u.fname=:name", GappApplication.class )
	            .setParameter("name", name).getResultList();
	}
	 
	 

}
