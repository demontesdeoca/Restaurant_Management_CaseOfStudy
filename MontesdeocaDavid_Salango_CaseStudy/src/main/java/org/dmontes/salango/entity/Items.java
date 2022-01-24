package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.List;

/**
 * The persistent class for the items database table.
 * 
 */
@Entity
@Table(name = "items")
/* @NamedQuery(name="Items.findAll", query="SELECT i FROM Items i") */
@NamedQuery(name = "Items.findByType", query = "FROM Items i where i.deleted =:pdeleted and i.type =:ptype")
//@NamedQueries(  
//  {  
//    @NamedQuery(name = "Items.findAll", query = "SELECT i FROM Items i"),  
//    @NamedQuery(name = "Items.findByType", query = "FROM items where deleted ='N' and type =:ptype")
//  }  
//)  
public class Items implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(unique = true, nullable = false)
	private int itemId;

	@Column(nullable = false, length = 1)
	private String deleted;

	@Lob
	@Column(nullable = false)
	private String description;

	@Column(length = 500)
	private String image;

	@Column(nullable = false, length = 70)
	private String name;

	@Column(nullable = false, precision = 10, scale = 2)
	private BigDecimal price;

	@Column(nullable = false, length = 50)
	private String type;

//	//bi-directional many-to-one association to Orderdetails
//	@OneToMany(mappedBy="item")
//	private List<OrderDetails> orderdetails;

	public Items() {
	}

	public int getItemId() {
		return this.itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getDeleted() {
//		if (this.deleted == "Y")
//			return "1";
//		else
//			return "0";
		return this.deleted;
	}

	public void setDeleted(String deleted) {
//		if (deleted == "1")
//			this.deleted = "Y";
//		else
//			this.deleted = "N";
		this.deleted = deleted;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
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
//		orderdetail.setItem(this);
//
//		return orderdetail;
//	}
//
//	public OrderDetails removeOrderdetail(OrderDetails orderdetail) {
//		getOrderdetails().remove(orderdetail);
//		orderdetail.setItem(null);
//
//		return orderdetail;
//	}

}