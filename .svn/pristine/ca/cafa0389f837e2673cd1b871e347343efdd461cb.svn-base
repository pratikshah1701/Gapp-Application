package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="gapp_application_status")
public class GappApplicationStatus implements Serializable{
	
    private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;
	
	@ManyToOne
	private GappApplication gappApplication;
	
	private String status;
	
	private Boolean isLatestStatus;
	
	private Date timeOfChange;
	
	private String comment;
	
	@ManyToOne
	private GappUsers gappUsers;
	
	
	

	public GappUsers getGappUsers() {
		return gappUsers;
	}



	public void setGappUsers(GappUsers gappUsers) {
		this.gappUsers = gappUsers;
	}



	public GappApplicationStatus() {
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



	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	



	public Date getTimeOfChange() {
		return timeOfChange;
	}



	public void setTimeOfChange(Date timeOfChange) {
		this.timeOfChange = timeOfChange;
	}



	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}



	public Boolean getIsLatestStatus() {
		return isLatestStatus;
	}



	public void setIsLatestStatus(Boolean isLatestStatus) {
		this.isLatestStatus = isLatestStatus;
	}
	
	
	

}
