package com.example.demo.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.StudentData;
public interface StudentInfo extends JpaRepository<StudentData, Integer>{
	public StudentData findByEmail(String email);
}
