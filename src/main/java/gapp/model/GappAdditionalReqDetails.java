package gapp.model;

import java.io.File;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="gapp_additional_req_detail")
public class GappAdditionalReqDetails implements Serializable{
	
	 private static final long serialVersionUID = 1L;
	 
	 @Id
	@GeneratedValue
	 private Integer id;
	 
	 private Integer requiredNumber;
	 
	 private String requiredText;
	 
	 @OneToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	 private GappFile requiredFile;
	 
	 @ManyToOne
	 private GappAdditionalReq additionalReq;
	 
	 @ManyToOne
	 private GappApplication gappApplication;
	 
	 private Boolean flag=false;

	public GappAdditionalReqDetails() {
		super();
	}

	
	public Integer getId() {
		return id;
	}






	public void setId(Integer id) {
		this.id = id;
	}






	public GappApplication getGappApplication() {
		return gappApplication;
	}






	public void setGappApplication(GappApplication gappApplication) {
		this.gappApplication = gappApplication;
	}






	public Integer getRequiredNumber() {
		return requiredNumber;
	}


	public void setRequiredNumber(Integer requiredNumber) {
		this.requiredNumber = requiredNumber;
	}


	public String getRequiredText() {
		return requiredText;
	}


	public void setRequiredText(String requiredText) {
		this.requiredText = requiredText;
	}


	

	public GappFile getRequiredFile() {
		return requiredFile;
	}


	public void setRequiredFile(GappFile requiredFile) {
		this.requiredFile = requiredFile;
	}


	public GappAdditionalReq getAdditionalReq() {
		return additionalReq;
	}


	public void setAdditionalReq(GappAdditionalReq additionalReq) {
		this.additionalReq = additionalReq;
	}


	public Boolean getFlag() {
		return flag;
	}


	public void setFlag(Boolean flag) {
		this.flag = flag;
	}

	
	
	
	 
	 
	 

}
