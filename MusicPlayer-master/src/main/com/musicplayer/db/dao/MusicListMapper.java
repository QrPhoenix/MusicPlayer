package com.musicplayer.db.dao;

import com.musicplayer.db.model.MusicList;
import com.musicplayer.db.model.MusicListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MusicListMapper {
    int countByExample(MusicListExample example);

    int deleteByExample(MusicListExample example);

    int insert(MusicList record);

    int insertSelective(MusicList record);

    List<MusicList> selectByExample(MusicListExample example);

    int updateByExampleSelective(@Param("record") MusicList record, @Param("example") MusicListExample example);

    int updateByExample(@Param("record") MusicList record, @Param("example") MusicListExample example);
}