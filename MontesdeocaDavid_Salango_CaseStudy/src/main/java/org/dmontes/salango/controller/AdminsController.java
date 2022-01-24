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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.dmontes.salango.entity.Admins;
import org.dmontes.salango.entity.Generic;
import org.dmontes.salango.entity.Orders;
import org.dmontes.salango.service.SecurityServiceImpl;
import org.dmontes.salango.service.AdminsService;
import org.dmontes.salango.service.GenericUtil;
import org.dmontes.salango.service.OrdersService;

@Controller
@RequestMapping("/admin")
public class AdminsController {

	// need to inject our admin service
	@Autowired
	private AdminsService adminservice;

	@Autowired
	private OrdersService ordersService;

	@Autowired
	private GenericUtil genericUtil;

	@GetMapping("/menuCRUD")
	public String Menu(Model theModel, HttpSession session) {
		String destView = "";
		// create model attribute to bind form data
		List<Generic> genericTable = null;

		try {
			genericTable = genericUtil.getRecords("ITEMS", "0");
			List<Generic> genericHeaders = genericUtil.getHeaders("ITEMS");
			theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
			theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
			theModel.addAttribute("userlogged", "Y");

			theModel.addAttribute("actionpage", "genericCRUD");
			theModel.addAttribute("cantcols", 5);

			theModel.addAttribute("TABLE_HEADERS", genericHeaders);

			theModel.addAttribute("TABLE_ROWS", genericTable);

			theModel.addAttribute("pagetitle", "Menu Configuration");
			theModel.addAttribute("loginadmin", "Y");
			theModel.addAttribute("modelattribute", "items");
			theModel.addAttribute("entityname", "items");
			theModel.addAttribute("typeofcommands", "1");
			theModel.addAttribute("validate", "return genericValidate();");
			destView = "generic";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}
		return destView;
	}

	@GetMapping("/ordersR")
	public String OrdersR(Model theModel, HttpSession session) {
		String destView = "";
		// create model attribute to bind form data
		List<Generic> genericTable = null;

		try {
			genericTable = genericUtil.getRecords("ORDERS", "0");
			List<Generic> genericHeaders = genericUtil.getHeaders("ORDERS");
			theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
			theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
			theModel.addAttribute("userlogged", "Y");

			theModel.addAttribute("actionpage", "genericCRUD");
			theModel.addAttribute("cantcols", 6);

			theModel.addAttribute("TABLE_HEADERS", genericHeaders);

			theModel.addAttribute("TABLE_ROWS", genericTable);

			theModel.addAttribute("pagetitle", "Orders");
			theModel.addAttribute("loginadmin", "Y");
			theModel.addAttribute("modelattribute", "orders");
			theModel.addAttribute("entityname", "orders");
			theModel.addAttribute("typeofcommands", "2");
			theModel.addAttribute("validate", "return genericValidate();");
			destView = "generic";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}
		return destView;
	}

	// @GetMapping("/ordersD")
	public String OrdersD(Model theModel, HttpSession session, String idRow) {
		String destView = "";
		// create model attribute to bind form data
		List<Generic> genericTable = null;

		try {
			genericTable = genericUtil.getRecords("ORDERDETAILS", idRow);
			List<Generic> genericHeaders = genericUtil.getHeaders("ORDERDETAILS");
			theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
			theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
			theModel.addAttribute("userlogged", "Y");

			theModel.addAttribute("actionpage", "genericCRUD");
			theModel.addAttribute("cantcols", 8);

			theModel.addAttribute("TABLE_HEADERS", genericHeaders);

			theModel.addAttribute("TABLE_ROWS", genericTable);

			theModel.addAttribute("pagetitle", "Orders");
			theModel.addAttribute("loginadmin", "Y");
			theModel.addAttribute("modelattribute", "orderdetails");
			theModel.addAttribute("entityname", "orderdetails");
			theModel.addAttribute("typeofcommands", "3");
			theModel.addAttribute("validate", "return genericValidate();");
			destView = "generic";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}
		return destView;
	}

	@GetMapping("/clients")
	public String Clients(Model theModel, HttpSession session) {
		String destView = "";
		// create model attribute to bind form data
		List<Generic> genericTable = null;

		try {
			genericTable = genericUtil.getRecords("CLIENTS", "0");
			List<Generic> genericHeaders = genericUtil.getHeaders("CLIENTS");
			theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
			theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
			theModel.addAttribute("userlogged", "Y");

			theModel.addAttribute("actionpage", "genericCRUD");
			theModel.addAttribute("cantcols", 7);

			theModel.addAttribute("TABLE_HEADERS", genericHeaders);

			theModel.addAttribute("TABLE_ROWS", genericTable);

			theModel.addAttribute("pagetitle", "Orders");
			theModel.addAttribute("loginadmin", "Y");
			theModel.addAttribute("modelattribute", "clients");
			theModel.addAttribute("entityname", "clients");
			theModel.addAttribute("typeofcommands", "1");
			theModel.addAttribute("validate", "return genericValidate();");
			destView = "generic";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}
		return destView;
	}

	@PostMapping("/genericCRUD")
	public String genericCRUD(@RequestParam int idRow, @RequestParam(value = "action") String action,
			@RequestParam(value = "entityname") String entityName, HttpServletRequest request, Model theModel,
			HttpSession session) {
		String destView = "";
		request.getSession().setAttribute("SESSION_IDROW", idRow);
		request.getSession().setAttribute("SESSION_ACTION", action);
		request.getSession().setAttribute("SESSION_ENTITYNAME", entityName);

		switch (entityName) {
		case "items":
			destView = "redirect:/itemsCRUD/itemCRUD";
			break;
		case "orders":
			switch (action.toUpperCase()) {
			case "SEE DETAILS":
				destView = OrdersD(theModel, session, String.valueOf(idRow));
				break;
			case "DELETE":
				Orders order = ordersService.getOrderById(idRow);
				ordersService.deleteOrder(order);
				destView = "redirect:/admin/ordersR";
				break;
			}
		case "orderdetails":
			switch (action.toUpperCase()) {
			case "GO BACK":
				List<Generic> genericTable = null;
				genericTable = genericUtil.getRecords("ORDERS", "0");
				List<Generic> genericHeaders = genericUtil.getHeaders("ORDERS");
				theModel.addAttribute("loginadmin", (String) session.getAttribute("USER_ADMIN"));
				theModel.addAttribute("username", (String) session.getAttribute("USER_SESSION_NAME"));
				theModel.addAttribute("userlogged", "Y");

				theModel.addAttribute("actionpage", "genericCRUD");
				theModel.addAttribute("cantcols", 6);

				theModel.addAttribute("TABLE_HEADERS", genericHeaders);

				theModel.addAttribute("TABLE_ROWS", genericTable);

				theModel.addAttribute("pagetitle", "Orders");
				theModel.addAttribute("loginadmin", "Y");
				theModel.addAttribute("modelattribute", "orders");
				theModel.addAttribute("entityname", "orders");
				theModel.addAttribute("typeofcommands", "2");
				theModel.addAttribute("validate", "return genericValidate();");
				destView = "generic";
				break;
			case "DELETE":
				destView = "redirect:/admin/ordersR";
				break;
			}
			break;

		case "clients":
			destView = "redirect:/clientsCRUD/clientCRUD";
			break;
		}

		return destView;
	}

	// TODO
	@PostMapping("/executeCRUD")
	public String executeCRUD(@ModelAttribute("admins") Admins theAdmin, BindingResult result, SessionStatus status,
			Model theModel, HttpServletRequest request, HttpSession session) {
		String destView = "";

		return destView;

	}

	@GetMapping("/login")
	public String Login(Model theModel, HttpSession session) {
		String destView = "";
		Admins admin = new Admins();
		try {
			theModel.addAttribute("admins", admin);
			theModel.addAttribute("loginadmin", "Y");
			theModel.addAttribute("labelpathfield", "User Name");
			theModel.addAttribute("modelattribute", "admins");
			theModel.addAttribute("pathfield", "adminId");
			theModel.addAttribute("validatelogin", "return validateLogInAdmin();");
			destView = "login";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}

		return destView;
	}

	@PostMapping("/dologin")
	public String dologin(@ModelAttribute("admins") Admins theAdmin, BindingResult result, SessionStatus status,
			Model theModel, HttpServletRequest request, HttpSession session) {
		StringBuilder strbldr = new StringBuilder();
		SecurityServiceImpl securityService = new SecurityServiceImpl();
		String destView = "";
		try {
			Admins admin = adminservice.getAdminById(theAdmin.getAdminId());
			if (admin == null) {
				theModel.addAttribute("admins", theAdmin);
				theModel.addAttribute("loginadmin", "Y");
				theModel.addAttribute("labelpathfield", "User Name");
				theModel.addAttribute("modelattribute", "admins");
				theModel.addAttribute("pathfield", "adminId");
				theModel.addAttribute("validatelogin", "return validateLogInAdmin();");
				theModel.addAttribute("message", "Admin user does not exist");
				destView = "login";
			} else { // user exists
				// password is reset to set the new password
				if (admin.getPassword().equals("0")) {
					admin.setPassword(SecurityServiceImpl.PasswordEncoded(theAdmin.getPassword()));
					adminservice.saveAdmin(admin);
				}

				if (securityService.ValidatePWD(admin.getPassword(), theAdmin.getPassword())) {
//				strbldr.append("<script type=\"text/javascript\">");
//				strbldr.append("alert('Welcome!');");
//				strbldr.append("</script>");
//				theModel.addAttribute("message", strbldr);
					request.getSession().setAttribute("USER_ADMIN", "Y");
					request.getSession().setAttribute("USER_SESSION", admin.getAdminId());
					request.getSession().setAttribute("USER_SESSION_NAME", admin.getFullName());
					request.getSession().setAttribute("USER_ID", "1");
					destView = "redirect:/init/main";
				} else {
					theModel.addAttribute("admins", theAdmin);
					theModel.addAttribute("loginadmin", "Y");
					theModel.addAttribute("labelpathfield", "User Name");
					theModel.addAttribute("modelattribute", "admins");
					theModel.addAttribute("pathfield", "adminId");
					theModel.addAttribute("validatelogin", "return validateLogInAdmin();");
					theModel.addAttribute("message", "user or password incorrect");
					destView = "login";
				}
			}
		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}
		return destView;
	}

	@GetMapping("/logout")
	public String LogOut(HttpServletRequest request) {
		String destView = "";
		try {
			request.getSession().invalidate();
			destView = "redirect:/init/main";
		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}

		return destView;
	}
}
