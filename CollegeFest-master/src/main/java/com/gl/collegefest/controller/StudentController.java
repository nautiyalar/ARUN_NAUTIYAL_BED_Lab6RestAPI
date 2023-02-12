package com.gl.collegefest.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.collegefest.model.Student;
import com.gl.collegefest.service.StudentService;

@Controller
@RequestMapping("students")
public class StudentController {
	StudentService studentService;

	public StudentController(StudentService studentService) {
		super();
		this.studentService = studentService;
	}

	@GetMapping("home")
	public String showHome() {
		return "home";
	}

	@GetMapping("showStudentForm")
	public String showStudentForm() {
		return "student-form";
	}

	@GetMapping("list")
	public String getStudents(Model model) {
		List<Student> students = studentService.getStudents();
		model.addAttribute("students", students);
		return "student-list";
	}

	@GetMapping("saveStudent")
	public String saveStudent(Model model, @ModelAttribute("student") Student student) {
		System.out.println("in save method....");
		studentService.save(student);
		return "redirect:/students/list";
	}

	@GetMapping("updateStudentForm")
	public String showFormForUpdate(Model model, @RequestParam("id") int id) {
		Student student = studentService.findById(id);
		model.addAttribute("student", student);
		return "student-form";
	}

	@GetMapping("delete")
	public String deleteBook(@RequestParam("id") int id) {
		studentService.delete(id);
		return "redirect:/students/list";
	}

}
