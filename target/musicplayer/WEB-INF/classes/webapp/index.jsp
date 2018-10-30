<%--
  Created by IntelliJ IDEA.
  User: jiayu
  Date: 2018/10/18
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中国少数民族音乐资源展示平台</title>
</head>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/sticky-footer.css" rel="stylesheet">
<link href="/css/navbar.css" rel="stylesheet">

<body>

<%--最顶部蓝条--%>
<div  class="topBg"style="background-image: url('images/header1.png');">
    welcome! &nbsp
    <a herf="">会员登录</a>
    &nbsp
    <a herf="">会员注册</a>
</div>
<%--图片文字标题--%>
<img src="images/logo.jpg">

<%--导航开始--%>

<nav class="navbar navbar-expand-lg navbar-dark " style="background-image: url('images/header1.png');">
    <div class="container">
        <a class="navbar-brand" href="#">首页</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="navbar-nav mr-auto">
                <%--<li class="nav-item active">--%>
                <li class="nav-item">
                    <a class="nav-link" href="#">民族音乐
                        <%--   <span class="sr-only">(current)</span>--%>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">民族乐器</a>
                </li>
                <li class="nav-item">
                    <%-- <a class="nav-link disabled" href="#">--%>
                    <a class="nav-link" href="#">歌曲/MV</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        互动</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown07">
                        <a class="dropdown-item" href="#">乐友论坛</a>
                        <a class="dropdown-item" href="#">联系我们</a>
                        <a class="dropdown-item" href="#">个人中心</a>
                    </div>
                </li>
            </ul>
            <%--<form class="form-inline my-2 my-md-0">--%>
                <%--<input class="form-control" type="text" placeholder="搜索更多" aria-label="Search">--%>
                <%--<button id="search">搜索</button>--%>
            <%--</form>--%>
            <form class="form-inline my-2 my-md-0" action="/search.do">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入歌曲" name="searchInput">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
</nav>
<%--导航结束--%>

<%--轮播大图开始--%>
<main role="main">

    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:1000px;height: 520px;margin: 0 auto;">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="first-slide" src="images/carousel1.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption text-left">
                        <%--    <h1>Example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>--%>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="second-slide" src="images/carousel2.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <%-- <h1>Another example headline.</h1>
                         <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                         <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>--%>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <img class="third-slide" src="images/carousel3.jpg" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption text-right">
                        <%-- <h1>One more for good measure.</h1>
                         <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                         <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>--%>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <%--轮播大图结束--%>

    <%--最新资讯开始  --%>
    <%--<div class="maincontents" style="width: 1000px;" >--%>
    <style>
        span{
            float: right;
        }

    </style>
    <div  style="width:1000px;height: 520px;margin: 0 auto;">
        <div class="" style="background-image: url('')">
            <img alt="140x140" src="images/最新资讯.png" />
            <a href=""><strong>查看更多>>></strong></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item"><a href="">第六届民族管弦乐新作品征集公告</a> <span style="float: right;">2018-06-24</span> </li>
            <li class="list-group-item">世界音乐周2018在中央音乐学院召开 <span>2018-10-05</span></li>
            <li class="list-group-item">第四届中国少数民族音乐学会“学会杯”论文点评<span>2018-02-14</span></li>
            <li class="list-group-item">
                <%--<span class="badge">新</span>--%>
                西藏建非遗传承基因库<span>2018-01-05</span>
            </li>
            <li class="list-group-item">第四届世界互联网大会召开网上文化交流共享分论坛<span>2017-12-13</span></li>
            <li class="list-group-item">
                <%-- <span class="badge">新</span>--%>
                中国少数民族音乐学会第十六届年会召开<span>2017-12-01</span>
            </li>
        </ul>
    </div>


    <%--  最新资讯结束--%>
    <%--民族音乐开始--%>
    <div style="width:1000px;height: 520px;margin: 0 auto;">
        <div class="maincontents " style="background-image: url('images/花纹.jpg')">
            <img alt="140x140" src="images/民族音乐.jpg" />
            &nbsp;
            <a href=""><strong>查看更多>>></strong></a>
        </div>

        <div class="row tw" style="margin-top: 20px;">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="imgmz/dxz.jpg"  height="200" width="210"
                         alt="东乡族">
                    <div class="caption">
                        <h5>东乡族传统音乐</h5>
                        <%--  <p>一些示例文本。一些示例文本。</p>--%>
                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="imgmz/elcz.jpg"  height="200" width="210"
                         alt="鄂伦春族">
                    <div class="caption">
                        <h5>鄂伦春族传统音乐</h5>
                        <%-- <p>一些示例文本。一些示例文本。</p>--%>
                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="imgmz/cxz.jpg"  height="200" width="210"
                         alt="朝鲜族">
                    <div class="caption">
                        <h5>朝鲜族传统音乐</h5>

                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="imgmz/dwez.jpg"  height="200" width="210"
                         alt="达斡尔族">
                    <div class="caption">
                        <h5>达斡尔族传统音乐</h5>

                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <%--民族音乐结束--%>
    <%--<div calss="maincontents" >
      try try try !
    </div>--%>   <%--测试使之居中--%>

    <%--民族乐器开始--%>
    <div style="width:1000px;height: 520px;margin: 0 auto;">
        <div class="maincontents " style="background-image: url('images/花纹.jpg')">
            <img alt="140x140" src="images/民族乐器.jpg" />
            &nbsp;
            <a href=""><strong>查看更多>>></strong></a>
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="yq/三月萧.jpg" height="200" width="210"
                         alt="三月箫">
                    <div class="caption">
                        <h5>阿昌族乐器 &nbsp;三月箫</h5>
                        <%--   <p>一些示例文本。一些示例文本。</p>--%>
                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="yq/火不思.jpg" height="200" width="210"
                         alt="火不思">
                    <div class="caption">
                        <h5>蒙古族乐器 &nbsp;火不思</h5>

                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="yq/都塔尔.jpg"height="200" width="210"
                         alt="都塔尔">
                    <div class="caption">
                        <h5>维吾尔族乐器&nbsp;都塔尔</h5>

                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-3">
                <div class="thumbnail">
                    <img src="yq/龙头三弦.jpg"height="200" width="210"
                         alt="龙头三弦">
                    <div class="caption">
                        <h5>白族乐器&nbsp;龙头三弦</h5>

                        <p>

                            <a href="#" class="btn btn-default" role="button">
                                查看详情>>>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--民族乐器结束--%>

    <%--歌曲试听开始 --%>
    <div style="width:1000px;height: 520px;margin: 0 auto;">
        <div class="maincontents " style="background-image: url('')">
            <img alt="140x140" src="images/歌曲试听.jpg" />
            &nbsp;
            <a href=""><strong>查看更多>>></strong></a>
        </div>
        <div  style="height:auto;width: 1000px; ">
            <jsp:include page="smusic.jsp" />
        </div>
    </div>

    <%--歌曲试听结束  --%>

    <%--交流论坛开始--%>
    <div style="width:1000px;height: 520px;margin: 0 auto;">
        <div class="maincontents " style="background:#717eff;">
            <img alt="140x140" src="images/交流论坛.jpg" />
        </div>
    </div>
    <%--交流论坛结束--%>

    <%--尾部开始--%>
    <footer class="footer">
        <div class="container">
            <span class="text-muted">copyright©版权所有 中央民族大学信息工程学院</span>
        </div>
    </footer>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/holder.min.js"></script>
</html>
