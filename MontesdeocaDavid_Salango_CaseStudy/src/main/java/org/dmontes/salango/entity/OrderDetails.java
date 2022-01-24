package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the orderdetails database table.
 * 
 */
@Entity
@Table(name="orderdetails")
//@NamedQuery(name="Orderdetails.findAll", query="SELECT o FROM Orderdetails o")
@NamedQueries({@NamedQuery(name = "OrderDetails.findAll", query = "SELECT o FROM OrderDetails o"), 
    @NamedQuery(name = "OrderDetails.findByOrderId", query = "SELECT o FROM OrderDetails o where o.orderId =:porderid")})
public class OrderDetails implements Serializable {
	private static final long serialVersionUID = 1L;

//	@EmbeddedId
//	private OrderDetailsPK id;
	
	////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable=false)
	private int orderdetailId;
	
	@Column(nullable=false)
	private int orderId;
	
	@Column(nullable=false)
	private short seq;
	
	@Column(nullable = false)
	private int itemId;
	
	public int getOrderdetailId() {
		return this.orderdetailId;
	}
	public void setOrderdetailId(int orderdetailId) {
		this.orderdetailId = orderdetailId;
	}
	
	public int getOrderId() {
		return this.orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public short getSeq() {
		return this.seq;
	}
	public void setSeq(short seq) {
		this.seq = seq;
	}
	
	public int getItemId() {
		return this.itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////

	@Column(nullable=false, precision=10, scale=2)
	private BigDecimal price;

	@Column(nullable=false)
	private int quantity;

	@Column(nullable=false, precision=10, scale=2)
	private BigDecimal total;

//	//bi-directional many-to-one association to Items
//	@ManyToOne(fetch=FetchType.LAZY)
//	@JoinColumn(name="itemId", nullable=false)
//	private Items item;
//
//	//bi-directional many-to-one association to Orders
//	@ManyToOne(fetch=FetchType.LAZY)
//	@JoinColumn(name="orderId", nullable=false, insertable=false, updatable=false)
//	private Orders order;

	public OrderDetails() {
	}

//	public OrderDetailsPK getId() {
//		return this.id;
//	}
//
//	public void setId(OrderDetailsPK id) {
//		this.id = id;
//	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

//	public Items getItem() {
//		return this.item;
//	}
//
//	public void setItem(Items item) {
//		this.item = item;
//	}
//
//	public Orders getOrder() {
//		return this.order;
//	}
//
//	public void setOrder(Orders order) {
//		this.order = order;
//	}

}