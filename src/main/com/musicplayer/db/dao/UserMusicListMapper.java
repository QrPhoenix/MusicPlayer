package com.musicplayer.db.dao;

import com.musicplayer.db.model.UserMusicList;
import com.musicplayer.db.model.UserMusicListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMusicListMapper {
    int countByExample(UserMusicListExample example);

    int deleteByExample(UserMusicListExample example);

    int insert(UserMusicList record);

    int insertSelective(UserMusicList record);

    List<UserMusicList> selectByExample(UserMusicListExample example);

    int updateByExampleSelective(@Param("record") UserMusicList record, @Param("example") UserMusicListExample example);

    int updateByExample(@Param("record") UserMusicList record, @Param("example") UserMusicListExample example);
}