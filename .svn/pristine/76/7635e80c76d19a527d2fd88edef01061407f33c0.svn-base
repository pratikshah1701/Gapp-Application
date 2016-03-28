package gapp.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gapp.model.GappAdditionalReq;
import gapp.model.GappDepartment;
import gapp.model.GappProgram;
import gapp.model.dao.GappDepartmentDao;

@Repository
public class GappDepartmentDaoImpl implements GappDepartmentDao{

	
	 @PersistenceContext
	  private EntityManager entityManager;
	
	@Override
	public List<GappDepartment> getDepartments() {
		return entityManager.createQuery( "from GappDepartment order by id", GappDepartment.class )
	            .getResultList();
	}

	@Override
	public GappDepartment getDepartmentById(int id) {
		return entityManager.createQuery( "from GappDepartment where id=:id", GappDepartment.class ).setParameter("id", id)
	            .getSingleResult();
	}
	
	@Override
	public GappProgram getProgramById(int id) {
		return entityManager.createQuery( "from GappProgram where id=:id", GappProgram.class ).setParameter("id", id)
	            .getSingleResult();
	}
	
	@Override
	public GappAdditionalReq getAddReqById(int id) {
		return entityManager.createQuery( "from GappAdditionalReq where id=:id", GappAdditionalReq.class ).setParameter("id", id)
	            .getSingleResult();
	}

	@Transactional
	@Override
	public GappDepartment addDepartment(GappDepartment gappDepartment) {
		
		return entityManager.merge(gappDepartment);
	}
	
	@Transactional
	@Override
	public GappProgram addProgram(GappProgram gappProgram) {
		
		return entityManager.merge(gappProgram);
	}

	
	@Transactional
	@Override
	public GappAdditionalReq addRequirement(GappAdditionalReq gappAdditionalReq) {
		
		return entityManager.merge(gappAdditionalReq);
	}


	@Override
	public List<GappProgram> getProgrambyDeptID(int id) {
		
		return entityManager.createQuery( "select programList from GappDepartment where id=:id", GappProgram.class ).setParameter("id", id)
	            .getResultList();
	}
	
	/*@Override
	public List<GappAdditionalReq> getAddReqByDeptID(int id) {
		
		return entityManager.createQuery( "select additionalReqList from GappDepartment where id=:id", GappAdditionalReq.class ).setParameter("id", id)
	            .getResultList();
	}*/

	@Transactional
	@Override
	public void removeprogram(GappProgram gappprogram) {
		
		entityManager.remove(gappprogram);
	}

	
	@Transactional
	@Override
	public void removeRequirement(GappAdditionalReq gappAdditionalRer) {
		
		entityManager.remove(gappAdditionalRer);
	}

	@Override
	public GappProgram getProgramByName(String name) {
		return entityManager.createQuery( "from GappProgram where name=:name", GappProgram.class ).setParameter("name", name)
	            .getSingleResult();
	}
	
	
	
	

}
