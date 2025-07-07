package net.javaguides.sms.repository;

import net.javaguides.sms.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface userrep extends JpaRepository<User, Long> {
    User findByUsernameAndPassword(String username, String password);
}


	

