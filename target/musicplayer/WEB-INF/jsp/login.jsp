<%--
  Created by IntelliJ IDEA.
  User: 齐析屿
  Date: 2018/10/5
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/css/music_player.css">
    <style type="text/css">
        html,
        body,
        #lyric-container {
            width: 300px;
            height: 300px;
            left: 220px;
            top: 200px;
        }
    </style>
</head>
<body>

<form action="/checkLogin" method="post">
    <table>
        <tr>
            <td>用户名:</td>
            <td><input id="username" name="username" type="text"></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input id="password" name="password" type="password"></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
        </tr>
    </table>
</form>
<div class="lyric-controller-inner">
    <div class="lyric-text"></div>
</div>
</body>
<script src="/js/plugins.js">

</script>
<script src="/js/audio_lrc.js"></script>
<script type="text/javascript">
    var LyricController = {
        createNew: function () {
            var o = {};
            // properties
            o.name = "LyricController";
            o.audioSource = document.querySelector(".audio-source");
            o.lrcStack = [];
            o.lrcFlags = Array();
            o.maxDuration = 0;
            // o.finded = false;

            // methods
            o.initialize = function () {
                this.setNodeReferences();
                this.dataInitialize();
                this.addEventListeners();
            };

            // o.deviceDetection = function () {};
            // o.interfaceControl = function () {};
            // o.playRateControl = function () {};
            // o.autoLoadControl = function () {};

            o.setNodeReferences = function () {
                // lyric-controller:
                this.lyricContainer = document.querySelector(".lyric-container");
                this.lyricText = document.querySelector(".lyric-text");
                this.lyrics = null;
            };

            o.dataInitialize = function () {
                this.updateLyrics();
            };

            o.updateLyrics = function () {
                this.lyricText.innerHTML = "";
                var _lrcStr = null;
                this.maxDuration = 0;

                for (var i = 0; i < audio_lrc.length; i++) {
                    var _duration = ((parseFloat(audio_lrc[i].endTime) - parseFloat(audio_lrc[i].startTime) + 20) / Math.abs(o.audioSource.playbackRate)).toFixed(3);
                    this.maxDuration = (this.maxDuration < _duration) ? _duration : this.maxDuration;
                    _duration = _duration + "s";
                    if (_lrcStr == null) {
                        _lrcStr = "<p style='animation-duration: " + _duration + "; -webkit-animation-duration: " + _duration + "'>" + audio_lrc[i].content + "</p>";
                    } else {
                        _lrcStr += "<p style='animation-duration: " + _duration + "; -webkit-animation-duration: " + _duration + "'>" + audio_lrc[i].content + "</p>";
                    }
                    this.lrcFlags[i] = false;
                }

                this.maxDuration = this.maxDuration * 1000;
                this.lyricText.innerHTML += _lrcStr;
                this.lyrics = document.querySelectorAll(".lyric-text > p");
            };

            o.addEventListeners = function () {
                this.audioSource.addEventListener("timeupdate", this.onTimeUpdate);
                this.audioSource.addEventListener("ratechange", this.onRateChange);
            };

            o.onTimeUpdate = function () {
                if (!o.audioSource.paused) {
                    o.findCurrentLrc();
                }
            };

            o.findCurrentLrc = function () {
                for (var i = audio_lrc.length - 1; i >= 0; i--) {
                    if (audio_lrc[i].endTime >= o.audioSource.currentTime && audio_lrc[i].startTime <= o.audioSource.currentTime) {
                        o.audioSource.removeEventListener("timeupdate", o.onTimeUpdate);
                        o.showCurrentLrc(i);
                        window.setTimeout(function () {
                            o.audioSource.addEventListener("timeupdate", o.onTimeUpdate);
                        }, ((audio_lrc[i].endTime - o.audioSource.currentTime) / Math.abs(o.audioSource.playbackRate)) * 1000);

                        break;
                    }
                }
            };

            o.showCurrentLrc = function (i) {
                o.lyrics[i].className = "currentLrc";
                window.setTimeout(function () {
                    o.clearCurrentLrc(i);
                }, o.maxDuration);
            };

            o.clearCurrentLrc = function (i) {
                o.lyrics[i].removeAttribute("class");
                o.lrcFlags[i] = false;
            };

            o.onRateChange = function () {
                o.updateLyrics();
            };

            o.initialize();
            return o;
        }
    };
</script>
<%@ include file="bottomplayer.jsp" %>

</html>
