package org.dmontes.salango.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.dmontes.salango.dao.GenericDAO;
import org.dmontes.salango.entity.Generic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

@Service
public class GenericUtil {

	// need to inject generic dao
	@Autowired
	private GenericDAO genericDAO;

	@Transactional(readOnly = true)
	public List<Generic> getRecords(String entityModel, String idRecord) {
		return genericDAO.getRecords(entityModel, idRecord);
	}

	public List<Generic> getHeaders(String entityModel) {
		// header = new Generic(new String[] { "Id", "Description", "Type" });
		List<Generic> headers = new ArrayList<>();
		Generic header = null;
		switch (entityModel) {
		case "ITEMS":
			header = new Generic("Id");
			headers.add(header);
			header = new Generic("Name");
			headers.add(header);
			header = new Generic("Description");
			headers.add(header);
			header = new Generic("Type");
			headers.add(header);
			header = new Generic("Price");
			headers.add(header);
			break;
		case "ORDERS":
			header = new Generic("Id");
			headers.add(header);
			header = new Generic("Branch");
			headers.add(header);
			header = new Generic("Client Name");
			headers.add(header);
			header = new Generic("Date");
			headers.add(header);
			header = new Generic("Total Order");
			headers.add(header);
			header = new Generic("Status");
			headers.add(header);
			break;
		case "ORDERDETAILS":
			header = new Generic("Id");
			headers.add(header);
			header = new Generic("Id Order");
			headers.add(header);
			header = new Generic("Seq. Detail");
			headers.add(header);
			header = new Generic("Id. Item");
			headers.add(header);
			header = new Generic("Item Name");
			headers.add(header);
			header = new Generic("Price");
			headers.add(header);
			header = new Generic("Qty");
			headers.add(header);
			header = new Generic("Total");
			headers.add(header);
			break;
		case "CLIENTS":
			header = new Generic("Id");
			headers.add(header);
			header = new Generic("Name");
			headers.add(header);
			header = new Generic("Last date online");
			headers.add(header);
			header = new Generic("City");
			headers.add(header);
			header = new Generic("Country");
			headers.add(header);
			header = new Generic("Phone");
			headers.add(header);
			header = new Generic("Zip code");
			headers.add(header);
			break;			
		}
		return headers;
	}

	public Model genNavSettings(Model theModel, HttpSession session) {
		String userSession = "";

		userSession = (String) session.getAttribute("USER_SESSION");
		if (userSession == null) {
			theModel.addAttribute("loginadmin", "N");
			theModel.addAttribute("userlogged", "N");
			session.setAttribute("USER_ID", "1");
		} else {
			theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
			theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
			theModel.addAttribute("userlogged", "Y");
		}
		return theModel;
	}

}
