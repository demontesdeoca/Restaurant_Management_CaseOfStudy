package org.dmontes.salango.service;

import org.dmontes.salango.entity.Admins;

public interface AdminsService {
	public void saveAdmin(Admins admin);
	
	public Admins getAdminById (String adminId);
}
