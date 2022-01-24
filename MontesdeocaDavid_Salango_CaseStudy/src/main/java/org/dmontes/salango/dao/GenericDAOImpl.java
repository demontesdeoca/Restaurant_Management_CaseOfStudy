package org.dmontes.salango.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.Generic;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenericDAOImpl implements GenericDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Generic> getRecords(String entityModel, String idRecord) {
		List<Generic> records = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();

			Query<Generic> theQuery = currentSession.createNativeQuery(sQuery(entityModel, idRecord), Generic.class);

			records = theQuery.getResultList();

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
		return records;
	}

	private String sQuery(String entityModel, String idRecord) {
		String sqlStr = null;
		switch (entityModel) {
		case "ITEMS":
			sqlStr = "select generic.itemId as fld0, generic.name as fld1, generic.type as fld2, generic.description as fld3,"
					+ " generic.price as fld4, null as fld5, null as fld6, null as fld7, null as fld8, null as fld9 from items generic";
			break;
		case "ORDERS":
			sqlStr = "select generic.orderId as fld0, generic.locationid as fld1,  CONCAT(clients.firstName, ' ', clients.lastname)  as fld2, generic.date as fld3,"
					+ " generic.total as fld4, generic.status as fld5, null as fld6, null as fld7, null as fld8, null as fld9 "
					+ "from orders generic, clients clients where generic.clientid = clients.clientid";
			break;
		case "ORDERDETAILS":
			sqlStr = "select generic.orderdetailId as fld0, generic.orderid as fld1, generic.seq  as fld2, generic.itemid as fld3,"
					+ " items.name as fld4, generic.price as fld5, generic.quantity as fld6, null as fld7, null as fld8, null as fld9 "
					+ "from orderdetails generic, items items where generic.itemid = items.itemid and generic.orderid = " + idRecord;
			break;
		case "CLIENTS":
			sqlStr = "select generic.clientid as fld0, CONCAT(generic.firstName, ' ', generic.lastname) as fld1, generic.lastlogin as fld2, generic.city as fld3,"
					+ " generic.country as fld4, generic.phone as fld5, generic.zipcode as fld6, null as fld7, null as fld8, null as fld9 "
					+ "from clients generic";
			break;
		}
		return sqlStr;
	}
}
