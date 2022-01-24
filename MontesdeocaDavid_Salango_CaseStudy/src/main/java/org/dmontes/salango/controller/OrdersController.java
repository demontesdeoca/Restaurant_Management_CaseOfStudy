package org.dmontes.salango.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.dmontes.salango.entity.Items;
import org.dmontes.salango.service.GenericUtil;
import org.dmontes.salango.service.ItemsService;
import org.dmontes.salango.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/ordersCRUD")
public class OrdersController {

	// need to inject our items service
	@Autowired
	private ItemsService itemsService;
	
	@Autowired
	private GenericUtil genericUtil;
	
	// need to inject our items service
	@Autowired
	private OrdersService ordersService;
	
	@PostMapping("/docheckout")
	public String docheckout(@ModelAttribute("items") Items theItem, BindingResult result,
			@RequestParam(value = "itemid") List<String> itemsIds, @RequestParam(value = "quantity") List<String> qtys,
			Model theModel, HttpSession session) {
		String destView = "";
		
		theModel = genericUtil.genNavSettings(theModel, session);
		
		List<Items> items = null;
		items = itemsService.getItemsCO(itemsIds, qtys);
		theModel.addAttribute("items", items);

		destView = "checkout";
		return destView;
	}

	@PostMapping("/placeorder")
	public String placeorder(@ModelAttribute("items") Items theItem, BindingResult result,
			@RequestParam(value = "itemid") List<String> itemsIds, @RequestParam(value = "quantity") List<String> qtys,
			Model theModel, HttpSession session) {
		String destView = "";
		
		List<Items> items = null;
		items = itemsService.getItemsCO(itemsIds, qtys);
		int clientID;
		clientID = Integer.parseInt(session.getAttribute("USER_ID").toString());
		if (ordersService.createOrder(items, clientID)) 
			destView = "redirect:/init/main";
		else
			destView = "checkout";
		
		return destView;
	}
	
	@RequestMapping(params = "cancel")
	public String cancel(@ModelAttribute("items") Items theItem, Model theModel) {
		return "redirect:/admin/menuCRUD";
	}

}
