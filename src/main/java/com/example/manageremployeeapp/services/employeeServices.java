package com.example.manageremployeeapp.services;


import com.example.manageremployeeapp.entity.admin;
import com.example.manageremployeeapp.entity.employee;
import java.util.List;

public interface employeeServices {
    List<employee> findAll();
    employee findById(Long id);
    employee save(employee employee);
    employee update(Long id, employee employeeDetails);
    void deleteById(Long id);
}
