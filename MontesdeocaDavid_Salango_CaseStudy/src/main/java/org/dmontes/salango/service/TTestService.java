package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.entity.Ttest;

public interface TTestService {

	public List<Ttest> getTests();

	public void saveTest(Ttest theTest);
	
}
