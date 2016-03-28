/*package gapp.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

@Test(groups = "GappFindNoOfAppDaoTest")
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class GappFindNoOfAppDaoTest extends AbstractTransactionalTestNGSpringContextTests {
	
	@Autowired
	GappFindNoOfAppDao gappFindNoOfAppDao;
	
	@Test
	public void getGetNoOfAppByStudent(){
		 
		assert gappFindNoOfAppDao.GetNoOfAppByStudent("student1").size()==1;
	}

}
*/