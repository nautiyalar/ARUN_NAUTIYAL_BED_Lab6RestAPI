package com.gl.collegefest.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gl.collegefest.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

}
