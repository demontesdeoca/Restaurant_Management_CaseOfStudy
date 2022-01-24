package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Ttest;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAOImpl implements TestDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	public List<Ttest> getTests() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query  ... sort by last name
		Query<Ttest> theQuery = 
				currentSession.createQuery("from ttest order by name",
											Ttest.class);
		
		// execute query and get result list
		List<Ttest> tests = theQuery.getResultList();
				
		// return the results		
		return tests;
	}

	@Override
	public void saveTest(Ttest theTest) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.save(theTest);
		
	}

}