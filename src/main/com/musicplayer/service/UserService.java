package com.musicplayer.service;

import com.musicplayer.db.model.User;
import com.musicplayer.db.model.UserMusicList;

import java.util.List;

/**
 * Created by QXY on 2018/10/5.
 */
//Service层接口
public interface UserService {

    //检验用户登录
    User checkLogin(String username, String password);

    //获取用户专属音乐列表
    public List<UserMusicList> getSMusicList();

}
