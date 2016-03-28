package gapp.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="gapp_user_type")
public class GappUserType  implements Serializable{
	
    private static final long serialVersionUID = 1L;

	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String type;
	
	

	public GappUserType() {
		super();
	}

	@Column(name="role_id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	

}
