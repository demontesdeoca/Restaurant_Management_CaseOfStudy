package org.dmontes.salango.entity;


import javax.persistence.*;

@Entity
@Table(name = "ttest")
public class Ttest {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idrecord", unique = true, nullable = false)
	private int idrecord;
	
	@Column(name = "name", nullable = false, length = 50)
	private String name;

	public int getIdrecord() {
		return idrecord;
	}

	public void setIdrecord(int idrecord) {
		this.idrecord = idrecord;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Ttest() {

	}



}
