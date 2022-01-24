package org.dmontes.salango.testing;

import static org.junit.jupiter.api.Assertions.*;

import java.lang.reflect.Field;
import java.util.List;

import org.dmontes.salango.entity.Items;
import org.dmontes.salango.service.ItemsService;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;

class TestingItems {

	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	static ItemsService itemservice ;

	@BeforeClass
	public static void init() {
		
	}

	@Test
	public void testItemById() {
		String nameItem = "Soup 1";
		Items item = itemservice.getItemById(1); 
		Assert.assertEquals("Checks if existes records in items" + nameItem, nameItem, item.getName());
	}


	@Test
	public void testGetItemsByType() {
		List<Items> item = itemservice.getItemsByType("SOUP");
		Assert.assertTrue(!item.isEmpty());
	}

	@Test
	public void testStudentNoPublicField() {
		Field firstField = Items.class.getFields()[0];
		Assert.fail("Item should only contain the private instance variables " + firstField.getName());
	}

	
}
