package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.OrderDetails;

public interface OrderDetailsDAO {

	public List<OrderDetails> getOrderDetails(int orderId);

	public void saveOrderDetails(OrderDetails theOrderDetail);

	public void updateOrderDetails(OrderDetails theOrderDetail);

	public void deleteOrderDetails(OrderDetails theOrderDetail);

}
