package gapp.model.dao;

import java.util.List;

import gapp.model.GappUsers;

public interface GappUserDao {
	
	GappUsers saveUsers(GappUsers users);
	
	GappUsers findUserType(String email,String password);
	
	GappUsers getUserById(int id);
	
	List<GappUsers> getUserByEmail(String email);


}
