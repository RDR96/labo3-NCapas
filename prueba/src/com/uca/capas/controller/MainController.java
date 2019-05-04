package com.uca.capas.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.classes.Student;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView initMain() {		
		ModelAndView mav = new ModelAndView();
		
		ArrayList<Student> students = new ArrayList<>();
		
		students.add(new Student("Rodrigo", 22));
		students.add(new Student("Andre", 15));
		students.add(new Student("Maria", 13));
		students.add(new Student("Ernesto", 14));
		students.add(new Student("Andrea", 18));
		
		mav.setViewName("main");
		mav.addObject("students", students);
		mav.addObject("studentsSize", students.size());
		
		return mav;
	}	
	
}
