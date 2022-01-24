package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the locations database table.
 * 
 */
@Entity
@Table(name="locations")
@NamedQuery(name="Locations.findAll", query="SELECT l FROM Locations l")
public class Locations implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int locationId;

	@Column(nullable=false, length=50)
	private String addressLine1;

	@Column(length=50)
	private String addressLine2;

	@Column(nullable=false, length=50)
	private String city;

	@Column(nullable=false, length=50)
	private String country;

	@Column(nullable=false, length=50)
	private String email;

	@Column(nullable=false, length=50)
	private String phone;

	@Column(length=50)
	private String state;

	@Column(nullable=false, length=15)
	private String zipCode;

//	//bi-directional many-to-one association to Orders
//	@OneToMany(mappedBy="location")
//	private List<Orders> orders;

	//bi-directional many-to-one association to Reservations
	@OneToMany(mappedBy="location")
	private List<Reservations> reservations;

	public Locations() {
	}

	public int getLocationId() {
		return this.locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

	public String getAddressLine1() {
		return this.addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return this.addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

//	public List<Orders> getOrders() {
//		return this.orders;
//	}
//
//	public void setOrders(List<Orders> orders) {
//		this.orders = orders;
//	}

//	public Orders addOrder(Orders order) {
//		getOrders().add(order);
//		order.setLocation(this);
//
//		return order;
//	}
//
//	public Orders removeOrder(Orders order) {
//		getOrders().remove(order);
//		order.setLocation(null);
//
//		return order;
//	}

	public List<Reservations> getReservations() {
		return this.reservations;
	}

	public void setReservations(List<Reservations> reservations) {
		this.reservations = reservations;
	}

	public Reservations addReservation(Reservations reservation) {
		getReservations().add(reservation);
		reservation.setLocation(this);

		return reservation;
	}

	public Reservations removeReservation(Reservations reservation) {
		getReservations().remove(reservation);
		reservation.setLocation(null);

		return reservation;
	}

}