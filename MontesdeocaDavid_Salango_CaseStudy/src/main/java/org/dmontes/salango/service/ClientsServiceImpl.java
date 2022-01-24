package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.dao.ClientsDAO;
import org.dmontes.salango.entity.Clients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ClientsServiceImpl implements ClientsService {

	// need to inject clients dao
	@Autowired
	private ClientsDAO clientDAO;
	
	@Override
	@Transactional
	public Clients getClientById(int clientId) {
		return clientDAO.getClientById(clientId);
	}
	
	@Override
	@Transactional
	public List<Clients> getClients() {
		return clientDAO.getClients();
	}

	@Override
	@Transactional
	public void saveClient(Clients theClient) {
		theClient.setPassword(theClient.getPassword());
		clientDAO.saveClient(theClient);
	}
	
	@Override
	@Transactional
	public Clients getClientByEmail(String email) {
		return clientDAO.getClientByEmail(email);
	}

	@Override
	public void UpdateClient(Clients client) {
		clientDAO.UpdateClient(client);
	}

	@Override
	public void DeleteClient(Clients client) {
		clientDAO.DeleteClient(client);
	}
}





