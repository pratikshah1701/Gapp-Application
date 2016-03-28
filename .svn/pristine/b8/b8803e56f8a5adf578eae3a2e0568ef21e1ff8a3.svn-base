package gapp.model.dao;

import gapp.model.GappAdditionalReq;
import gapp.model.GappAdditionalReqDetails;
import gapp.model.GappApplication;
import gapp.model.GappFile;
import gapp.model.GappUniversityDegree;

import java.util.List;

public interface GappApplicationDao {
	
	List<GappApplication> getApplicationbyStudentID(int id);
	
	GappApplication getApplicationByID(int id);

	GappFile saveFile(GappFile gappFile);
	
	GappApplication addApplication(GappApplication gappApplication);
	
	GappUniversityDegree addUniversityDegree(GappUniversityDegree gappUniversityDegree);

	List<GappUniversityDegree> addUniversityDegreeList(
			List<GappUniversityDegree> gappUniversityDegreeList);

	void removeUniDegree(GappUniversityDegree gappUniversityDegree);

	GappUniversityDegree getUniDegree(int id);

	GappAdditionalReq getAddReq(int id);

	GappAdditionalReqDetails addAddReqDtails(
			GappAdditionalReqDetails gappAdditionalReqDetails);

	GappAdditionalReqDetails getAddReqDetail(int id);

	void removeAddReqDtails(GappAdditionalReqDetails gappAdditionalReqDetails);



}
