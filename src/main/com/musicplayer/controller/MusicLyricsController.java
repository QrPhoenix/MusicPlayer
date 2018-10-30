package com.musicplayer.controller;

import com.alibaba.fastjson.JSON;
import com.musicplayer.db.model.MusicList;
import com.musicplayer.db.model.SMusicList;
import com.musicplayer.db.model.Song;
import com.musicplayer.service.ISongService;
import com.musicplayer.service.MusicListService;
import com.musicplayer.service.SMusicListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by QXY on 2018/10/11.
 */
@Controller
@RequestMapping("")
@SessionAttributes("user")
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

    @Autowired
    SMusicListService smusicListService;
    @RequestMapping(value = "/getSmusiclist.action", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String getSMusiclist(@RequestBody String[] array){

        List<SMusicList> smusicList = smusicListService.getSMusicList();
        for (SMusicList tmp:smusicList
                ) {
            System.out.println(tmp);
        }
        return JSON.toJSONString(smusicList);
    }

    @Resource
    private ISongService songService;

    @RequestMapping("/search")
    public String search(HttpServletRequest request, Model model){
        String text = request.getParameter("searchInput");
        if(text.isEmpty()) {
            return "searchResult";
        }
        List<Song> songs = songService.querySongByName(text);
        model.addAttribute("snum", songs.size());
        model.addAttribute("songs", songs);
        model.addAttribute("sname", text);
        return "searchResult";
    }
}
