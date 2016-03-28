package gapp.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="gapp_users")
public class GappUsers  implements Serializable{
	
    private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue
	private Integer id;

    private String lname;
    
    private String fname;
    
    private String email;

    private String password;
    
    private Integer CIN;
    
    private Integer phoneNO;
    
    private String gender;
    
    private Date DOB;
    
    private String citizenship;
    

    @ManyToMany
    List<GappUserType> usertype;

    @Column(name="id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/*public Integer getRole_id() {
		return role_id;
	}

	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
*/
	public List<GappUserType> getUsertype() {
		return usertype;
	}

	public void setUsertype(List<GappUserType> usertype) {
		this.usertype = usertype;
	}

	public Integer getCIN() {
		return CIN;
	}

	public void setCIN(Integer cIN) {
		CIN = cIN;
	}

	public Integer getPhoneNO() {
		return phoneNO;
	}

	public void setPhoneNO(Integer phoneNO) {
		this.phoneNO = phoneNO;
	}

	public String getGender() {
		return gender;
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
