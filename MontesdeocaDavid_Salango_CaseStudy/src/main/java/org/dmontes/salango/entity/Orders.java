package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
//import java.util.List;

/**
 * The persistent class for the orders database table.
 * 
 */
//@NamedQuery(name = "Orders.findAll", query = "SELECT o FROM Orders o")

@Entity
@Table(name = "orders")
@NamedQueries({@NamedQuery(name = "Orders.findAll", query = "SELECT o FROM Orders o"), 
	    @NamedQuery(name = "Orders.findByOrderId", query = "SELECT o FROM Orders o where o.orderId =:porderid"),
		@NamedQuery(name = "Orders.findByClientId", query = "SELECT o FROM Orders o where o.clientId =:pclientid")})
public class Orders implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(unique = true, nullable = false)
	private int orderId;

	@Column(length = 300)
	private String comments;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable = false)
	private Date date;

	@Column(nullable = false, precision = 10, scale = 2)
	private BigDecimal percentagetax;

	@Column(nullable = false, length = 15)
	private String status;

	@Column(nullable = false, precision = 10, scale = 2)
	private BigDecimal subtotal;

	@Column(nullable = false, precision = 10, scale = 2)
	private BigDecimal tax;

	@Column(nullable = false, precision = 10, scale = 2)
	private BigDecimal total;
	
	// CLIENT AND LOCATION TABLES
	@Column(nullable = false)
	private int clientId;
	
	@Column(nullable=false)
	private int locationId;
		
	public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	// CLIENT AND LOCATION TABLES

//	// bi-directional many-to-one association to Orderdetails
//	@OneToMany(mappedBy = "order")
//	private List<OrderDetails> orderdetails;

//	// bi-directional many-to-one association to Clients
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "clientId", nullable = false)
//	private Clients client;
//
//	// bi-directional many-to-one association to Locations
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "locationId", nullable = false)
//	private Locations location;

	public Orders() {
	}

	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
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

	public BigDecimal getPercentagetax() {
		return this.percentagetax;
	}

	public void setPercentagetax(BigDecimal percentagetax) {
		this.percentagetax = percentagetax;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public BigDecimal getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}

	public BigDecimal getTax() {
		return this.tax;
	}

	public void setTax(BigDecimal tax) {
		this.tax = tax;
	}

	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

//	public List<OrderDetails> getOrderdetails() {
//		return this.orderdetails;
//	}
//
//	public void setOrderdetails(List<OrderDetails> orderdetails) {
//		this.orderdetails = orderdetails;
//	}
//
//	public OrderDetails addOrderdetail(OrderDetails orderdetail) {
//		getOrderdetails().add(orderdetail);
//		orderdetail.setOrder(this);
//
//		return orderdetail;
//	}
//
//	public OrderDetails removeOrderdetail(OrderDetails orderdetail) {
//		getOrderdetails().remove(orderdetail);
//		orderdetail.setOrder(null);
//
//		return orderdetail;
//	}

//	public Clients getClient() {
//		return this.client;
//	}
//
//	public void setClient(Clients client) {
//		this.client = client;
//	}
//
//	public Locations getLocation() {
//		return this.location;
//	}
//
//	public void setLocation(Locations location) {
//		this.location = location;
//	}

}