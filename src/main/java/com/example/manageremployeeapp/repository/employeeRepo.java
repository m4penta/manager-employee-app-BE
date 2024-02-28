package com.example.manageremployeeapp.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.example.manageremployeeapp.entity.employee;
public interface employeeRepo extends  JpaRepository<employee, Long> {
}
