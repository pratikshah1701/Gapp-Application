package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.GappUsers;
import gapp.model.dao.GappUserDao;

@Repository
public class GappUserDaoImpl implements GappUserDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	@Override
	public GappUsers saveUsers(GappUsers users) {
		return entityManager.merge(users);
	}

	@Override
	public GappUsers findUserType(String email, String password) {		
		
		GappUsers user=null;
		try{
		user=entityManager.createQuery("select user from GappUsers user where user.email =:email and user.password=:password ",GappUsers.class).setParameter("email", email).setParameter("password", password).getSingleResult();
		}catch(NoResultException e){
			System.out.println("user not registered ...handle this");
		}
		
		return user;
	}

	@Override
	public GappUsers getUserById(int id) {
		return entityManager.createQuery("select user from GappUsers user where user.id =:id  ",GappUsers.class).setParameter("id", id).getSingleResult();
	}

	@Override
	public List<GappUsers> getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return entityManager.createQuery("from GappUsers where email=:email", GappUsers.class).setParameter("email", email).getResultList();
	}
	
	
	
	
	

}
