package gapp.model.dao;

import gapp.model.GappApplication;

import java.util.List;

public interface GappAccountingDeptAppDao {
	
	List<GappApplication> getApplicationForSpecificTerm(String term);

}
