package com.musicplayer.service.Impl;



import com.musicplayer.db.dao.SMusicListMapper;
import com.musicplayer.db.model.SMusicList;
import com.musicplayer.db.model.SMusicListExample;
import com.musicplayer.service.SMusicListService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by QXY on 2018/10/24.
 */
@Service("SMusicListService")
public class SMusicListServiceImpl implements SMusicListService{
    @Resource
    private SMusicListMapper smusicListMapper;
    public List<SMusicList> getSMusicList() {
        SMusicListExample smusicListExample = new SMusicListExample();
        List<SMusicList> List= smusicListMapper.selectByExample(smusicListExample);
        return List;
    }
}
