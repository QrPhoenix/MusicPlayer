package com.musicplayer.service;



import com.musicplayer.db.model.User;

import java.util.List;

public interface IUserService {
	
	public User getUserById(int userId);
	
	public List<User> getUserByUsername(String username);
    
    public void insertUser(User user);    
    
    public void addUser(User user);    
    
    public List<User> getAllUser();
    
    public boolean check(User user);
    
    public User findUserByPwd(User user);
    
    public void updateByPrimaryKey(User user);
    
    public void deleteByPrimaryKey(Integer id);
    
    public int queryCount();
}
