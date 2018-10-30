/**
 * Created by smohan on 2016/11/19.
 */
// var songList = [
//     {
//         title : '成都',
//         singer : '赵雷',
//         audio : '/songs/伊美达 - 童话.mp3',
//         thumbnail : 'http://p1.music.126.net/34YW1QtKxJ_3YnX9ZzKhzw==/2946691234868155.jpg',
//         lyric : '/lyrics/chengdu.lrc'
//     },
//     {
//         title : 'Diamonds',
//         singer : 'Rihanna',
//         audio : '/songs/伊美达 - 童话.mp3',
//         thumbnail : 'http://p1.music.126.net/vrJzlA1RIiwaPHlXzZy90g==/3263350514797284.jpg',
//         lyric : '/lyrics/diamonds.lrc'
//     },
//     {
//         title : 'Fight Song',
//         singer : 'Rachel Platten',
//         audio : '/songs/伊美达 - 童话.mp3',
//         thumbnail : 'http://p1.music.126.net/1pT1uMs8EzCCUpAw6XkuCw==/7890095441301282.jpg',
//         lyric : '/lyrics/fightSong.lrc'
//     },
//     {
//         title : 'One Call Away',
//         singer : 'Charlie Puth',
//         audio : '/songs/伊美达 - 童话.mp3',
//         thumbnail : 'http://p1.music.126.net/VzNnyyZwxYPEFXMx621s9w==/2533274793679228.jpg',
//         lyric : '/lyrics/oneCallAway.lrc'
//     },
// ];

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
var smusic
var array=[];
var songList = [];
$(function(){
    //监听查询按钮点击事件
    // handleClickMusicQueryBtn();
    $('#query').on('click',handleClickMusicQueryBtn());
});

function handleClickMusicQueryBtn() {
    $.ajax({
        type: 'POST',
        url: '/getSmusiclist.action',
        contentType: 'application/json;charset=UTF-8',
        data: JSON.stringify(array),
        success: function (songList) {

            console.info('songs01:', songList);
            var $ = function (id) {
                return document.getElementById(id)
            }

            smusic = SMusic(songList, {
                container: $('smusic'),
                panel: 'list'
            });
            smusic.init();
        }
    });
}