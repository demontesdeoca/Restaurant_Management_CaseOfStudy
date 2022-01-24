package org.dmontes.salango.dao;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.Admins;
import org.hibernate.Session;
import org.hibernate.query.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.hibernate.SessionFactory;

@Repository
public class AdminsDAOImpl implements AdminsDAO {

	
	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Admins getAdminById(String adminId) {
		// Transaction transaction = null;
		Admins admin = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();

			Query<Admins> theQuery = currentSession.createNamedQuery("Admins.findByAdminId", Admins.class);
			theQuery.setParameter("padminid", adminId);
			admin = theQuery.getSingleResult();
			// commit transaction
			// transaction.commit();

		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
	@Override
	public void saveAdmin(Admins admin) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the record
			currentSession.update(admin);

	}

}
