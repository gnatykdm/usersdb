package com.beta.model.dao;

import com.beta.model.entity.UserEntity;
import java.util.List;

public interface IUserDAO {
    List<UserEntity> getAllUsers();
    void registerUser(UserEntity user);
    void dropUser(Integer userId);
}
