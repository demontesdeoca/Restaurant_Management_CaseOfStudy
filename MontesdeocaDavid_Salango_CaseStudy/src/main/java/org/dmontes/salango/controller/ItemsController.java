package org.dmontes.salango.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.dmontes.salango.entity.Items;
import org.dmontes.salango.service.GenericUtil;
import org.dmontes.salango.service.ItemsService;

@Controller
@RequestMapping("/itemsCRUD")
public class ItemsController {

	// need to inject our items service
	@Autowired
	private ItemsService itemsService;

	@Autowired
	private GenericUtil genericUtil;

	@GetMapping("/menuopt")
	public String showMenuOpt(@RequestParam(value = "menopt") String menoption, Model theModel, HttpSession session) {

		theModel = genericUtil.genNavSettings(theModel, session);
		// create model attribute to bind form data
		List<Items> items = null;

		items = itemsService.getItemsByType(menoption.toUpperCase());
		if (items.size() == 0) {
			theModel.addAttribute("hideS1", "Y");
			theModel.addAttribute("hideS2", "Y");
			theModel.addAttribute("hideS3", "Y");
			theModel.addAttribute("hideS4", "Y");
			theModel.addAttribute("hideS5", "Y");
			theModel.addAttribute("hideS6", "Y");
		} else {
			switch (menoption.toUpperCase()) {
			case "SOUP":
				theModel.addAttribute("hideS1", "N");
				theModel.addAttribute("soups", items);
				break;
			case "APPETIZER":
				theModel.addAttribute("hideS2", "N");
				theModel.addAttribute("appets", items);
				break;
			case "ENTREE":
				theModel.addAttribute("hideS3", "N");
				theModel.addAttribute("entrees", items);
				break;
			case "SALAD":
				theModel.addAttribute("hideS4", "N");
				theModel.addAttribute("salads", items);
				break;
			case "DESSERT":
				theModel.addAttribute("hideS5", "N");
				theModel.addAttribute("desserts", items);
				break;
			case "DRINK":
				theModel.addAttribute("hideS6", "N");
				theModel.addAttribute("drinks", items);
				break;
			}
		}
		return "menu";
	}

	@GetMapping("/menu")
	public String showMenu(Model theModel, HttpSession session) {

		theModel = genericUtil.genNavSettings(theModel, session);

		// create model attribute to bind form data
		List<Items> items = null;
		items = itemsService.getItemsByType("SOUP");
		if (items.size() == 0)
			theModel.addAttribute("hideS1", "Y");
		else
			theModel.addAttribute("hideS1", "N");
		theModel.addAttribute("soups", items);

		items = itemsService.getItemsByType("APPETIZER");
		if (items.size() == 0)
			theModel.addAttribute("hideS2", "Y");
		else
			theModel.addAttribute("hideS2", "N");
		theModel.addAttribute("appets", items);

		items = itemsService.getItemsByType("ENTREE");
		if (items.size() == 0)
			theModel.addAttribute("hideS3", "Y");
		else
			theModel.addAttribute("hideS3", "N");
		theModel.addAttribute("entrees", items);

		items = itemsService.getItemsByType("SALAD");
		if (items.size() == 0)
			theModel.addAttribute("hideS4", "Y");
		else
			theModel.addAttribute("hideS4", "N");
		theModel.addAttribute("salads", items);

		items = itemsService.getItemsByType("DESSERT");
		if (items.size() == 0)
			theModel.addAttribute("hideS5", "Y");
		else
			theModel.addAttribute("hideS5", "N");
		theModel.addAttribute("desserts", items);

		items = itemsService.getItemsByType("DRINK");
		if (items.size() == 0)
			theModel.addAttribute("hideS6", "Y");
		else
			theModel.addAttribute("hideS6", "N");
		theModel.addAttribute("drinks", items);

		// List<Items> itemsList = new ArrayList<Items>();
		Items item = new Items();
		theModel.addAttribute("items", item);

		return "menu";
	}

	@RequestMapping("/itemCRUD")
	public String genericCRUD(Model theModel, HttpSession session) {
		String destView = "items";
		Items item = null;
		theModel.addAttribute("validate", "return validateItemCRUD();");
		switch (session.getAttribute("SESSION_ACTION").toString().toUpperCase()) {
		case "ADD NEW":
			item = new Items();
			theModel.addAttribute("deleted", "N");
			theModel.addAttribute("action", "Save");
			break;
		case "DELETE":
			item = itemsService.getItemById((int) (session.getAttribute("SESSION_IDROW")));
			theModel.addAttribute("deleted", item.getDeleted());
			theModel.addAttribute("action", "Delete");
			break;
		case "UPDATE":
			item = itemsService.getItemById((int) (session.getAttribute("SESSION_IDROW")));
			theModel.addAttribute("deleted", item.getDeleted());
			theModel.addAttribute("action", "Update");
			break;
		}
		theModel.addAttribute("items", item);

		return destView;
	}

	@PostMapping("/dopost")
	public String doPost(@ModelAttribute("items") Items theItem, @RequestParam(value = "action") String action,
			@RequestParam(value = "deleted") String deleted, Model theModel) {
		String destView = "";
		try {
			switch (action.toUpperCase()) {
			case "SAVE":
				itemsService.SaveItem(theItem);
				break;
			case "DELETE":
				itemsService.DeleteItem(theItem);
				break;
			case "UPDATE":
				theItem.setDeleted(deleted);
				itemsService.UpdateItem(theItem);
				break;
			}
			destView = "redirect:/admin/menuCRUD";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}

		return destView;
	}

	@RequestMapping(params = "cancel")
	public String cancel(@ModelAttribute("items") Items theItem, Model theModel) {
		return "redirect:/admin/menuCRUD";
	}

	

}
