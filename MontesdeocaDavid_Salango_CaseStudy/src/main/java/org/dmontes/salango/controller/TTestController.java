package org.dmontes.salango.controller;


import org.dmontes.salango.entity.Ttest;
import org.dmontes.salango.service.TTestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ttest")
public class TTestController {

	
	// need to inject our customer service
	@Autowired
	private TTestService tTestService;
	
	@GetMapping("/form-test")
	public String saveTest(Model theModel) {

		// create model attribute to bind form data
		Ttest theTest= new Ttest();

		theModel.addAttribute("ttest", theTest);
		return "TTest";
	}
	
	@PostMapping("/saveTest")
	public String saveTest(@ModelAttribute("ttest") Ttest theTest) {
		
		// save the customer using our service
		tTestService.saveTest(theTest);
		
		
		return "redirect:/init/main";
		//return "signup";
	}
	
}
