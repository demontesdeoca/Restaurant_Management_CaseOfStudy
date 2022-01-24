package org.dmontes.salango.dao;

import org.dmontes.salango.entity.Admins;

public interface AdminsDAO {
	public Admins getAdminById(String adminid);
	public void saveAdmin(Admins admin);
}
