package org.dmontes.salango.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.Orders;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDAOImpl implements OrdersDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Orders> getOrders() {
		List<Orders> orders = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			Query<Orders> theQuery = currentSession.createQuery("from orders order by date", Orders.class);
			orders = theQuery.getResultList();
			// commit transaction
			// transaction.commit();
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
//					if (transaction != null) {
//						transaction.rollback();
//					}
			e.printStackTrace();
		}
		return orders;

	}

	@Override
	public List<Orders> getOrdersByClient(int clientId) {
		List<Orders> orders = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			Query<Orders> theQuery = currentSession.createNamedQuery("Orders.findByClientId", Orders.class);
			theQuery.setParameter("pclientid", clientId);
			orders = theQuery.getResultList();
			// commit transaction
			// transaction.commit();
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
//					if (transaction != null) {
//						transaction.rollback();
//					}
			e.printStackTrace();
		}
		return orders;

	}

	@Override
	public void saveOrder(Orders theOrder) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
		currentSession.save(theOrder);

	}

	@Override
	public void updateOrder(Orders theOrder) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
		currentSession.update(theOrder);

	}

	@Override
	public void deleteOrder(Orders theOrder) {
		Session currentSession = sessionFactory.getCurrentSession();
		// save the record
		currentSession.delete(theOrder);
	}

	@Override
	public Orders getOrderById(int orderId) {
		Orders order = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			Query<Orders> theQuery = currentSession.createNamedQuery("Orders.findByOrderId", Orders.class);
			theQuery.setParameter("porderid", orderId);
			order = theQuery.getSingleResult();

			// commit transaction
			// transaction.commit();
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
//					if (transaction != null) {
//						transaction.rollback();
//					}
			e.printStackTrace();
		}
		return order;

	}


}
