package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the reservations database table.
 * 
 */
@Entity
@Table(name="reservations")
@NamedQuery(name="Reservations.findAll", query="SELECT r FROM Reservations r")
public class Reservations implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int reservationId;

	@Column(length=300)
	private String comments;

	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	private Date date;

	@Column(length=10)
	private String hour;

	@Column(nullable=false)
	private short qtypeople;

	@Column(nullable=false, length=15)
	private String status;

	//bi-directional many-to-one association to Clients
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="clientId", nullable=false)
	private Clients client;

	//bi-directional many-to-one association to Locations
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="locationId", nullable=false)
	private Locations location;

	public Reservations() {
	}

	public int getReservationId() {
		return this.reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHour() {
		return this.hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public short getQtypeople() {
		return this.qtypeople;
	}

	public void setQtypeople(short qtypeople) {
		this.qtypeople = qtypeople;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Clients getClient() {
		return this.client;
	}

	public void setClient(Clients client) {
		this.client = client;
	}

	public Locations getLocation() {
		return this.location;
	}

	public void setLocation(Locations location) {
		this.location = location;
	}

}