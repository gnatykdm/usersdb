package com.beta.service;

import com.beta.model.dao.IUserDAO;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.beta.model.entity.UserEntity;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    private IUserDAO userDAO;


    @Override
    @Transactional
    public List<UserEntity> getAllUsers() {
        return userDAO.getAllUsers();
    }

    @Override
    @Transactional
    public void registerUser(UserEntity user) {
        userDAO.registerUser(user);
    }

    @Override
    public void dropUser(Integer userId) {
        userDAO.dropUser(userId);
    }
}
