package com.musicplayer.db.dao;

import com.musicplayer.db.model.User;
import com.musicplayer.db.model.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);
    /**
     * 查找用户名和密码
     * @param username 登录用户
     * @return
     */
    User findByUsername(String username);
//    /**
//     * 注册用户和密码
//     * @param username 用户名
//     * @param password 密码
//     * @return
//     */
//    User registerByUsernameAndPassword(@Param("username")String username,
//                                       @Param("password")String password);
}