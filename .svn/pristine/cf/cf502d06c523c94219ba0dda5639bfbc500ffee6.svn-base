package gapp.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="gapp_department")
public class GappDepartment implements Serializable{
	
    private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String name;
	
	@OneToMany(mappedBy="department",cascade = {CascadeType.ALL})
	private List<GappProgram> programList;
	
	
    @OneToMany( cascade = CascadeType.ALL, mappedBy="gappDepartment")
	List<GappAdditionalReq> additionalReqList;
	
	

	public GappDepartment() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

/*	public List<GappProgram> getProgramsList() {
		return programsList;
	}

	public void setProgramsList(List<GappProgram> programsList) {
		this.programsList = programsList;
	}*/

	public List<GappAdditionalReq> getAdditionalReqList() {
		return additionalReqList;
	}

	public void setAdditionalReqList(List<GappAdditionalReq> additionalReqList) {
		this.additionalReqList = additionalReqList;
	}

	public List<GappProgram> getProgramList() {
		return programList;
	}

	public void setProgramList(List<GappProgram> programList) {
		this.programList = programList;
	}
	
	
	
}
