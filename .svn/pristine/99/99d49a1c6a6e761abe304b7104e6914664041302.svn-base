package gapp.model;

import java.io.File;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="gapp_university_degree")
public class GappUniversityDegree implements Serializable{
	
    private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String universityName;
	
	private String timePeriod;
	
	private String dergreeEarned;
	
	private String major;
	
	private Double GPA;
	        
    private Boolean isRecentDegree;
    
    @ManyToOne
    private GappApplication gappApplication; 
	

	public GappUniversityDegree() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUniversityName() {
		return universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public String getTimePeriod() {
		return timePeriod;
	}

	public void setTimePeriod(String timePeriod) {
		this.timePeriod = timePeriod;
	}

	public String getDergreeEarned() {
		return dergreeEarned;
	}

	public void setDergreeEarned(String dergreeEarned) {
		this.dergreeEarned = dergreeEarned;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Double getGPA() {
		return GPA;
	}

	public void setGPA(Double gPA) {
		GPA = gPA;
	}

	
	public Boolean getIsRecentDegree() {
		return isRecentDegree;
	}

	public void setIsRecentDegree(Boolean isRecentDegree) {
		this.isRecentDegree = isRecentDegree;
	}

	public GappApplication getGappApplication() {
		return gappApplication;
	}

	public void setGappApplication(GappApplication gappApplication) {
		this.gappApplication = gappApplication;
	}

	
	
	
	
	
	
	

}
