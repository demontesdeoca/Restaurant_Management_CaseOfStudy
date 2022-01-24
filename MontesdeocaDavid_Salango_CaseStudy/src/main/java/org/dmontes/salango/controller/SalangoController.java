package org.dmontes.salango.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.dmontes.salango.entity.Clients;
import org.dmontes.salango.service.ClientsService;
import org.dmontes.salango.service.GenericUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/init")
public class SalangoController {
	
	@Autowired
	private GenericUtil genericUtil;
	
//	@Autowired
//	private ClientsService clientsService;
//	
//	@PostMapping("/savesignup")
//	public String savesignup(@ModelAttribute("init") Clients theClient) {
//		
//		// save the customer using our service
//		//clientsService.saveClient(theClient);
//		
//		
//		return "redirect:/init/main";
//		//return "main";
//	}
	
	@GetMapping("/main")
	public String welcomemain(Model theModel, HttpSession session) {
		
		theModel = genericUtil.genNavSettings(theModel,  session);

		return "main";

	}

	@GetMapping("/contact")
	public String contact(Model theModel) {

		//// get customers from the service
		// List<Customer> theCustomers = customerService.getCustomers();

		//// add the customers to the model
		// theModel.addAttribute("customers", theCustomers);

		// return "list-customers";
		return "contact";

	}

	@GetMapping("/reservation")
	public String reservation(Model theModel) {
		return "reservations";

	}

//	@GetMapping("/showFormForAdd")
//	public String showFormForAdd(Model theModel) {
//
//		// create model attribute to bind form data
//		Clients theCustomer = new Clients();
//
//		theModel.addAttribute("customer", theCustomer);
//
//		return "customer-form";
//	}

}
