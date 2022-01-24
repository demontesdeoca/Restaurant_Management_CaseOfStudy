package org.dmontes.salango.testing;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.dmontes.salango.entity.Clients;
import org.dmontes.salango.service.ClientsService;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;

class TestingClients {

	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	static ClientsService clientservice ;

	@BeforeClass
	public static void init() {
		
	}

	@Test
	public void testItemById() {
		String name = "David M.";
		Clients client = clientservice.getClientByEmail("yo@hotmail.com"); 
		Assert.assertEquals("Checks if existes records in items" + name, name, client.getFirstName());
	}


	@Test
	public void testGetItemsByType() {
		List<Clients> client = clientservice.getClients();
		Assert.assertTrue(!client.isEmpty());
	}

}
