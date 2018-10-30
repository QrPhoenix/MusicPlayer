package com.musicplayer.db.dao;

import com.musicplayer.db.model.SMusicList;
import com.musicplayer.db.model.SMusicListExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SMusicListMapper {
    int countByExample(SMusicListExample example);

    int deleteByExample(SMusicListExample example);

    int insert(SMusicList record);

    int insertSelective(SMusicList record);

    List<SMusicList> selectByExample(SMusicListExample example);

    int updateByExampleSelective(@Param("record") SMusicList record, @Param("example") SMusicListExample example);

    int updateByExample(@Param("record") SMusicList record, @Param("example") SMusicListExample example);
}