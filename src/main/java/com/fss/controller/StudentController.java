package com.fss.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fss.model.Student;

@Controller
@RequestMapping("/")
public class StudentController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView student() {
		return new ModelAndView("student", "command", new Student());
	}
	
	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("SpringWeb")Student student, ModelMap model) {
		model.addAttribute("id", student.getId());
		model.addAttribute("name", student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("gender", student.isGender());
		model.addAttribute("subjects", student.getSubjects());
		return "result";
	}
	
	//Page Redirection 
/*	@RequestMapping(value="/redirect", method = RequestMethod.GET)
	public String redirect() {    
		return "redirect:finalPage";
	}
	
	@RequestMapping(value="/finalPage", method = RequestMethod.GET)
	public String finalPage() {
		return "redirectPage";
	}
*/
	
	@ModelAttribute("registerSubjects")
	public List<String> getRegisterSubjects(){
		List<String> registerSubjects = new ArrayList<String>();
		registerSubjects.add("Mathematics");
		registerSubjects.add("Database");
		registerSubjects.add("Data Structure and Algorithms");
		registerSubjects.add("Software Engineering");
		registerSubjects.add("Otomat");
		registerSubjects.add("Image Processing");
		registerSubjects.add("Machine Learning");
		return registerSubjects;
	}
	
	//Static pages
	@RequestMapping(value="/staticPage", method = RequestMethod.GET)
	public String staticPage() {
		return "redirect:/pages/final.htm";
	}
}
