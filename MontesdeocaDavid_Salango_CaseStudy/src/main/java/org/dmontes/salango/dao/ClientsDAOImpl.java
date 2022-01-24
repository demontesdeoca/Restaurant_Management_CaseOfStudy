package org.dmontes.salango.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.Clients;
import org.dmontes.salango.entity.Items;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClientsDAOImpl implements ClientsDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Clients getClientById(int clientId) {
		Clients client = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			client = currentSession.get(Clients.class, clientId);

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

		return client;
	}

	@Override
	public List<Clients> getClients() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query ... sort by last name
		Query<Clients> theQuery = currentSession.createQuery("from clients order by lastName", Clients.class);

		// execute query and get result list
		List<Clients> clients = theQuery.getResultList();

		// return the results
		return clients;
	}

	@Override
	public void saveClient(Clients theClient) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
		currentSession.save(theClient);

	}

	@Override
	public Clients getClientByEmail(String sEmail) {
		// Transaction transaction = null;
		Clients client = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();

			Query<Clients> theQuery = currentSession.createNamedQuery("Clients.findByEmail", Clients.class);
			theQuery.setParameter("pemail", sEmail);
			client = theQuery.getSingleResult();

			// commit transaction

			// transaction.commit();

		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
//			if (transaction != null) {
//				transaction.rollback();
//			}
			e.printStackTrace();
		}
		return client;
	}

	@Override
	public void UpdateClient(Clients client) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// save the record
			currentSession.update(client);
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void DeleteClient(Clients client) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// save the record
			currentSession.delete(client);
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
