package com.example.manageremployeeapp.controller;
import com.example.manageremployeeapp.entity.admin;
import com.example.manageremployeeapp.services.AdminServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("api/admins")
public class AdminController {

    private final AdminServices adminService;

    @Autowired
    public AdminController(AdminServices adminService) {
        this.adminService = adminService;
    }

    @GetMapping
    public ResponseEntity<List<admin>> getAllAdmins() {
        List<admin> admins = adminService.findAll();
        return new ResponseEntity<>(admins, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<admin> getAdminById(@PathVariable Long id) {
        admin admin = adminService.findById(id);
        if (admin != null) {
            return new ResponseEntity<>(admin, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<admin> createAdmin(@RequestBody admin admin) {
        admin savedAdmin = adminService.save(admin);
        return new ResponseEntity<>(savedAdmin, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<admin> updateAdmin(@PathVariable Long id, @RequestBody admin adminDetails) {
        admin updatedAdmin = adminService.update(id, adminDetails);
        if (updatedAdmin != null) {
            return new ResponseEntity<>(updatedAdmin, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteAdmin(@PathVariable Long id) {
        adminService.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
    @DeleteMapping("/deleteMultiple")
    public ResponseEntity<?> deleteMultiple(@RequestBody List<Long> ids) {
        try {
            for (Long id : ids) {
                adminService.deleteById(id);
            }
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Failed to delete objects");
        }
    }
}
