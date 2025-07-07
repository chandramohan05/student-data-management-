package net.javaguides.sms.service;

import java.util.List;
import net.javaguides.sms.entity.student;

public interface studentserv {
	List<student> getAllstudents();
    student savestudent(student student);
    student updatestudent(student student);
    student getstudentbyid(Long id);
    void deletestudentbyid(Long id);}
