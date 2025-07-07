package net.javaguides.sms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import net.javaguides.sms.entity.student;
import net.javaguides.sms.repository.studentrep;

@SpringBootApplication
public class StudentManagementSystemApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(StudentManagementSystemApplication.class, args);
	}
@Autowired
private studentrep sr;
	@Override
	public void run(String... args) throws Exception {
//		// TODO Auto-generated method stub
//		student s1=new student("chandramohan","s","nirmalasuseendiran@gmail.com");
//		sr.save(s1);
//		student s2=new student("vishwa","m","vishwa@gmail.com");
//		sr.save(s2);
	}

}
