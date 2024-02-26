package com.example.manageremployeeapp.repository;
import com.example.manageremployeeapp.entity.admin;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AdminRepo extends JpaRepository <admin, Long> {
}
