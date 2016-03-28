package gapp.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import gapp.model.GappUserType;
import gapp.model.GappUsers;
import gapp.model.dao.GappApplicationDao;
import gapp.model.dao.GappUserDao;


import gapp.web.validator.GappUsersValidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;


@Controller
public class GappUserController {

	@Autowired
	private GappUserDao gappUserDao;
	
	@Autowired
	private GappApplicationDao gappApplicationDao;
	
	@Autowired
	private GappUsersValidator gappUserValidator;
	

	// applicant registration controller
	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public String Applicant(ModelMap model) {
		model.put("gappusers", new GappUsers());
		return "register";

	}

	@RequestMapping(value = "/register.html", method = RequestMethod.POST)
	public String Applicant(@ModelAttribute GappUsers gappusers, BindingResult result,ModelMap models ) {

		gappUserValidator.validate(gappusers, result);

		if (result.hasErrors()) {
			System.out.println("has erors-->"+result.toString());
			models.put("gappusers", gappusers);
			models.put("errormessage", "User alredy registered with given email");
			return "register";
					
		}
		

		// Set<String> userType = new HashSet<String>();

		// assuming register user as applicant
		// String user="APPLICANT";

		// setting new user as applicant
		// userType.add(user);

		// u.setRoles(userType);

		// save data and redirect it to home
		// u= appliants.saveUsers(u);
		//user.setUsertype(usertype);
		GappUserType usertype=new GappUserType();
		usertype.setId(3);
		
		List<GappUserType> listGappUserType=new ArrayList<GappUserType>();
		listGappUserType.add(usertype);
		
		String emailLwercase=null;
		
		if(null!=gappusers.getEmail()){
		emailLwercase=gappusers.getEmail().toLowerCase();
		}
		gappusers.setEmail(emailLwercase);
		gappusers.setUsertype(listGappUserType);
		gappUserDao.saveUsers(gappusers);
		return "redirect:/";

	}

	/*
	 * // login controller
	 * 
	 * @RequestMapping(value = "/user/login.html", method = RequestMethod.GET)
	 * public String User(ModelMap model){
	 * 
	 * return "login";
	 * 
	 * }
	 */

	@RequestMapping(value = "/login.html", method = RequestMethod.GET)
	public String Login() {
		return "/login";
	}

	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public String Login(@RequestParam String email,
			@RequestParam String password, ModelMap model) {

		
		System.out.println(email + "      " + password);
		
		GappUsers user=null;
		String userType=null;
		
		try{
		user = gappUserDao.findUserType(email, password);
		}
		catch(NoResultException e){
			System.out.println("user not registered ...handle this");
		}
		
		// link as per users type
		String adminURL = "admin.html";
		String staffURL = "staff.html";
		String studentURL = "student.html";

		String url;
		
		if(user!=null){
		 userType = user.getUsertype().get(0).getType();
		}else{
			System.out.println("no user - add validation code");
			model.put("invalidUser","please enter valid credentials");
			return "/login";
		}
		
		if (userType != null || userType.length() != 0) {

			String redir = "redirect:";

			if (userType.contains("admin")) {
				return redir + adminURL + "?id=" + user.getId();
			} else if (userType.contains("staff")) {
				return redir + staffURL + "?id=" + user.getId();
			} else if (userType.contains("student")) {
				return redir + studentURL + "?id=" + user.getId();
			}
		}

		// / add validation step
		//System.out.println("no user - add validation code");
		return "/login";
	}

	@RequestMapping("/admin.html")
	public String admin(ModelMap model, @RequestParam int id) {
		model.put("user",gappUserDao.getUserById(id));
		return "/admin";
	}

	@RequestMapping("/staff.html")
	public String staff( ModelMap model, @RequestParam int id) {
		model.put("user",gappUserDao.getUserById(id));
		return "/staff";
	}

	@RequestMapping("/student.html")
	public String student( ModelMap model, @RequestParam int id) {
		model.put("user",gappUserDao.getUserById(id));
		model.put("application", gappApplicationDao.getApplicationbyStudentID(id));
		return "/student";
	}
	
	@RequestMapping("/logout.html")
	public String logout(SessionStatus session ) {
		session.setComplete();
		return "redirect:login.html";
	}
	
	@RequestMapping("/manageUser.html")
	public String student( ) {
		
		return "/manageUser";
	}
	
	

}