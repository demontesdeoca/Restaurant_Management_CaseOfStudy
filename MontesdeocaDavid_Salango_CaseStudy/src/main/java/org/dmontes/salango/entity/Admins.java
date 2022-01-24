package org.dmontes.salango.entity;

import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the admins database table.
 * 
 */
@Entity
@Table(name = "admins")
@NamedQuery(name = "Admins.findByAdminId", query = "FROM Admins f where f.adminId =:padminid")
public class Admins {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(unique = true, nullable = false)
	private String adminId;

	@Column(name = "email", nullable = false, length = 50)
	private String email;

	@Column(name = "fullName", length = 100)
	private String fullName;

	@Column(name = "password", nullable = false, length = 100)
	private String password;

	@Column(name = "lastLogin", nullable = false)
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date lastLogin;
	
	public Admins(String adminId, String email, String fullName, String password, Date lastLogin) {
		super();
		this.adminId = adminId;
		this.email = email;
		this.fullName = fullName;
		this.password = password;
		this.lastLogin = lastLogin;
	}
	
	public Admins() {

	}
	
	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
}
