package org.dmontes.salango.service;

import org.dmontes.salango.dao.AdminsDAO;
import org.dmontes.salango.entity.Admins;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminsServiceImpl implements AdminsService {

	// need to inject UserWebAdmin dao
	@Autowired
	private AdminsDAO adminDAO;

	@Override
	@Transactional
	public Admins getAdminById(String adminId) {
		return adminDAO.getAdminById(adminId);
	}

	@Override
	@Transactional
	public void saveAdmin(Admins admin) {
		adminDAO.saveAdmin(admin);
	}

}
