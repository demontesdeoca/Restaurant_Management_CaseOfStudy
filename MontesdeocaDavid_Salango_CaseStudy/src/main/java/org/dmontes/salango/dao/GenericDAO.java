package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Generic;

public interface GenericDAO {
	public List<Generic> getRecords(String entityModel, String idRecord);
}
