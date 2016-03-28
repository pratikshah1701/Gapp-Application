package gapp.web.validator;

import java.util.List;

import gapp.model.GappUsers;
import gapp.model.dao.GappUserDao;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


@Component
public class GappUsersValidator  implements Validator {
	
	@Autowired
	GappUserDao gappUserDao;

	@Override
	public boolean supports(Class<?> clazz) {
		
		return GappUsers.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		GappUsers gappUsers=(GappUsers)target;
		
		if(StringUtils.hasText(gappUsers.getEmail())){
			
			List<GappUsers> gappUserList = gappUserDao.getUserByEmail(gappUsers.getEmail());
			
			if(gappUserList.size()>0){
			errors.rejectValue("email", "error.field.emailinvalid");
			}
		}
		
	}

}
