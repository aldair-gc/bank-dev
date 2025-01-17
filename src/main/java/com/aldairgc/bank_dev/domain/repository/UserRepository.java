package com.aldairgc.bank_dev.domain.repository;

import com.aldairgc.bank_dev.domain.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsByAccountNumber(String accountNumber);
}
