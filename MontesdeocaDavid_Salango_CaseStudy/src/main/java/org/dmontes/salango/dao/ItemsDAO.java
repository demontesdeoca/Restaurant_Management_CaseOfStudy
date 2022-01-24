package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Items;

public interface ItemsDAO {
	
	public List<Items> getItemsByType(String stype);
	
	public Items getItemById(int itemId);
	
	public void SaveItem(Items item);
	
	public void UpdateItem(Items item);
	
	public void DeleteItem(Items item);
	
	public List<Items> getItemsCO(List<String> itemsIds, List<String> qtys);

}
