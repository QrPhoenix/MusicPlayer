package com.musicplayer.db.dao;


import com.musicplayer.db.model.User;

import java.util.List;
import java.util.Map;

public interface UserDao {
	public User queryByPrimaryKey(Integer id);
	
	public List<User> getUserByUsername(String name);
    
    public List<User> queryUserByBatch(Map<String, Object> params);

    public void insertUser(User user);

    public void insertUserByBatch(List<User> list);

    public void deleteByPrimaryKey(Integer id);

    public void deleteUserByBatch(Map<String, Object> params);
        
    public void updateByPrimaryKey(Integer id);    
    
    public List<User> getAllUser(); 
    
    public Long check(User user);
    
    public User findUserByPwd(User user);
    
    public void updateByPrimaryKey(User user);
    
    public int queryCount();
}
