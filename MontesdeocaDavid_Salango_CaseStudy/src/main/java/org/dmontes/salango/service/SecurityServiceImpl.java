package org.dmontes.salango.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class SecurityServiceImpl implements SecurityService {

	@Override
	public boolean ValidatePWD(String cpwd, String tpwd) {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		if (bCryptPasswordEncoder.matches(tpwd, cpwd))
			return true;
		else
			return false;
	}

	public static String PasswordEncoded(String pwd) {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder.encode(pwd);
	}

//	public void LoginSessionStatus(Model appModel, String keyValue) {
//		Object attributeName = null;
//		if (appModel.containsAttribute("userLoggedIn")) {
//			attributeName = appModel.getAttribute("userLoggedIn");
//				appModel.addAttribute("userLoggedIn", keyValue);
//		}
//	}

}
