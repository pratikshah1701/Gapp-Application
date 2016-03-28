package gapp.web.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import gapp.model.GappAdditionalReq;
import gapp.model.GappAdditionalReqDetails;
import gapp.model.GappApplication;
import gapp.model.GappApplicationStatus;
import gapp.model.GappFile;
import gapp.model.GappUsers;
import gapp.model.dao.GappApplicationDao;
import gapp.model.dao.GappDepartmentDao;
import gapp.model.dao.GappUserDao;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
@SessionAttributes("ReqAlreadyEists")
public class GappAdditionalReqController {
	
	
	@Autowired
	GappApplicationDao gappApplicationDao;

	@Autowired
	private ServletContext context;
	
	@Autowired
	GappDepartmentDao gappDepartmentDao; 
	
	@Autowired
	GappUserDao gappUserDao;
	
	private java.io.File getFileDirectory() {
		String path = context.getRealPath("/WEB-INF/files");

		return new java.io.File(path);
	}
	
	
	@RequestMapping(value = "/additionalReq.html", method = RequestMethod.GET)
	public String addAdditionalRequirement(HttpServletRequest request,@RequestParam(required = false) String err,@RequestParam int sid,@RequestParam int deptID,@RequestParam int AppID, ModelMap model){
		
		GappApplication gappApplication=gappApplicationDao.getApplicationByID(AppID);
		model.put("gappApplication", gappApplication);
		model.put("sid", sid);
		model.put("deptID", deptID);
		model.put("AppID", AppID);
		model.put("err", err);
	
		System.out.println("redirect get");

		
		return "additionalReq";
		
	}
	
	@RequestMapping(value = "/additionalReq.html", method = RequestMethod.POST)
	public String addAdditionalRequirement(HttpServletRequest request,@RequestParam int sid,@RequestParam int deptID,@RequestParam int AppID,@RequestParam(required=false) String err,ModelMap model){
		
		System.out.println("redirect post");
		
		GappUsers gappUsers=gappUserDao.getUserById(sid);
		GappApplication gappApplication=gappApplicationDao.getApplicationByID(AppID);
		
		GappApplicationStatus applicationStatus=new GappApplicationStatus();
    	String save=request.getParameter("save");
    	String submit=request.getParameter("submit");

    	System.out.println("Action:"+save);
    	System.out.println("Action:"+submit);
    	
    	if(submit!=null)
    	{	   
    		System.out.println("inside submit of add req stp 2");
    		applicationStatus.setStatus("New");
        	applicationStatus.setComment("the application is submitted by the student");

    	}
    	else
    	{
    		applicationStatus.setStatus("Not Submitted");	
        	applicationStatus.setComment("Changes saved");

    	}
    	
    	applicationStatus.setTimeOfChange(new Date());
    	
    	
    	List<GappApplicationStatus> listOfStatus=gappApplication.getApplicationStatus();
    	
    	//-----logic to set false all the old  status----//
    	for(GappApplicationStatus gappApplicationStatus:listOfStatus){
    		gappApplicationStatus.setIsLatestStatus(false);
    	}
    	listOfStatus.add(applicationStatus);
    	
    	//Set this latest status true
    	applicationStatus.setIsLatestStatus(true);
    	applicationStatus.setGappUsers(gappUsers);
    	applicationStatus.setGappApplication(gappApplication);
    	
    
    	gappApplication.setApplicationStatus(listOfStatus);
		gappApplication = gappApplicationDao.addApplication(gappApplication);

		
		
		
		
		return "redirect:student.html?id="+sid;
	}
	
	
	
	@RequestMapping(value = "/number.html", method = RequestMethod.GET)
	public String addNumber(@RequestParam int sid,@RequestParam int deptID,@RequestParam int AppID,@RequestParam int rid,@RequestParam(required = false) String err,ModelMap model){
		
		GappAdditionalReqDetails additionalReqDetails=new GappAdditionalReqDetails();
		
		//<td><a href="${req.type}.html?sid=${sid}&deptID=${deptID}&AppID=${AppID}">Add</a></td>
		//
		System.out.println("inside number");
		model.put("additionalReqDetails", additionalReqDetails);
		
		GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(rid);
		model.put("gappAdditionalReq", gappAdditionalReq);
		
		model.put("sid", sid);
		model.put("deptID", deptID);
		model.put("AppID", AppID);
		model.put("rid", rid);

		
		//return "number.html?AppID="+AppID+"&deptID"+deptID;
		return "number";
		
	}
	
	
	
	
	@RequestMapping(value = "/number.html", method = RequestMethod.POST)
	public String addNumber( @ModelAttribute GappAdditionalReqDetails gappAdditionalReqDetails,
			BindingResult result,HttpServletRequest request,ModelMap models) {

		String sid= request.getParameter("sid");
		String deptID= request.getParameter("deptID");
		String AppID= request.getParameter("AppID");
		String rid= request.getParameter("rid");
		
		GappApplication gappApplication= gappApplicationDao.getApplicationByID(Integer.parseInt(AppID));
		
		//-----------------check if requirement already exists-------------//
		
		List<GappAdditionalReqDetails> additionalReqDetailsList=gappApplication.getAdditionalReqDetails();
		
		if(additionalReqDetailsList.size()>0){
			
			for(GappAdditionalReqDetails additionalReqDetails:additionalReqDetailsList){
				
				if(additionalReqDetails.getAdditionalReq().getId().equals(Integer.parseInt(rid))){
					System.out.println("req check");
					String reqName=additionalReqDetails.getAdditionalReq().getName();
					String err="Requirement : "+reqName+" already submitted.";
					return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID+"&err="+err;
					
				}
				}
			}
		//--------------------------check if requirement already exists---------------------------------------//
		
				System.out.println("-------rest of the code--------");
				GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(Integer.parseInt(rid));
				
				gappAdditionalReqDetails.setGappApplication(gappApplication);
				
				gappAdditionalReqDetails.setAdditionalReq(gappAdditionalReq);
				
				gappAdditionalReqDetails.setFlag(true);
				
				gappApplicationDao.addAddReqDtails(gappAdditionalReqDetails);
				return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID;
				//String err="Requirement  already exists.";
				//return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID+"&err="+err;
				
			
		//}
		
		
		//return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID;

	//	departmentDao.addDepartment(gappDepartment);
	}
	
	
	
	@RequestMapping(value = "/file.html", method = RequestMethod.GET)
	public String addFile(@RequestParam int sid,@RequestParam int deptID,@RequestParam int AppID,@RequestParam int rid,ModelMap model){
		
		GappAdditionalReqDetails additionalReqDetails=new GappAdditionalReqDetails();
		System.out.println("inside Add File");
		model.put("additionalReqDetails", additionalReqDetails);
		
		GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(rid);
		model.put("gappAdditionalReq", gappAdditionalReq);
		
		model.put("sid", sid);
		model.put("deptID", deptID);
		model.put("AppID", AppID);
		model.put("rid", rid);

		return "file";
		
	}
	
	@RequestMapping(value = "/file.html", method = RequestMethod.POST)
	public String addfile( @ModelAttribute GappAdditionalReqDetails gappAdditionalReqDetails,
			BindingResult result,HttpServletRequest request,@RequestParam MultipartFile t) {

		String sid= request.getParameter("sid");
		String deptID= request.getParameter("deptID");
		String AppID= request.getParameter("AppID");
		String rid= request.getParameter("rid");
		
		GappApplication gappApplication= gappApplicationDao.getApplicationByID(Integer.parseInt(AppID));
		
		
		
		//-----------------check if requirement already exists-------------//
		
				List<GappAdditionalReqDetails> additionalReqDetailsList=gappApplication.getAdditionalReqDetails();
				
				if(additionalReqDetailsList.size()>0){
					
					for(GappAdditionalReqDetails additionalReqDetails:additionalReqDetailsList){
						
						if(additionalReqDetails.getAdditionalReq().getId().equals(Integer.parseInt(rid))){
							System.out.println("req check");
							String reqName=additionalReqDetails.getAdditionalReq().getName();
							String err="Requirement : "+reqName+" already submitted.";
							return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID+"&err="+err;
							
						}
						}
					}
				//--------------------------check if requirement already exists---------------------------------------//
		
		GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(Integer.parseInt(rid));
		
		gappAdditionalReqDetails.setGappApplication(gappApplication);
		
		gappAdditionalReqDetails.setAdditionalReq(gappAdditionalReq);
		
		gappAdditionalReqDetails.setFlag(true);
		
		//----------------Handle File-------------------------//
		
		//------------Set file and Transacript File Handling --------------------//
		
		
				//Combination of User ID + Program + Term -- todo
				String Filename="AdditionalReq_"+sid+"_"+AppID+"_"+t.getOriginalFilename();
				System.out.println("Filename:"+Filename);
				
				File file2=getFileDirectory();
				if(!file2.exists()){
					file2.mkdir();
				}
				
				try{
				t.transferTo(new java.io.File(getFileDirectory(),Filename));
				}
				catch(Exception e){
					System.out.println("Exception in Add req - while uploding the transcrit"+e);
				}
				System.out.println(getFileDirectory()+"/"+Filename);
				
				Date date = new Date();
		    	GappFile file = new GappFile();
		    	if(!t.isEmpty()){
		    		file.setDate(date);
		    		file.setName(Filename);
		    		file.setSize(t.getSize());
		    		file.setType(t.getContentType());
		    		file.setOriginalName(t.getOriginalFilename());
		    		

		    		gappAdditionalReqDetails.setRequiredFile(file);
		    	}
		    	
		
		gappApplicationDao.addAddReqDtails(gappAdditionalReqDetails);
		

	
		return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID;
	}
	
	
	
	
	@RequestMapping(value = "/text.html", method = RequestMethod.GET)
	public String addText(@RequestParam int sid,@RequestParam int deptID,@RequestParam int AppID,@RequestParam int rid,@RequestParam(required = false) String err,ModelMap model){
		
	GappAdditionalReqDetails additionalReqDetails=new GappAdditionalReqDetails();
		
		
		System.out.println("inside text");
		model.put("additionalReqDetails", additionalReqDetails);
		
		GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(rid);
		model.put("gappAdditionalReq", gappAdditionalReq);
		
		model.put("sid", sid);
		model.put("deptID", deptID);
		model.put("AppID", AppID);
		model.put("rid", rid);

		return "text";
	
	
	}
	
	@RequestMapping(value = "/text.html", method = RequestMethod.POST)
	public String addText( @ModelAttribute GappAdditionalReqDetails gappAdditionalReqDetails,
			BindingResult result,HttpServletRequest request,ModelMap models) {

		String sid= request.getParameter("sid");
		String deptID= request.getParameter("deptID");
		String AppID= request.getParameter("AppID");
		String rid= request.getParameter("rid");
		
		GappApplication gappApplication= gappApplicationDao.getApplicationByID(Integer.parseInt(AppID));
		
		
		//-----------------check if requirement already exists-------------//
		
		List<GappAdditionalReqDetails> additionalReqDetailsList=gappApplication.getAdditionalReqDetails();
		
		if(additionalReqDetailsList.size()>0){
			
			for(GappAdditionalReqDetails additionalReqDetails:additionalReqDetailsList){
				
				if(additionalReqDetails.getAdditionalReq().getId().equals(Integer.parseInt(rid))){
					System.out.println("req check");
					String reqName=additionalReqDetails.getAdditionalReq().getName();
					String err="Requirement : "+reqName+" already submitted.";
					return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID+"&err="+err;
					
				}
				}
			}
		//--------------------------check if requirement already exists---------------------------------------//
		
		
		
				GappAdditionalReq gappAdditionalReq=gappApplicationDao.getAddReq(Integer.parseInt(rid));
				
				System.out.println("Text req test---->"+gappAdditionalReqDetails.getRequiredText());
				
				gappAdditionalReqDetails.setGappApplication(gappApplication);
				
				gappAdditionalReqDetails.setAdditionalReq(gappAdditionalReq);
				
				gappAdditionalReqDetails.setFlag(true);
				
				gappApplicationDao.addAddReqDtails(gappAdditionalReqDetails);
				return "redirect:additionalReq.html?sid="+sid+"&deptID="+deptID+"&AppID="+AppID;

	}
		

}
