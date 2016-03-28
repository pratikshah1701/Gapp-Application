package gapp.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.naming.Binding;

import gapp.model.GappAdditionalReq;
import gapp.model.GappDepartment;
import gapp.model.GappProgram;
import gapp.model.dao.GappDepartmentDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GappDepartmentController {

	@Autowired
	GappDepartmentDao departmentDao;

	@RequestMapping(value = "/department.html")
	public String getDepartment(ModelMap model) {

		List<GappDepartment> departmentList = departmentDao.getDepartments();
		model.put("departmentList", departmentList);
		return "/department";
	}

	@RequestMapping(value = "/DepartmentDetail.html")
	public String getDepartmentDetail(ModelMap model, @RequestParam int id) {

		GappDepartment departmentDetail = departmentDao.getDepartmentById(id);
		model.put("departmentDetail", departmentDetail);
		return "/DepartmentDetail";
	}

	@RequestMapping(value = "/addDepartment.html", method = RequestMethod.GET)
	public String AddDept(ModelMap model) {

		model.put("gappDepartment", new GappDepartment());
		return "/addDepartment";

	}

	@RequestMapping(value = "/addDepartment.html", method = RequestMethod.POST)
	public String AddDept(/*
						 * @RequestParam String[] progname ,@RequestParam
						 * String[] reqname,
						 */
	ModelMap model, @ModelAttribute GappDepartment gappDepartment) {

		// List<Degree> degrees= new ArrayList<Degree>();

		// Date submitDate=new Date();
		// app.setSubmitDate(submitDate);

		// app.setJob(job.getJob(job_id));
		// app.setApplicant(appliants.getUsers(app_id));

		List<GappProgram> proglist = new ArrayList<GappProgram>();
		/*
		 * for (int i=0;i<progname.length;i++){ GappProgram prog=new
		 * GappProgram(); prog.setName(progname[i]); proglist.add(prog); }
		 */
		gappDepartment.setProgramList(proglist);

		List<GappAdditionalReq> reqList = new ArrayList<GappAdditionalReq>();
		/*
		 * for (int i=0;i<reqname.length;i++){ GappAdditionalReq req=new
		 * GappAdditionalReq(); req.setName(reqname[i]); reqList.add(req); }
		 */
		gappDepartment.setAdditionalReqList(reqList);

		departmentDao.addDepartment(gappDepartment);

		// gappDepartment.setProgramList(proglist);
		// app.setDegrees(degrees);

		// appliants.applyJob(app);

		// return "redirect:applicant.html?applicantId="+app_id;
		return "redirect:department.html";
	}

	@RequestMapping(value = "/editDepartment.html", method = RequestMethod.GET)
	public String EditDept(@RequestParam Integer id, ModelMap model) {

		model.put("gappDepartment", departmentDao.getDepartmentById(id));
		return "/editDepartment";

	}

	@RequestMapping(value = "/editDepartment.html", method = RequestMethod.POST)
	public String EditDept(@RequestParam(required = false) String[] progname,
			@RequestParam(required = false) String[] reqname, ModelMap model,
			@ModelAttribute GappDepartment gappDepartment) {

		// List<Degree> degrees= new ArrayList<Degree>();

		// Date submitDate=new Date();
		// app.setSubmitDate(submitDate);

		// app.setJob(job.getJob(job_id));
		// app.setApplicant(appliants.getUsers(app_id));
		if (null != progname && progname.length > 0) {
			List<GappProgram> proglist = gappDepartment.getProgramList();
			for (int i = 0; i < progname.length; i++) {
				GappProgram prog = new GappProgram();
				prog.setName(progname[i]);
				proglist.add(prog);
			}
			gappDepartment.setProgramList(proglist);
		}

		if (null != reqname && reqname.length > 0) {
			List<GappAdditionalReq> reqList = gappDepartment
					.getAdditionalReqList();
			for (int i = 0; i < reqname.length; i++) {
				GappAdditionalReq req = new GappAdditionalReq();
				req.setName(reqname[i]);
				reqList.add(req);
			}
			gappDepartment.setAdditionalReqList(reqList);
		}

		departmentDao.addDepartment(gappDepartment);

		// gappDepartment.setProgramList(proglist);
		// app.setDegrees(degrees);

		// appliants.applyJob(app);

		// return "redirect:applicant.html?applicantId="+app_id;
		return "redirect:department.html";
	}

	@RequestMapping(value = "/manageDepartment.html", method = RequestMethod.GET)
	public String manageProgram(@RequestParam Integer id, ModelMap model) {

		model.put("department", departmentDao.getDepartmentById(id));
		// model.put("programList", departmentDao.getProgrambyDeptID(id));
		return "manageDepartment";
	}

	@RequestMapping(value = "/removeProgram.html", method = RequestMethod.GET)
	public String removeProgram(@RequestParam int pid, @RequestParam int did,ModelMap model) {

		GappProgram gappProgram = departmentDao.getProgramById(pid);
		departmentDao.removeprogram(gappProgram);
		
		return "redirect:manageDepartment.html?id="+did;
	}
	
	


	@RequestMapping(value = "/removeRequirement.html", method = RequestMethod.GET)
	public String removeRequirement(@RequestParam int rid, @RequestParam int did, ModelMap model) {

		GappAdditionalReq gappAddiReq = departmentDao.getAddReqById(rid);
		departmentDao.removeRequirement(gappAddiReq);
		
		return "redirect:manageDepartment.html?id="+did;
	}

	@RequestMapping(value = "/addProgram.html", method = RequestMethod.GET)
	public String appProgram(@RequestParam int id, ModelMap model) {

		GappDepartment department = departmentDao.getDepartmentById(id);

		model.put("department", department);

		GappProgram gappProgram = new GappProgram();

		model.put("gappProgram", gappProgram);
		return "addProgram";
	}

	@RequestMapping(value = "/addProgram.html", method = RequestMethod.POST)
	public String AddDept(@ModelAttribute GappProgram gappProgram,
			BindingResult result, @RequestParam int did) {

		GappDepartment gappDepartment = departmentDao.getDepartmentById(did);
		

		gappProgram.setDepartment(gappDepartment);
		departmentDao.addProgram(gappProgram);

		return "redirect:manageDepartment.html?id="+did;
	}

	@RequestMapping(value = "/addRequirement.html", method = RequestMethod.GET)
	public String addRequirement(@RequestParam int id, ModelMap model) {

		GappDepartment department = departmentDao.getDepartmentById(id);

		model.put("department", department);

		GappAdditionalReq gappAdditionalReq = new GappAdditionalReq();

		model.put("gappAdditionalReq", gappAdditionalReq);
		return "addRequirement";
	}

	@RequestMapping(value = "/addRequirement.html", method = RequestMethod.POST)
	public String addRequirement(@ModelAttribute GappAdditionalReq gappAddReq,
			BindingResult result, @RequestParam int rid) {

		GappDepartment gappDepartment = departmentDao.getDepartmentById(rid);
		
		gappAddReq.setGappDepartment(gappDepartment);
		departmentDao.addRequirement(gappAddReq);

		return "redirect:manageDepartment.html?id="+rid;
	}
	
	@RequestMapping(value = "/editDept.html", method = RequestMethod.GET)
	public String editDeptName(@RequestParam int id, ModelMap model) {

		GappDepartment department = departmentDao.getDepartmentById(id);

		model.put("department", department);

		
		return "editDept";
	}
	
	@RequestMapping(value = "/editDept.html", method = RequestMethod.POST)
	public String addRequirement(@ModelAttribute GappDepartment gappDepartment,
			BindingResult result, @RequestParam int did) {

		
		departmentDao.addDepartment(gappDepartment);
		return "redirect:department.html";
	}

}
