package com.example.manageremployeeapp.entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "ADMIN")
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class admin {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;



    @Column(name = "NAME", nullable = false, length = 50)
    private String name;


    @Column(name = "PASSWORD", nullable = false, length = 50)
    private String password;


    @Column(name = "USERNAME", nullable = false, length = 50)
    private String username;
}
