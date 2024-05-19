package com.beta.model.dao;

import jakarta.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;
import com.beta.model.entity.UserEntity;
import java.util.List;

@Repository
public class UserDAOImpl implements IUserDAO {

    @Autowired
    private SessionFactory factory;


    @Override
    @Transactional
    public List<UserEntity> getAllUsers() {
        Session session = factory.getCurrentSession();
        Query<UserEntity> query = session.createQuery("from UserEntity", UserEntity.class);
        return query.getResultList();
    }

    @Override
    @Transactional
    public void registerUser(UserEntity user) {
        Session session = factory.getCurrentSession();
        session.save(user);
    }

    @Override
    @Transactional
    public void dropUser(Integer userId) {
        Session session = factory.getCurrentSession();

        Query query = session.createQuery("delete from UserEntity where userId = :userId");
        query.setParameter("userId", userId);
        query.executeUpdate();
    }
}
