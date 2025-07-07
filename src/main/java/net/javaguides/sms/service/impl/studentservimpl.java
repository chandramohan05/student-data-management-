package net.javaguides.sms.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.javaguides.sms.entity.student;
import net.javaguides.sms.repository.studentrep;
import net.javaguides.sms.service.studentserv;

@Service
public class studentservimpl implements studentserv {

    @Autowired
    private studentrep sr;

    @Override
    public List<student> getAllstudents() {
        return sr.findAll();
    }

    @Override
    public student savestudent(student student) {
        return sr.save(student);
    }

    @Override
    public student updatestudent(student student) {
        return sr.save(student);  // Save also updates if ID exists
    }

    @Override
    public student getstudentbyid(Long id) {
        return sr.findById(id).orElse(null);  // Returns null if not found
    }

    @Override
    public void deletestudentbyid(Long id) {
        sr.deleteById(id);
    }


}
