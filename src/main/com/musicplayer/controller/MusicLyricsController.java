package com.musicplayer.controller;

import com.alibaba.fastjson.JSON;
import com.musicplayer.db.model.MusicList;
import com.musicplayer.service.MusicListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by QXY on 2018/10/11.
 */
@Controller
public class MusicLyricsController {
    @RequestMapping("/lyric")
    public String login(){
        return "musiclyric";
    }

    @Autowired
    MusicListService musicListService;
    @RequestMapping(value = "/getmusiclist.action", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String getMusiclist(@RequestBody String[] array){

        List<MusicList> musicList = musicListService.getMusicList();
        for (MusicList tmp:musicList
                ) {
            System.out.println(tmp);
        }
        return JSON.toJSONString(musicList);
    }

    @RequestMapping("/smusic")
    public String Smusic(){
        return "smusic";
    }

}
