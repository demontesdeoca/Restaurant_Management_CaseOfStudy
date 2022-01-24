package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.entity.Items;
import org.dmontes.salango.entity.Orders;

public interface OrdersService {
	public List<Orders> getOrders();
	
	public List<Orders> getOrdersByClient(int clientId);

	public void saveOrder(Orders theOrder);
	
	public void updateOrder(Orders theOrder);
	
	public void deleteOrder(Orders theOrder);
	
	public Orders getOrderById(int orderId);
	
	public boolean createOrder(List<Items> items, int clientId);
}
