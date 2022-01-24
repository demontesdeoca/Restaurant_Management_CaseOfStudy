package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.dao.ItemsDAO;
import org.dmontes.salango.entity.Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ItemsServiceImpl implements ItemsService {

	// need to inject items dao
	@Autowired
	private ItemsDAO itemsDAO;

	@Override
	@Transactional
	public List<Items> getItemsByType(String type) {
		return itemsDAO.getItemsByType(type);
	}

	@Override
	@Transactional
	public Items getItemById(int itemId) {
		return itemsDAO.getItemById(itemId);
	}

	@Override
	@Transactional
	public void SaveItem(Items item) {
		itemsDAO.SaveItem(item);
	}

	@Override
	@Transactional
	public void UpdateItem(Items item) {
		itemsDAO.UpdateItem(item);
	}

	@Override
	@Transactional
	public void DeleteItem(Items item) {
		itemsDAO.DeleteItem(item);
	}

	@Override
	@Transactional
	public List<Items> getItemsCO(List<String> itemsIds, List<String> qtys) {
		return itemsDAO.getItemsCO(itemsIds, qtys);
	}
}
