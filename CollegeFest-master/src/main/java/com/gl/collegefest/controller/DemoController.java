
package com.gl.collegefest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController {

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	@GetMapping("/access-denied")
	public String showAcceesdenied() {
		System.out.println("in controller");
		return "access-denied";
	}

	@RequestMapping("/save")
	public String saveStudent() {
		return "save";
	}

	@RequestMapping("/update")
	public String updateStudent() {
		return "update";
	}

	@RequestMapping("/delete")
	public String deleteStudent() {
		return "delete";
	}

}
