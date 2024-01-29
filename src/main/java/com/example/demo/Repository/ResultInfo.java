package com.example.demo.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.AddResult;
public interface ResultInfo extends JpaRepository<AddResult, Integer>{
	AddResult findByStudentDataId(int studentDataId);
}
