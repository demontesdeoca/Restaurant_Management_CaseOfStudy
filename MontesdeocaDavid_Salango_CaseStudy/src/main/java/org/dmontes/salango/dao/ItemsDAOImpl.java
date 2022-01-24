package org.dmontes.salango.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.dmontes.salango.entity.Generic;
import org.dmontes.salango.entity.Items;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;

@Repository
public class ItemsDAOImpl implements ItemsDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Items> getItemsByType(String stype) {
		// Transaction transaction = null;
		List<Items> items = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();

			Query<Items> theQuery = currentSession.createNamedQuery("Items.findByType", Items.class);
			theQuery.setParameter("pdeleted", "N");
			theQuery.setParameter("ptype", stype);
			items = theQuery.getResultList();

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
		return items;
	}

	@Override
	public Items getItemById(int itemId) {
		Items item = null;
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// start a transaction
			// transaction = currentSession.getTransaction();
			item = currentSession.get(Items.class, itemId);

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

		return item;
	}

	@Override
	public void SaveItem(Items item) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// save the record
			currentSession.save(item);
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void UpdateItem(Items item) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// save the record
			currentSession.update(item);
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void DeleteItem(Items item) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			// save the record
			currentSession.delete(item);
		} catch (NoResultException e) {
			System.out.println("No entity found");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Generic> getItemsCOGen(List<String> itemsIds, List<String> qtys) {
		List<Generic> itemsGeneric = new ArrayList<Generic>();
		Items item = null;
		Generic generic = null;
		for (int i = 0; i < itemsIds.size(); i++) {
			item = getItemById(Integer.parseInt(itemsIds.get(i)));
			String[] a =  {String.valueOf(item.getItemId()), item.getName(), item.getDescription(), item.getPrice().toString(), qtys.get(i)};
			generic = new Generic(a);
			itemsGeneric.add(generic);
		}
		return itemsGeneric;
	}
	
	@Override
	public List<Items> getItemsCO(List<String> itemsIds, List<String> qtys) {
		List<Items> items = new ArrayList<>();
		Items item = null;
		for (int i = 0; i < itemsIds.size(); i++) {
			item = getItemById(Integer.parseInt(itemsIds.get(i)));
			item.setImage(qtys.get(i));
			items.add(item);
		}
		return items;
	}
}
