package gapp.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="gapp_additional_req")
public class GappAdditionalReq implements Serializable {
	
    private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;
	
	private String name;
	
	private String type;
	
	private String requiredOrOptional;
	
	@ManyToOne
	private GappDepartment gappDepartment;
	
	@OneToMany(mappedBy="additionalReq" ,cascade = {CascadeType.ALL})
	private List<GappAdditionalReqDetails> additionalReqDetails;
	
	private Boolean checkReq=false;
	
	
	
	public GappDepartment getGappDepartment() {
		return gappDepartment;
	}

	public void setGappDepartment(GappDepartment gappDepartment) {
		this.gappDepartment = gappDepartment;
	}

	public GappAdditionalReq() {
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

	

	public String getRequiredOrOptional() {
		return requiredOrOptional;
	}

	public void setRequiredOrOptional(String requiredOrOptional) {
		this.requiredOrOptional = requiredOrOptional;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<GappAdditionalReqDetails> getAdditionalReqDetails() {
		return additionalReqDetails;
	}

	public void setAdditionalReqDetails(
			List<GappAdditionalReqDetails> additionalReqDetails) {
		this.additionalReqDetails = additionalReqDetails;
	}

	public Boolean getCheckReq() {
		return checkReq;
	}

	public void setCheckReq(Boolean checkReq) {
		this.checkReq = checkReq;
	}
	
	
	
	
}
