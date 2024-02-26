package com.example.manageremployeeapp.services;
import com.example.manageremployeeapp.entity.admin;

import java.util.List;
import java.util.Optional;

public interface AdminServices {
    List<admin> findAll();
    admin findById(Long id);

    admin save(admin admin);
    admin update(Long id, admin adminDetails);
    void deleteById(Long id);


}
