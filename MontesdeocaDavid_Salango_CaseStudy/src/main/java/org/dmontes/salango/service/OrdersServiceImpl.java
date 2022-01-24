package org.dmontes.salango.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.dmontes.salango.dao.OrderDetailsDAO;
import org.dmontes.salango.dao.OrdersDAO;
import org.dmontes.salango.entity.Items;
import org.dmontes.salango.entity.OrderDetails;
import org.dmontes.salango.entity.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrdersServiceImpl implements OrdersService {

	// need to inject orders dao
	@Autowired
	private OrdersDAO ordersDAO;

	@Autowired
	private OrderDetailsDAO orderdetailsDAO;

	@Override
	@Transactional
	public List<Orders> getOrders() {
		return ordersDAO.getOrders();
	}

	@Override
	@Transactional
	public List<Orders> getOrdersByClient(int clientId) {
		return ordersDAO.getOrdersByClient(clientId);
	}

	@Override
	@Transactional
	public void saveOrder(Orders theOrder) {
		ordersDAO.saveOrder(theOrder);
	}

	@Override
	@Transactional
	public void updateOrder(Orders theOrder) {
		ordersDAO.updateOrder(theOrder);
	}

	@Override
	@Transactional
	public void deleteOrder(Orders theOrder) {
		
		//first delete details
		List<OrderDetails>  orderDetails = new ArrayList<>();
		orderDetails = orderdetailsDAO.getOrderDetails(theOrder.getOrderId());
		for (OrderDetails orderdetail : orderDetails) {
			orderdetailsDAO.deleteOrderDetails(orderdetail);
		}
		ordersDAO.deleteOrder(theOrder);
	}

	@Override
	@Transactional
	public Orders getOrderById(int orderId) {
		return ordersDAO.getOrderById(orderId);
	}

	@Override
	@Transactional
	public boolean createOrder(List<Items> items, int clientId) {
		try {
			Orders order = new Orders();
			order.setClientId(clientId);
			order.setLocationId(1);
			order.setComments("N/A");
			order.setDate(new java.util.Date());
			order.setStatus("CREATED");

			BigDecimal percentagetax = BigDecimal.valueOf(0.078);
			BigDecimal subtotal = BigDecimal.valueOf(0);
			BigDecimal tax = BigDecimal.valueOf(0);
			BigDecimal total = BigDecimal.valueOf(0);
			BigDecimal qty = BigDecimal.valueOf(0);
			for (Items item : items) {
				qty = BigDecimal.valueOf(Double.valueOf(item.getImage()));
				subtotal = subtotal.add(item.getPrice().multiply(qty));
				tax = tax.add(item.getPrice().multiply(percentagetax));
				total = subtotal.add(tax);
			}
			order.setSubtotal(subtotal);
			order.setTotal(total);
			order.setTax(tax);
			order.setPercentagetax(percentagetax);

			saveOrder(order);

			short orderDetailSeq = 1;
			for (Items item : items) {
				OrderDetails orderDetail = new OrderDetails();
				orderDetail.setOrderId(order.getOrderId());
				orderDetail.setSeq(orderDetailSeq);
				orderDetail.setItemId(item.getItemId());
				orderDetail.setQuantity(Integer.valueOf(item.getImage()));
				orderDetail.setPrice(item.getPrice());
				qty = BigDecimal.valueOf(Double.valueOf(item.getImage()));
				orderDetail.setTotal(item.getPrice().multiply(qty));
				orderdetailsDAO.saveOrderDetails(orderDetail);
				orderDetailSeq += 1;
			}

		} catch (Exception ex) {
			return false;
		}
		return true;
	}

}
