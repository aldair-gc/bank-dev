package com.aldairgc.bank_dev.service;

import com.aldairgc.bank_dev.domain.model.User;

public interface UserService {
    User findById(Long id);

    User create(User userToCreate);
}
