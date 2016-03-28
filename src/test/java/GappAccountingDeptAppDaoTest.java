/*package gapp.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

@Test(groups = "GappAccountingDeptAppDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class GappAccountingDeptAppDaoTest extends AbstractTransactionalTestNGSpringContextTests {

	@Autowired
	GappAccountingDeptAppDao gappAccountingDeptAppDao;
	
	@Test
	public void getApplicationForSpecificTerm(){
		 assert gappAccountingDeptAppDao.getApplicationForSpecificTerm("Fall 2016").size() == 1;
	}
	
	
}
*/