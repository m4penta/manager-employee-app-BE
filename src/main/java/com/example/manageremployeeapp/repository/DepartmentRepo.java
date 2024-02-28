package com.example.manageremployeeapp.repository;
import com.example.manageremployeeapp.entity.department;
import org.springframework.data.jpa.repository.JpaRepository;
public interface DepartmentRepo extends JpaRepository<department,Long> {
}
