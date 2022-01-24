package org.dmontes.salango.entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the orderdetails database table.
 * 
 */
@Embeddable
public class OrderDetailsPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(insertable=false, updatable=false, unique=true, nullable=false)
	private int orderId;

	@Column(unique=true, nullable=false)
	private short orderdetailId;

	public OrderDetailsPK() {
	}
	public int getOrderId() {
		return this.orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public short getOrderdetailId() {
		return this.orderdetailId;
	}
	public void setOrderdetailId(short orderdetailId) {
		this.orderdetailId = orderdetailId;
	}

	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof OrderDetailsPK)) {
			return false;
		}
		OrderDetailsPK castOther = (OrderDetailsPK)other;
		return 
			(this.orderId == castOther.orderId)
			&& (this.orderdetailId == castOther.orderdetailId);
	}

	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.orderId;
		hash = hash * prime + ((int) this.orderdetailId);
		
		return hash;
	}
}