package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Clients;

public interface ClientsDAO {

	public Clients getClientById(int clientId);
	
	public List<Clients> getClients();

	public void saveClient(Clients theClient);

	public Clients getClientByEmail(String sEmail);

	public void UpdateClient(Clients client);

	public void DeleteClient(Clients client);

}
