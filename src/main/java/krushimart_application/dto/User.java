package krushimart_application.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import lombok.Data;

@Entity
@Data
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName,lastName,address,type;
	private String password;
    @Column(unique = true)
	private String email;
    @Column(unique = true)
	private long phone;
    
    @ManyToMany(cascade = CascadeType.ALL)
    private List<Product> product;
    
}
