package org.dmontes.salango.service;

import java.util.List;

import org.dmontes.salango.entity.Ttest;
import org.dmontes.salango.dao.TestDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TTestServiceImpl implements TTestService {
	

	// need to inject customer dao
	@Autowired
	private TestDAO TestDAO;
	
	@Override
	@Transactional
	public List<Ttest> getTests() {
		return TestDAO.getTests();
	}

	@Override
	@Transactional
	public void saveTest(Ttest theTest) {
		TestDAO.saveTest(theTest);
	}

}
