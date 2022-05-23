package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("/index.jsp")
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String username = null;
		String password = null;
		if(request.getParameter("username") != "" && request.getParameter("password") != "") {
			username = request.getParameter("username");
			password = request.getParameter("password");
			System.out.println("Loi");
		}
		if (username != null && password != null) {
			if (username.equals("admin") && password.equals("admin")) {
				System.out.println(username);
				return new ModelAndView("confirmation", "username", username);
			} else {
				return new ModelAndView("login", "error", "Username or password is invalid");
			}
		}
		return new ModelAndView("login", "error", "Please enter username and password");
	}

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String hello() {
		return "hello";
	}
}
