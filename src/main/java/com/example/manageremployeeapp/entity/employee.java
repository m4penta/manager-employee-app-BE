package com.example.manageremployeeapp.entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Table(name = "EMPLOYEE")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EMPLOYEE_ID")
    private Long employeeId;

    @Column(name = "DEPARTMENT_ID", nullable = false)
    private Long departmentId;

    @Column(name = "EMP_NAME", nullable = false, length = 100)
    private String empName;

    @Column(name = "ADDRESS", nullable = false, length = 50)
    private String address;

    @Column(name = "BIRTHDAY", nullable = false)
    private Date birthday;

    @Column(name = "GENDER", nullable = false, length = 10)
    private String gender;

    @Column(name = "EMAIL", nullable = false, length = 255)
    private String email;

    @Column(name = "TIME_START_WORK", nullable = false)
    private Date timeStartWork;

    @Column(name = "TIME_END_WORK")
    private Date timeEndWork;

    @Column(name = "SALARY", nullable = false)
    private Long salary;

    @Column(name = "NOTE", length = 50)
    private String note;

    @Column(name = "ROLE", nullable = false, length = 50)
    private String role;

    @Column(name = "CREATED_BY", nullable = false, length = 50)
    private String createdBy;

    @Column(name = "CREATED_AT", nullable = false)
    private Date createdAt;

    @Column(name = "EMP_STATUS", nullable = false, length = 1)
    private String empStatus;
}
