package com.adarshonjava.emp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.adarshonjava.emp.bean.Employee;
import com.adarshonjava.emp.exception.EmployeeException;

/**
 * @author Adarsh Chauhan
 *
 */
@Controller
public class EmployeeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView employee() {
		return new ModelAndView("employeeForm", "command", new Employee());
	}
	   
	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("abc")Employee employee, ModelMap model) {
		
		if(employee.getName().length() < 5 ){
	         throw new EmployeeException("Given name is too short");
	    }else{
	    	model.addAttribute("name", employee.getName());
	    }
		if( employee.getAge() < 10 ){
			throw new EmployeeException("Given age is too low");
		}else{
			model.addAttribute("age", employee.getAge());
		}
		model.addAttribute("empId", employee.getEmpId());
		model.addAttribute("salary", employee.getSalary());
		return "employeeDetail";
	}
}
