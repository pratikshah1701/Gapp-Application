package gapp.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Gapp_file")
public class GappFile implements Serializable {
	
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue
    private int id;
    
    private String name;
    
    private String originalName;
    
    private String type;
    
    private Long size;
    
    private Date date;
    
  
    @OneToOne
    GappApplication gappApplication;
    
    @OneToOne
    GappAdditionalReqDetails gappAdditionalReqDetails;
    
    

	public GappFile() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public GappApplication getGappApplication() {
		return gappApplication;
	}

	public void setGappApplication(GappApplication gappApplication) {
		this.gappApplication = gappApplication;
	}

	public GappAdditionalReqDetails getGappAdditionalReqDetails() {
		return gappAdditionalReqDetails;
	}

	public void setGappAdditionalReqDetails(
			GappAdditionalReqDetails gappAdditionalReqDetails) {
		this.gappAdditionalReqDetails = gappAdditionalReqDetails;
	}
    
    
    
	

}
