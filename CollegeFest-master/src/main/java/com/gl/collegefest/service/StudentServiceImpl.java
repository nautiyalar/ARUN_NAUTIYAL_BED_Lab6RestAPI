package com.gl.collegefest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.collegefest.dao.StudentRepository;
import com.gl.collegefest.model.Student;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	StudentRepository studentRepo;

	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentRepo.findAll();
	}

	@Override
	public Student save(Student student) {
		// TODO Auto-generated method stub
		return studentRepo.save(student);
	}

	@Override
	public Student udpate(Student student) {
		// TODO Auto-generated method stub
		return studentRepo.save(student);
	}

	@Override
	public Student findById(Integer id) {
		// TODO Auto-generated method stub
		return studentRepo.getById(id);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		Student st = this.findById(id);
		studentRepo.delete(st);

	}

}
