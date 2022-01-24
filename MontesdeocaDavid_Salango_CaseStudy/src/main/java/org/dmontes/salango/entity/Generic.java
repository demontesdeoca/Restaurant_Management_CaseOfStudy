package org.dmontes.salango.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="generic")
public class Generic {

	public Generic() {
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false, length = 500)
	private String fld0;
	
	@Column(name = "fld1", length = 500)
	private String fld1;
	@Column(name = "fld2", length = 500)
	private String fld2;	
	@Column(name = "fld3", length = 500)
	private String fld3;
	@Column(name = "fld4", length = 500)
	private String fld4;	
	@Column(name = "fld5", length = 500)
	private String fld5;
	@Column(name = "fld6", length = 500)
	private String fld6;
	@Column(name = "fld7", length = 500)
	private String fld7;
	@Column(name = "fld8", length = 500)
	private String fld8;
	@Column(name = "fld9", length = 500)
	private String fld9;
	
	public Generic(String fld0) {
		this.fld0 = fld0; 
	}
	
	public Generic(String[] args) {
		this.fld0 = (args.length >= 0 ) ? args[0] : null; 
		this.fld1 = (args.length >= 1 ) ? args[1] : null; 
		this.fld2 = (args.length >= 2 ) ? args[2] : null; 
		this.fld3 = (args.length >= 3 ) ? args[3] : null; 
		this.fld4 = (args.length >= 4 ) ? args[4] : null; 
		this.fld5 = (args.length >= 5 ) ? args[5] : null; 
		this.fld6 = (args.length >= 6 ) ? args[6] : null; 
		this.fld7 = (args.length >= 7 ) ? args[7] : null; 
		this.fld8 = (args.length >= 8 ) ? args[8] : null; 
		this.fld9 = (args.length >= 9 ) ? args[9] : null; 
	}

	public Generic(String fld0, String fld1, String fld2, String fld3, String fld4, String fld5, String fld6,
			String fld7, String fld8, String fld9) {
		this.fld0 = fld0;
		this.fld1 = fld1;
		this.fld2 = fld2;
		this.fld3 = fld3;
		this.fld4 = fld4;
		this.fld5 = fld5;
		this.fld6 = fld6;
		this.fld7 = fld7;
		this.fld8 = fld8;
		this.fld9 = fld9;
	}
	public String getFld0() {
		return fld0;
	}
	public void setFld0(String fld0) {
		this.fld0 = fld0;
	}
	public String getFld1() {
		return fld1;
	}
	public void setFld1(String fld1) {
		this.fld1 = fld1;
	}
	public String getFld2() {
		return fld2;
	}
	public void setFld2(String fld2) {
		this.fld2 = fld2;
	}
	public String getFld3() {
		return fld3;
	}
	public void setFld3(String fld3) {
		this.fld3 = fld3;
	}
	public String getFld4() {
		return fld4;
	}
	public void setFld4(String fld4) {
		this.fld4 = fld4;
	}
	public String getFld5() {
		return fld5;
	}
	public void setFld5(String fld5) {
		this.fld5 = fld5;
	}
	public String getFld6() {
		return fld6;
	}
	public void setFld6(String fld6) {
		this.fld6 = fld6;
	}
	public String getFld7() {
		return fld7;
	}
	public void setFld7(String fld7) {
		this.fld7 = fld7;
	}
	public String getFld8() {
		return fld8;
	}
	public void setFld8(String fld8) {
		this.fld8 = fld8;
	}
	public String getFld9() {
		return fld9;
	}
	public void setFld9(String fld9) {
		this.fld9 = fld9;
	}

	
}
