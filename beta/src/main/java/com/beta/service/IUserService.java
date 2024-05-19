package com.beta.service;

import java.util.List;
import com.beta.model.entity.UserEntity;

public interface IUserService {
    List<UserEntity> getAllUsers();
    void registerUser(UserEntity user);
    void dropUser(Integer userId);
}
