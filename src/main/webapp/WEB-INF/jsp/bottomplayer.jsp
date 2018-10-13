<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" type="text/css" href="css/audio.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="audio-box">
    <div class="audio-container">
        <div class="audio-view">
            <div class="audio-cover" ></div>
            <div class="audio-body">
                <h3 class="audio-title">未知歌曲</h3>
                <div class="audio-backs">
                    <div class="audio-this-time">00:00</div>
                    <div class="audio-count-time">00:00</div>
                    <div class="audio-setbacks">
                        <i class="audio-this-setbacks">
                            <span class="audio-backs-btn"></span>
                        </i>
                        <span class="audio-cache-setbacks">
							</span>
                    </div>
                </div>
            </div>
            <div class="audio-btn">
                <div class="audio-select">
                    <div class="audio-prev"></div>
                    <div class="audio-play"></div>
                    <div class="audio-next"></div>
                    <div class="audio-menu"></div>
                    <div class="audio-volume"></div>
                </div>
                <div class="audio-set-volume">
                    <div class="volume-box">
                        <i><span></span></i>
                    </div>
                </div>
                <div class="audio-list">
                    <div class="audio-list-head">
                        <p>歌单</p>
                        <span class="menu-close">关闭</span>
                    </div>
                    <ul class="audio-inline">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="css/audio.css">
<script type="text/javascript" src="/js/audio.js"></script>
<script type="text/javascript">
    //    var song = [
    //        {
    //            'cover' : 'images/cover2.jpg',
    //            'src' : '/upload/周杰伦 - 安静.mp3',
    //            'title' : 'Jar Of Love'
    //        },
    //        {
    //            'cover' : 'images/cover.png',
    //            'src' : '/upload/周杰伦 - 安静.mp3',
    //            'title' : 'number one'
    //        },
    //        {
    //            'cover' : 'images/cover1.jpg',
    //            'src' : '/upload/周杰伦 - 安静.mp3',
    //            'title' : '大橋のぞみ - 黒ネコのタンゴ'
    //        },
    //        {
    //            'cover' : 'images/cover3.jpg',
    //            'src' : '/upload/周杰伦 - 安静.mp3',
    //            'title' : '黒うさP,初音ミク - 千本桜'
    //        },
    //        {
    //            'cover' : 'images/cover4.jpg',
    //            'src' : '/upload/周杰伦 - 安静.mp3',
    //            'title' : '极乐净土'
    //        }
    //    ];
    var array = [];
    var song = [];
    $(function(){
        //监听查询按钮点击事件
        handleClickMusicQueryBtn();
        $('#query').on('click',handleClickMusicQueryBtn());
    });

    function handleClickMusicQueryBtn() {
        $.ajax({
            type : 'POST',
            url: '/getmusiclist.action',
            contentType : 'application/json;charset=UTF-8',
            data : JSON.stringify(array),
            success : function(song) {
                console.info('songs01:',song);
                var audioFn = audioPlay({
                    song : song,
                    autoPlay : true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
                });
            }
        });





        /* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
//        audioFn.newSong(({
//            'cover' : 'images/cover5.jpg',
//            'src' : 'http://webmp3-1253691995.costj.myqcloud.com/audio/baab.mp3',
//            'title' : 'B.A.A.B'
//        },false));

        /* 暂停播放 */
        audioFn.stopAudio();

        /* 开启播放 */
        audioFn.playAudio();

        /* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
        audioFn.selectMenu(3,true);

        /* 查看歌单中的曲目 */
        console.log(audioFn.song);

        /* 当前播放曲目的对象 */
//        console.log(audioFn.audio);
    }


</script>