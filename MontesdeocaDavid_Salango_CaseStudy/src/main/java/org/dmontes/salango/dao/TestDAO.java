package org.dmontes.salango.dao;

import java.util.List;

import org.dmontes.salango.entity.Ttest;

public interface TestDAO {

	public List<Ttest> getTests();

	public void saveTest(Ttest theTest);
	
}