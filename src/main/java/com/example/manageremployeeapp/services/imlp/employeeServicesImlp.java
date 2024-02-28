package com.example.manageremployeeapp.services.imlp;

import com.example.manageremployeeapp.entity.admin;
import com.example.manageremployeeapp.entity.employee;
import com.example.manageremployeeapp.repository.employeeRepo;
import com.example.manageremployeeapp.services.employeeServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class employeeServicesImlp  implements  employeeServices
{
    @Autowired
    private employeeRepo emloyeeRepository;


    @Override
    public List<employee> findAll() {
        List<employee> employees = emloyeeRepository.findAll();
        if(employees.isEmpty()){
            throw  new RuntimeException("Không tìm thấy nhân viên nào");
        }
        return employees;
    }
    @Override
    public employee findById(Long id) {
        return emloyeeRepository.findById(id).orElse(null);
    }

    @Override
    public employee save(employee employee) {
        return emloyeeRepository.save(employee);
    }

    @Override
    public employee update(Long id, employee employeeDetails) {
        employee employee = emloyeeRepository.findById(id).orElse(null);
        if (employee != null) {

            employee.setBirthday(employeeDetails.getBirthday());
            employee.setDepartmentId(employeeDetails.getDepartmentId());
            employee.setEmpName(employeeDetails.getEmpName());
            employee.setAddress(employeeDetails.getAddress());
            employee.setGender(employeeDetails.getGender());
            employee.setEmail(employeeDetails.getEmail());
            employee.setTimeStartWork(employeeDetails.getTimeStartWork());
            employee.setTimeEndWork(employeeDetails.getTimeEndWork());
            employee.setSalary(employeeDetails.getSalary());
            employee.setNote(employeeDetails.getNote());
            employee.setRole(employeeDetails.getRole());
            employee.setEmpStatus(employeeDetails.getEmpStatus());
            return emloyeeRepository.save(employee);
        }
        return null;
    }

    @Override
    public void deleteById(Long id) {
        emloyeeRepository.deleteById(id);
    }
}
