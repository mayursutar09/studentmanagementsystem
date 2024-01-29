package com.example.demo.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.AdminData;
public interface AdminInfo extends JpaRepository<AdminData, Integer>{
	public AdminData findByEmail(String email);
}
