package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Orders;


public interface OrdersDAO {
	
	public List<Orders> getOrders();
	
	public List<Orders> getOrdersByClient(int clientId);

	public void saveOrder(Orders theOrder);
	
	public void updateOrder(Orders theOrder);
	
	public void deleteOrder(Orders theOrder);
	
	public Orders getOrderById(int orderId);
	
}
