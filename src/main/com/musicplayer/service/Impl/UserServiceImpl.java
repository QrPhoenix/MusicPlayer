package com.musicplayer.service.Impl;


import com.musicplayer.db.dao.UserDao;
import com.musicplayer.db.model.User;
import com.musicplayer.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource    
    private UserDao userDao;
        
    public User getUserById(int userId) {
        return userDao.queryByPrimaryKey(userId);    
    }  
    
    public List<User> getUserByUsername(String username){
    	return userDao.getUserByUsername(username);
    }
    
    public void insertUser(User user) {    
        userDao.insertUser(user);    
    }    
    
    public void addUser(User user) {    
        userDao.insertUser(user);    
    }    
      
    public List<User> getAllUser() {    
        return userDao.getAllUser();    
    }
    
    public boolean check(User user){
    	return (userDao.check(user) > 0);
    }
    
    public User findUserByPwd(User user){
    	return userDao.findUserByPwd(user);
    }
    
    public void updateByPrimaryKey(User user){
    	userDao.updateByPrimaryKey(user);
    }
    
    public void deleteByPrimaryKey(Integer id){
    	userDao.deleteByPrimaryKey(id);
    }
    
    public int queryCount() {
    	return userDao.queryCount();
    }
}
