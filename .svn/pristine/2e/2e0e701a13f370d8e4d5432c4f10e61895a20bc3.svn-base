package gapp.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="gapp_program")
public class GappProgram  implements Serializable{
	
    private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue
	private Integer id;
	
	private String name;
	
	/*@ElementCollection
	private List<String> term;*/
	
	@ManyToOne
	private GappDepartment department;
	
	public GappProgram() {
		super();
	}

	
	public GappDepartment getDepartment() {
		return department;
	}

	public void setDepartment(GappDepartment department) {
		this.department = department;
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
	
	
	
}
