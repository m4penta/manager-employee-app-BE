package com.example.manageremployeeapp.services.imlp;
import com.example.manageremployeeapp.entity.admin;
import com.example.manageremployeeapp.repository.AdminRepo;
import com.example.manageremployeeapp.services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServicesImlp implements AdminServices
{
    @Autowired
    private  AdminRepo adminRepository;


    @Override
    public List<admin> findAll() {
        List<admin> admins = adminRepository.findAll();
            if(admins.isEmpty()){
                throw  new RuntimeException("Không tìm thấy admin nào");
            }
        return admins;
    }

    @Override
    public admin findById(Long id) {
        return adminRepository.findById(id).orElse(null);
    }

    @Override
    public admin save(admin admin) {
        return adminRepository.save(admin);
    }

    @Override
    public admin update(Long id, admin adminDetails) {
        admin admin = adminRepository.findById(id).orElse(null);
        if (admin != null) {
            admin.setName(adminDetails.getName());
            admin.setUsername(adminDetails.getUsername());
            admin.setPassword(adminDetails.getPassword());
            return adminRepository.save(admin);
        }
        return null;
    }

    @Override
    public void deleteById(Long id) {
        adminRepository.deleteById(id);
    }
}
