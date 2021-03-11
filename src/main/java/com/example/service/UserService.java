package com.example.service;

import com.example.dao.UserDao;
import com.example.entity.User;
import com.example.exception.CustomException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {

    @Resource
    private UserDao userDao;

    public User login(User user) {
        User res = userDao.findByUsernameAndPassword(user.getUsername(), user.getPassword());
        if (res == null) {
            throw new CustomException("-1", "账号或密码错误");
        }
        return res;
    }
}
