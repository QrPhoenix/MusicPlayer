package com.musicplayer.service.Impl;

import com.musicplayer.db.dao.UserMapper;
import com.musicplayer.db.model.User;

import com.musicplayer.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by QXY on 2018/10/5.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /*
     * 检验用户登录业务
     *
     */
    public User checkLogin(String username, String password) {
//        User user = new User();
//        user.setUsername(username);
//        UserExample userExample = new UserExample();
//        userExample.setOrderByClause(username);
        User user = userMapper.findByUsername(username);
//        System.out.println(users);
        if(user != null && user.getPassword().equals(password)){

            return user;
        }
        return null;
    }
}