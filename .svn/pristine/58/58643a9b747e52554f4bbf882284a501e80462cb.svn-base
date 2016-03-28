package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="gapp_application")
public class GappApplication implements Serializable {
	
		private static final long serialVersionUID = 1L;

		@Id
		@GeneratedValue
		private Integer id;
		
		@ManyToOne
		private GappUsers user;
		
		@OneToOne(cascade = CascadeType.ALL)
		private GappProgram program;
		
		@OneToMany(mappedBy="gappApplication")
		private List<GappAdditionalReqDetails> additionalReqDetails;
		
	    private String term;
	     
	    private String TOFFEL; 
	    
	    @OneToMany(cascade = CascadeType.ALL,mappedBy="gappApplication")
	    private List<GappUniversityDegree> educationalBackground;
	    
	    @OneToMany(fetch=FetchType.EAGER, cascade = CascadeType.ALL,mappedBy="gappApplication")
	    private List<GappApplicationStatus> applicationStatus;

	    @OneToOne(fetch=FetchType.EAGER)
	    GappFile transcript;
	    
	    private String lname;
	    
	    private String fname;
	    
	    private String email;

	  //  private String password;
	    
	    private String CIN;
	    
	    private String phoneNO;
	    
	    private String gender;
	    
	    @DateTimeFormat(pattern = "MM/dd/yyyy")
	    private Date DOB;
	    
	    private String citizenship;
	    
		public GappApplication() {
			super();
		}

	    
		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public GappUsers getUser() {
			return user;
		}

		public void setUser(GappUsers user) {
			this.user = user;
		}

		public GappProgram getProgram() {
			return program;
		}

		public void setProgram(GappProgram program) {
			this.program = program;
		}

		public String getTerm() {
			return term;
		}

		public void setTerm(String term) {
			this.term = term;
		}


		public String getTOFFEL() {
			return TOFFEL;
		}

		public void setTOFFEL(String tOFFEL) {
			TOFFEL = tOFFEL;
		}


		public List<GappAdditionalReqDetails> getAdditionalReqDetails() {
			return additionalReqDetails;
		}


		public void setAdditionalReqDetails(
				List<GappAdditionalReqDetails> additionalReqDetails) {
			this.additionalReqDetails = additionalReqDetails;
		}


		public List<GappApplicationStatus> getApplicationStatus() {
			return applicationStatus;
		}


		public void setApplicationStatus(List<GappApplicationStatus> applicationStatus) {
			this.applicationStatus = applicationStatus;
		}


		public GappFile getTranscript() {
			return transcript;
		}


		public void setTranscript(GappFile transcript) {
			this.transcript = transcript;
		}


		public List<GappUniversityDegree> getEducationalBackground() {
			return educationalBackground;
		}


		public void setEducationalBackground(
				List<GappUniversityDegree> educationalBackground) {
			this.educationalBackground = educationalBackground;
		}


		public String getLname() {
			return lname;
		}


		public void setLname(String lname) {
			this.lname = lname;
		}


		public String getFname() {
			return fname;
		}


		public void setFname(String fname) {
			this.fname = fname;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		/*public String getPassword() {
			return password;
		}


		public void setPassword(String password) {
			this.password = password;
		}*/


		


		public String getGender() {
			return gender;
		}


		public String getCIN() {
			return CIN;
		}


		public void setCIN(String cIN) {
			CIN = cIN;
		}


		public String getPhoneNO() {
			return phoneNO;
		}


		public void setPhoneNO(String phoneNO) {
			this.phoneNO = phoneNO;
		}


		public void setGender(String gender) {
			this.gender = gender;
		}


		public Date getDOB() {
			return DOB;
		}


		public void setDOB(Date dOB) {
			DOB = dOB;
		}


		public String getCitizenship() {
			return citizenship;
		}


		public void setCitizenship(String citizenship) {
			this.citizenship = citizenship;
		}


		    
	

}
