package gapp.model.dao;

import gapp.model.GappAdditionalReq;
import gapp.model.GappDepartment;
import gapp.model.GappProgram;

import java.util.List;

public interface GappDepartmentDao {
	
	List<GappDepartment> getDepartments();
	
	GappDepartment getDepartmentById(int id);
	
	GappDepartment addDepartment(GappDepartment gappDepartment);
	
	List<GappProgram> getProgrambyDeptID(int id);
	
	void removeprogram(GappProgram gappprogram);

	GappProgram getProgramById(int id);
	
	GappProgram getProgramByName(String name);

	GappProgram addProgram(GappProgram gappProgram);

	void removeRequirement(GappAdditionalReq gappAdditionalRer);

	GappAdditionalReq getAddReqById(int id);

	GappAdditionalReq addRequirement(GappAdditionalReq gappAdditionalReq);

	

	//List<GappAdditionalReq> getAddReqByDeptID(int id);
	
	
	

}
