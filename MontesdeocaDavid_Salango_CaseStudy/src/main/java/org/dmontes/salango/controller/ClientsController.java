package org.dmontes.salango.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.dmontes.salango.entity.Clients;
import org.dmontes.salango.entity.Items;
import org.dmontes.salango.service.ClientsService;
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

import org.dmontes.salango.service.SecurityServiceImpl;

@Controller
@RequestMapping("/clientsCRUD")
public class ClientsController {

	// need to inject our clients service
	@Autowired
	private ClientsService clientsService;

	@GetMapping("/clientCRUD")
	public String clients(Model theModel, HttpSession session) {
		String destView = "clients";
		Clients client = null;
		// theModel.addAttribute("validate", "return validateItemCRUD();");
		switch (session.getAttribute("SESSION_ACTION").toString().toUpperCase()) {
		case "ADD NEW":
			client = new Clients();
			theModel.addAttribute("deleted", "N");
			theModel.addAttribute("action", "Save");
			break;
		case "DELETE":
			client = clientsService.getClientById((int) (session.getAttribute("SESSION_IDROW")));
			theModel.addAttribute("action", "Delete");
			break;
		case "UPDATE":
			client = clientsService.getClientById((int) (session.getAttribute("SESSION_IDROW")));
			theModel.addAttribute("action", "Update");
			break;
		}
		theModel.addAttribute("clients", client);

		return destView;
	}

	@GetMapping("/signup")
	public String SignUp(Model theModel) {

		// create model attribute to bind form data
		Clients theClient = new Clients();

		theModel.addAttribute("clients", theClient);
		return "signup";
	}

	@PostMapping("/savesignup")
	public String savesignUp(@ModelAttribute("clients") Clients theClient, BindingResult result, SessionStatus status,
			Model theModel) {
		StringBuilder strbldr = new StringBuilder();
		strbldr.append("<script type=\"text/javascript\">");
		strbldr.append("alert('Client suscessfully saved!');");
		strbldr.append("</script>");

		try {
			theClient.setPassword(SecurityServiceImpl.PasswordEncoded(theClient.getPassword()));
			clientsService.saveClient(theClient);
			theModel.addAttribute("message", strbldr);
			return "redirect:/init/main";
		} catch (Exception ex) {
			return "redirect:/sww/showpage";
		}
	}

	@GetMapping("/login")
	public String Login(Model theModel, HttpSession session) {
		String destView = "";
		// String userSession = "";
		Clients theClient = new Clients();
		try {
			theModel.addAttribute("clients", theClient);
			theModel.addAttribute("loginadmin", "N");
			theModel.addAttribute("labelpathfield", "Email");
			theModel.addAttribute("modelattribute", "clients");
			theModel.addAttribute("pathfield", "email");
			theModel.addAttribute("validatelogin", "return validateLogIn();");
			destView = "login";
		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}

		return destView;
	}

	@PostMapping("/dologin")
	public String dologin(@ModelAttribute("clients") Clients theClient, BindingResult result, SessionStatus status,
			Model theModel, HttpServletRequest request, HttpSession session) {
		StringBuilder strbldr = new StringBuilder();
		SecurityServiceImpl securityService = new SecurityServiceImpl();
		String destView = "";
		try {
			Clients client = clientsService.getClientByEmail(theClient.getEmail());
			if (client == null) {
				theModel.addAttribute("clients", theClient);
				theModel.addAttribute("loginadmin", "N");
				theModel.addAttribute("labelpathfield", "Email");
				theModel.addAttribute("modelattribute", "clients");
				theModel.addAttribute("pathfield", "email");
				theModel.addAttribute("validatelogin", "return validateLogIn();");
				theModel.addAttribute("message", "Client does not exist");
				destView = "login";
			} else {
				if (securityService.ValidatePWD(client.getPassword(), theClient.getPassword())) {
//				strbldr.append("<script type=\"text/javascript\">");
//				strbldr.append("alert('Welcome!');");
//				strbldr.append("</script>");
//				theModel.addAttribute("message", strbldr);
					request.getSession().setAttribute("USER_ADMIN", "Y");
					request.getSession().setAttribute("USER_SESSION", client.getEmail());
					request.getSession().setAttribute("USER_SESSION_NAME", client.getFirstName());
					request.getSession().setAttribute("USER_ID", client.getClientId());
					destView = "redirect:/init/main";
				} else {
					theModel.addAttribute("clients", theClient);
					theModel.addAttribute("loginadmin", "N");
					theModel.addAttribute("labelpathfield", "Email");
					theModel.addAttribute("modelattribute", "clients");
					theModel.addAttribute("pathfield", "email");
					theModel.addAttribute("validatelogin", "return validateLogIn();");
					theModel.addAttribute("message", "mail or password incorrect");
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

	@PostMapping("/doclientsCRUD")
	public String doPost(@ModelAttribute("Clients") Clients theClient, @RequestParam(value = "action") String action, Model theModel) {
		String destView = "";
		try {
			switch (action.toUpperCase()) {
			case "SAVE":
				clientsService.saveClient(theClient);
				break;
			case "DELETE":
				clientsService.DeleteClient(theClient);
				break;
			case "UPDATE":
				clientsService.UpdateClient(theClient);
				break;
			}
			destView = "redirect:/admin/clients";

		} catch (Exception ex) {
			destView = "redirect:/sww/showpage";
		}

		return destView;
	}

	@RequestMapping(params = "cancel")
	public String cancel(@ModelAttribute("clients") Clients theClient, Model theModel) {
		return "redirect:/admin/clients";
	}
}
