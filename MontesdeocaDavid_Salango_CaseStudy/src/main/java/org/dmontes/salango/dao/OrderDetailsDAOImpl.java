package org.dmontes.salango.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.OrderDetails;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDetailsDAOImpl implements OrderDetailsDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<OrderDetails> getOrderDetails(int orderId) {
		List<OrderDetails> orderdetails = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			Query<OrderDetails> theQuery = currentSession.createNamedQuery("OrderDetails.findByOrderId", OrderDetails.class);
			theQuery.setParameter("porderid", orderId);
			orderdetails = theQuery.getResultList();
			// commit transaction
			// transaction.commit();
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderdetails;
	}

	@Override
	public void saveOrderDetails(OrderDetails theOrderDetail) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
		currentSession.save(theOrderDetail);
	}

	@Override
	public void updateOrderDetails(OrderDetails theOrderDetail) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
		currentSession.update(theOrderDetail);
	}

	@Override
	public void deleteOrderDetails(OrderDetails theOrderDetail) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// save the record
		currentSession.delete(theOrderDetail);
	}


}
