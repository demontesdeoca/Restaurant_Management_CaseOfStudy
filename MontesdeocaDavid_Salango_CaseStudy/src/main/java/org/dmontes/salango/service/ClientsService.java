package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.entity.Clients;

public interface ClientsService {

	public Clients getClientById(int clientId);
	
	public List<Clients> getClients();

	public void saveClient(Clients theClient);
	
	public Clients getClientByEmail(String email);
	
	public void UpdateClient(Clients client);
	
	public void DeleteClient(Clients client);
	
}
