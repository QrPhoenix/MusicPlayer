package com.musicplayer.db.dao;


import com.musicplayer.db.model.Song;

import java.util.List;

public interface SongDao {

	public List<Song> findBySid(int sid);
	
	public List<Song> querySongByBatch(List<Long> idList);
	
	public List<Song> querySongByName(String name);
	
	public int add(Song song);
	
	public int removeBySingerAndTitle(String singer, String songName);
	
	public int update(Song song);
	
	public List<Song> findTop(int num);
	
	public List<Song> findTopOfUp(int num);
	
	public List<Song> findAll();
	
	public List<Song> findTopOfNew(int num);
	
	public int queryCount();
	
	public int removeBySid(long sid);
	
	public int queryCountByName(String name);
}
