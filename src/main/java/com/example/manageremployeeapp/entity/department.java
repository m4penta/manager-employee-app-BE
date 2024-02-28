package com.example.manageremployeeapp.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Table(name = "DEPARTMENT")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DEPARTMENT_ID")
    private Long departmentId;


    @Column(name = "NAME")
    private String name;

    @Column(name = "DESCRIPTION")
    private String description;


    @Column(name = "STATUS")
    private String status;


    @Column(name = "CREATED_BY")
    private String createdBy;


    @Column(name = "CREATED_AT")
    private Date createdAt;


    @Column(name = "ESTABLISHED_DATE")
    private Date establishedDate;
}
