package org.dmontes.salango.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/sww")
public class ErrCustomController {
	
	@RequestMapping("/showpage")
	public String showPage() {
		return "somethingwrong";
	}
}
