<!DOCTYPE html>
<!-- saved from url=(0023)https://www.muniao.com/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${staticRoot}/images/style1503546983737.css">
    <style type="text/css">.amap-indoor-map .label-canvas {
        position: absolute;
        top: 0;
        left: 0
    }

    .amap-indoor-map .highlight-image-con * {
        pointer-events: none
    }

    .amap-indoormap-floorbar-control {
        position: absolute;
        margin: auto 0;
        bottom: 165px;
        right: 12px;
        width: 35px;
        text-align: center;
        line-height: 1.3em;
        overflow: hidden;
        padding: 0 2px
    }

    .amap-indoormap-floorbar-control .panel-box {
        background-color: rgba(255, 255, 255, .9);
        border-radius: 3px;
        border: 1px solid #ccc
    }

    .amap-indoormap-floorbar-control .select-dock {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        box-sizing: border-box;
        height: 30px;
        border: solid #4196ff;
        border-width: 0 2px;
        border-radius: 2px;
        pointer-events: none;
        background: linear-gradient(to bottom, #f6f8f9 0, #e5ebee 50%, #d7dee3 51%, #f5f7f9 100%)
    }

    .amap-indoor-map .transition {
        transition: opacity .2s
    }

    ,
    .amap-indoormap-floorbar-control .transition {
        transition: top .2s, margin-top .2s
    }

    .amap-indoormap-floorbar-control .select-dock:after, .amap-indoormap-floorbar-control .select-dock:before {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        left: 0;
        top: 10px;
        border: solid transparent;
        border-width: 4px;
        border-left-color: #4196ff
    }

    .amap-indoormap-floorbar-control .select-dock:after {
        right: 0;
        left: auto;
        border-left-color: transparent;
        border-right-color: #4196ff
    }

    .amap-indoormap-floorbar-control.is-mobile {
        width: 37px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-btn {
        height: 35px;
        line-height: 35px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock {
        height: 35px;
        top: 36px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock:after, .amap-indoormap-floorbar-control.is-mobile .select-dock:before {
        top: 13px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-list-box {
        height: 105px
    }

    .amap-indoormap-floorbar-control .floor-list-item .floor-btn {
        color: #555;
        font-family: "Times New Roman", sans-serif, "Microsoft Yahei";
        font-size: 16px
    }

    .amap-indoormap-floorbar-control .floor-list-item.selected .floor-btn {
        color: #000
    }

    .amap-indoormap-floorbar-control .floor-btn {
        height: 28px;
        line-height: 28px;
        overflow: hidden;
        cursor: pointer;
        position: relative;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .amap-indoormap-floorbar-control .floor-btn:hover {
        background-color: rgba(221, 221, 221, .4)
    }

    .amap-indoormap-floorbar-control .floor-minus, .amap-indoormap-floorbar-control .floor-plus {
        position: relative;
        text-indent: -1000em
    }

    .amap-indoormap-floorbar-control .floor-minus:after, .amap-indoormap-floorbar-control .floor-plus:after {
        content: "";
        position: absolute;
        margin: auto;
        top: 9px;
        left: 0;
        right: 0;
        width: 0;
        height: 0;
        border: solid transparent;
        border-width: 10px 8px;
        border-top-color: #777
    }

    .amap-indoormap-floorbar-control .floor-minus.disabled, .amap-indoormap-floorbar-control .floor-plus.disabled {
        opacity: .3
    }

    .amap-indoormap-floorbar-control .floor-plus:after {
        border-bottom-color: #777;
        border-top-color: transparent;
        top: -3px
    }

    .amap-indoormap-floorbar-control .floor-list-box {
        max-height: 153px;
        position: relative;
        overflow-y: hidden
    }

    .amap-indoormap-floorbar-control .floor-list {
        margin: 0;
        padding: 0;
        list-style: none
    }

    .amap-indoormap-floorbar-control .floor-list-item {
        position: relative
    }

    .amap-indoormap-floorbar-control .floor-btn.disabled, .amap-indoormap-floorbar-control .floor-btn.disabled *, .amap-indoormap-floorbar-control.with-indrm-loader * {
        -webkit-pointer-events: none !important;
        pointer-events: none !important
    }

    .amap-indoormap-floorbar-control .with-indrm-loader .floor-nonas {
        opacity: .5
    }

    .amap-indoor-map-moverf-marker {
        color: #555;
        background-color: #FFFEEF;
        border: 1px solid #7E7E7E;
        padding: 3px 6px;
        font-size: 12px;
        white-space: nowrap;
        display: inline-block;
        position: absolute;
        top: 1em;
        left: 1.2em
    }

    .amap-indoormap-floorbar-control .amap-indrm-loader {
        -moz-animation: amap-indrm-loader 1.25s infinite linear;
        -webkit-animation: amap-indrm-loader 1.25s infinite linear;
        animation: amap-indrm-loader 1.25s infinite linear;
        border: 2px solid #91A3D8;
        border-right-color: transparent;
        box-sizing: border-box;
        display: inline-block;
        overflow: hidden;
        text-indent: -9999px;
        width: 13px;
        height: 13px;
        border-radius: 7px;
        position: absolute;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0
    }

    @-moz-keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @-webkit-keyframes amap-indrm-loader {
        0% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            -ms-transform: rotate(0);
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            -ms-transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }</style>

    <title>木鸟短租网-特色旅游住宿,短租房,日租房,短租公寓,民宿订房网站</title>
    <meta name="keywords" content="木鸟短租,短租房,日租房,短租公寓,旅游住宿,订房网站">
    <meta name="description" content="木鸟短租网是全国领先的短租日租网站,向全国旅游爱好者提供短租公寓,家庭旅馆,短租房,日租房等以特色旅游住宿为主的短期租房订房网站服务平台.">
    <meta name="viewport" content="width=1400, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta property="wb:webmaster" content="xfwy">
    <meta property="qc:admins" content="329429240">
    <link rel="shortcut icon" href="https://assets.muniao.com/assets2/pc/favicon.ico">
    <script charset="utf-8" src="${staticRoot}/images/v.js.下载"></script>
    <script>
        var logocode = '';
        logocode += '||       ||  |      |  ||    |  |||||      |       |||||\r\n';
        logocode += '| |     | |  |      |  | |   |    |       | |     |     |\r\n';
        logocode += '|  |   |  |  |      |  |  |  |    |      |||||    |     |\r\n';
        logocode += '|   | |   |  |      |  |   | |    |     |     |   |     |\r\n';
        logocode += '|    |    |   ||||||   |    ||  |||||  |       |   |||||\r\n';
        console.log(logocode);
    </script>
    <script src="${staticRoot}/images/jquery-1.11.2.min.js.下载"></script>
    <script src="${staticRoot}/images/muniao.js.下载"></script>
    <script src="${staticRoot}/images/muniao_engine.min.js.下载"></script>
    <script src="${staticRoot}/images/public.js.下载"></script>
    <link href="${staticRoot}/images/reset.css" rel="stylesheet">
    <link href="${staticRoot}/images/s_style.css" rel="stylesheet">
    <link href="${staticRoot}/images/w_css.css" rel="stylesheet">
    <link href="${staticRoot}/images/style_single.css" rel="stylesheet">


    <link href="${staticRoot}/images/index_s.css" rel="stylesheet">
    <link href="${staticRoot}/images/w_style.css" rel="stylesheet">
    <script src="${staticRoot}/images/index.js.下载"></script>
    <script>
        document.write(unescape("%3Clink%20rel%3D%22stylesheet%22%20href%3D%22https%3A//cache.amap.com/lbs/static/main.css%3Fv%3D1.0%22/%3E"));
        //document.write(unescape("%3Cscript type%3D%22text%2Fjavascript%22 src%3D%22http%3A%2F%2Fwebapi.amap.com%2Fmaps%3Fv%3D1.3%26key%3Df346c39185247446f13adfa96bf7bf61%22%3E%3C%2Fscript%3E"));
        document.write(unescape("%3Cscript%20type%3D%22text/javascript%22%20src%3D%22https%3A//webapi.amap.com/maps%3Fv%3D1.3%26key%3Dd038a3bb9b8de41538973a7904eb7686%22%3E%3C/script%3E"));
    </script>
    <link rel="stylesheet" href="${staticRoot}/images/main.css">
    <script type="text/javascript" src="${staticRoot}/images/maps"></script>
    <style type="text/css">.amap-container {
        cursor: url(https://webapi.amap.com/theme/v1.3/openhand.cur), default;
    }

    .amap-drag {
        cursor: url(https://webapi.amap.com/theme/v1.3/closedhand.cur), default;
    }</style>
    <script src="${staticRoot}/images/UserLoginCallback"></script>
</head>
<body>
<div id="amap_container" style="display: none; position: relative; background: rgb(252, 249, 242);"
     class="amap-container">
    <object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
            type="text/html" data="about:blank"></object>
    <div class="amap-maps">
        <div class="amap-drags" style="">
            <div class="amap-layers" style="transform: translateZ(0px);">
                <div class="amap-markers" style="position: absolute; z-index: 120; top: 0px; left: 0px;"></div>
                <canvas class="amap-labels" draggable="false" width="0" height="0"
                        style="position: absolute; z-index: 99; height: 0px; width: 0px; top: 0px; left: 0px;"></canvas>
            </div>
            <div class="amap-overlays" style=""></div>
        </div>
    </div>
    <div style="display: none;"></div>
    <div class="amap-controls"></div>
    <a class="amap-logo" href="http://gaode.com/" target="_blank"><img src="${staticRoot}/images/mapinfo_05.png"></a>
    <div class="amap-copyright" style="display: none;"><!--v1.3.28--> © 2018 AutoNavi <span class="amap-mcode">- GS(2018)1709号</span>
    </div>
</div>
<div id="baidumap_container" style="display:none;"></div>
<div id="getMap" class="getMap" style="display:none;"></div>


<style>
    #div_FangDong ul li:hover {
        color: #fff;
        background: #f30;
    }

    .free-publishBtn {
        display: inline-block;
        padding: 0 16px;
        background: #ff9180;
        color: #ffffff;
        -webkit-border-radius: 6px;
        height: 39px;
        line-height: 39px;
        margin: 3px 6px 0 0;
    }
</style>
<script>
    function logout() {
        $.post("/Login/OutLogin", function (data) {
            console.log(data);
            if (data == "1") {
                location.reload();
                //location.href = '/Home/Index';
            }
        });
    }
</script>
<!--[if lte IE 7]>
<div style="background:#ff6180;  width:100%; height:50px; line-height:50px; text-align:center; font-size:14px; color:#fff; font-family:"
     微软雅黑";>
温馨提示：您目前的浏览器版本过低，网站部分功能无法正常使用，建议尽快升级：
<a href="http://www.chromeliulanqi.com/" target="_blank" name="升级谷歌浏览器" id="upgrade_firefox"
   style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img
        src="//assets.muniao.com/assets2/pc/Content/images/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox"
   style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img
        src="//assets.muniao.com/assets2/pc/Content/images/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"><a href="https://www.muniao.com/"><img
            src="${staticRoot}/images/mn_logo.png" width="80" height="40"></a></h2>
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/images/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活">
    </div>
    <ul class="s_mn_nav">
        <li><a href="https://www.muniao.com/" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="https://www.muniao.com/features.html" target="_self">特色短租</a></li>
        <li><a href="https://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="https://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/images/give88.png"></i></a></li>
    </ul>
    <div id="div_FangKe1" class="s_mn_release w_mR30" style="display:none;">
        <a href="https://user2.muniao.com/Index/MoveHouse?utp=1" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style="display: block"><a href="http://user2.muniao.com/Index/MoveHouse?utp=1"
                                                        class="free-publishBtn">免费发布房源</a> <span>Hi,欢迎回来！</span> <a
            class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank"
            onmouseover="$(&#39;#div_FangKe&#39;).show(); $(&#39;#div_FangDong&#39;).show();">${user.roomName}</a><!--房东弹出框-->
        <div id="div_FangDong" class="w_user_xl"
             style="display:none;border-radius: 3px;opacity:0.8;background-color:rgb(191, 82, 13);border:0;"
             onmouseover="$(&#39;#div_FangDong&#39;).show();" onmouseout="$(&#39;#div_FangDong&#39;).hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font" style="text-align:left;"><a
                        href="http://localhost:8080/muniao/landlordorder" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房东中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://localhost:8080/muniao/landlordorder"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">发布房间</a></li>
                    <li><a href="http://localhost:8080/muniao/landlordorder"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">订单管理</a></li>
                    <li><a href="http://localhost:8080/muniao/landlordorder"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房源管理</a></li>
                    <li><a href="http://localhost:8080/muniao/landlordorder"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房东助手</a></li>
                </ul>
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;"><a
                        href="www.baidu.com" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房客中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="https://www.muniao.com/mobile.html"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;"><a href="javascript:void(0);"
                                                                                  onclick="logout()"
                                                                                  style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a>
                </div>
            </div>
        </div>
    </div>
    <div id="div_Login" class="s_mn_loginbox w_mR30" style="display:none;">

        <a href="javascript:void(0);" id="Login1" class="free-publishBtn">免费发布房源</a>
        <div class="s_mn_login">
            <a href="javascript:void(0);" id="Login1" class="s_mn_loginbutt1" rel="nofollow">登录</a>·
            <a href="http://user2.muniao.com/Regist/Index" class="s_mn_loginbutt" rel="nofollow">注册</a>
        </div>
    </div>
</div>
<!--登录弹出框-->

<script src="${staticRoot}/images/base-validator.js.下载"></script>
<link href="${staticRoot}/images/LoginDiv.css" rel="stylesheet">

<script>
    function toLogin(tp) {
        var backurl = $("#backurl").val();
        var backparm = $("#backparm").val();
        var ss = $("#reurl").val();
        var backurlparm = "";
        if (backurl != "" && backurl != null && backparm != null && backparm != "") {
            backparm = backparm.replace(/\*/g, "&");
            backparm = backparm.replace(/A/g, "=");
            backurl = backurl.replace(/F/, "/");
            backurlparm = "/" + backurl + "?" + backparm + "&t=" + 131728163347993284;
        }
        else if (backurl != "") {
            backurlparm = "/" + backurl;
        } else if (ss != null && ss != "") {
            backurlparm = "https://www.muniao.com/" + ss + "?t=" + 131728163347993284;
        }

        if (tp == 0) {
            //手机号为空验证
            if ($('#login_Tel_M').val().trim() == '') {
                $('#login_Tel_M').focus();
                $('.newa_tips_text').html('请输入手机号码');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
                return false;
            }
            //手机号是否正确
            if (!isMobile($('#login_Tel_M').val().trim())) {
                $('#login_Tel_M').focus();
                $('.newa_tips_text').html('手机号格式错误');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
                return false;
            }
            //验证图形验证码空判断
            if ($('#login_ValidCode').val().trim() == '') {
                $('#login_ValidCode').focus();
                $('.newa_tips_text').html('请输入图形验证码');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 126}).addClass("newa_tips_show");
                return false;
            }
            //验证短信验证码空判断
            if ($('#login_MsgCode').val().trim() == '') {
                $('#login_MsgCode').focus();
                $('.newa_tips_text').html('请输入短信验证码');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 186}).addClass("newa_tips_show");
                return false;
            }
            //登录
            $.post("/Login/CheckLoginFast", {
                Tel_M: $('#login_Tel_M').val().trim(),
                ValidCode: $('#login_ValidCode').val().trim(),
                MsgCode: $('#login_MsgCode').val().trim()
            }, function (data) {
                var j = JSON.parse(data);
                if (j.state == -1) {//图形验证码错误
                    getImageCode();
                    $('#login_ValidCode').focus();
                    $('.newa_tips_text').html('图形验证码错误');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 126
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -2) {//短信验证码错误
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('短信验证码错误');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -22) {//短信验证码错误
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('验证码已经失效，请重新获取验证码！');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == 1) {
                    if (backurlparm != "") {
                        location.href = backurlparm;
                    } else {
                        location.reload();
                    }
                }
                else {
                    alert("登录失败！");
                }
            });

        }
        else {
            //手机号为空验证
            if ($('#Login_Email_Tel_M').val().trim() == '') {
                $('#Login_Email_Tel_M').focus();
                $('.newa_tips_text').html('请输入手机号码');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
                return false;
            }
            //手机号是否正确
            if (!isMobile($('#Login_Email_Tel_M').val().trim())) {
                $('#Login_Email_Tel_M').focus();
                $('.newa_tips_text').html('手机号格式错误');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
                return false;
            }
            //密码为空验证
            if ($('#Login_Pwd').val().trim() == '') {
                $('#Login_Pwd').focus();
                $('.newa_tips_text').html('请输入密码');
                $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 126}).addClass("newa_tips_show");
                return false;
            }
            //普通登录
            $.post("/Login/CheckLogin", {
                Account: $('#Login_Email_Tel_M').val().trim(),
                Password: $('#Login_Pwd').val().trim()
            }, function (data) {
                var j = JSON.parse(data);
                if (j.state == 1) {
                    if (backurlparm != "") {
                        location.href = backurlparm;
                    } else {
                        location.reload();
                    }
                }
                else if (j.state == -1) {
                    $('#Login_Email_Tel_M').focus();
                    $('.newa_tips_text').html('您还不是木鸟用户，请注册!');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -2) {
                    $('#Login_Email_Tel_M').focus();
                    $('.newa_tips_text').html('账号已锁定');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -3) {
                    $('#Login_Pwd').focus();
                    $('.newa_tips_text').html('登录密码错误');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else {
                    alert('登录失败');
                }
            });
        }
    }

    //获取验证码
    var Login_IsOut = false;//验证码是否过期
    function getLoginValidCode(obj) {
        //手机号为空验证
        if ($('#login_Tel_M').val().trim() == '') {
            $('#login_Tel_M').focus();
            $('.newa_tips_text').html('请输入手机号码');
            $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
            return false;
        }
        //手机号是否正确
        if (!isMobile($('#login_Tel_M').val().trim())) {
            $('#login_Tel_M').focus();
            $('.newa_tips_text').html('手机号格式错误');
            $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 66}).addClass("newa_tips_show");
            return false;
        }
        //验证图形验证码空判断
        if ($('#login_ValidCode').val().trim() == '') {
            $('#login_ValidCode').focus();
            $('.newa_tips_text').html('请输入图形验证码');
            $(".newa_tips").css({"margin-left": -(newa_len * 12 + 82) / 2, "top": 126}).addClass("newa_tips_show");
            return false;
        }
        /*发送短信*/
        $.ajaxSettings.async = false;
        $.ajaxSetup({cache: false});
        $.get('/Login/SendValidCode', {
            mob: $('#login_Tel_M').val(),
            ValidCode: $('#login_ValidCode').val().trim()
        }, function (data) {
            var State = JSON.parse(data).State;
            if (State == 1) {
                //$('#hd_MsgCode').val(JSON.parse(data).UtilsCode);

                /*设置样式*/
                var name = $(obj).html();
                var color = $(obj).css('color');
                var i = 60;
                $(obj).html(i + '秒');
                $(obj).css('color', '#fe7e71');
                $(obj).removeAttr("onclick");
                var inv = setInterval(function () {
                    if (i == 1) {
                        $(obj).html(name);
                        $(obj).css('color', color);
                        $(obj).attr("onclick", "getLoginValidCode(this)");
                        clearInterval(inv);
                    }
                    else {
                        i--;
                        $(obj).html(i + '秒');
                    }
                }, 1000);
                /*设置验证码过期时间*/
                var outtime = setInterval(function () {
                    Login_IsOut = true;
                    clearInterval(outtime);
                }, 120000);
                /*验真手机号*/
                $('#hd_ValidTel').val($('#edit_Tel').val());
                alert('短信验证码已发送，请注意查收！');
            }
            else if (State == 2) {
                alert('已达到验证次数上限，请稍后再试！');
            }
            else if (State == 4) {
                alert('您还不是木鸟用户，请注册!');
            }
            else if (State == 3) {
                var Code = JSON.parse(data).Code;
                alert(Code);
            } else if (State == 5) {
                alert('图形验证码错误！');
            }
            else {
                alert('发送失败，请稍后重试！');
            }

        })
    }

    //获取图片验证码
    function getImageCode(obj) {
        document.getElementById("ValidImg").src = '/Login/VerifyCode?' + Math.random();
    }
</script>


<style>
    input::-ms-reveal {
        display: none;
    }

    /*隐藏密码框小眼睛*/
</style>
<div class="newa_login_bg"></div>
<div class="newa_login_main">
    <a href="javascript:;" class="newa_close"></a>
    <ul class="newa_login_tab">
        <li class="newa_login_t_active"><span>快捷登录</span></li>
        <li><span>普通登录</span></li>
    </ul>
    <input type="hidden" name="displayurl" id="backurl" value="">
    <input type="hidden" name="displayparm" id="backparm" value="">
    <input type="hidden" name="displayreurl" id="reurl" value="">
    <!--快捷登录--->
    <div class="newa_login_con" style="display: block">
        <ul class="newa_login_input">
            <li>
                <i class="newa_kj_icon"></i>
                <input type="text" id="login_Tel_M" name="newa_kj_phone" placeholder="手机号">
            </li>
            <li>
                <i class="newa_piccode_icon"></i>
                <input type="text" id="login_ValidCode" name="newa_piccode" placeholder="图形验证码">
                <input type="hidden" id="hd_ValidCode">
                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg" src="${staticRoot}/images/VerifyCode"
                                                                        onclick="getImageCode(this)"></a>
            </li>
            <li>
                <i class="newa_code_icon"></i>
                <input type="text" id="login_MsgCode" name="newa_code" placeholder="短信验证码">
                <input type="hidden" id="hd_MsgCode">
                <span class="newa_code" style="cursor:pointer;" onclick="getLoginValidCode(this);">获取短信验证码</span>
            </li>
        </ul>
        <div class="newa_foget">
            <a class="newa_foget_m" href="http://user2.muniao.com/forgetpass">忘记密码？</a>
        </div>
        <a class="newa_login_btn newa_quick" href="javascript:void(0);" onclick="toLogin(0)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a></p>
        <div class="newa_coop">
            <a class="newa_sina"
               href="https://api.weibo.com/oauth2/authorize?state=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;client_id=3437054643&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2FHome%2FCallBack%3Fchannel%3Dweibo"></a>
            <a class="newa_qq"
               href="https://graph.qq.com/oauth2.0/authorize?state=Login&amp;client_id=101214959&amp;response_type=code&amp;redirect_uri=http://www.muniao.com/home/callback?channel=qq&amp;fromurl=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;scope=get_user_info,get_fanslist,get_idollist,add_idol"></a>


        </div>
    </div>
    <!---普通登录---->
    <div class="newa_login_con">
        <ul class="newa_login_input">
            <li>
                <i class="newa_email_tel_icon"></i>
                <input type="text" id="Login_Email_Tel_M" placeholder="邮箱/手机号">
            </li>
            <li>
                <i class="newa_l_password_icon"></i>
                <input type="password" id="Login_Pwd" placeholder="密码">
            </li>
        </ul>
        <div class="newa_foget">
            <a class="newa_foget_m" href="http://user2.muniao.com/forgetpass">忘记密码？</a>
            <input id="newa_auto_l" type="checkbox">
            <label for="newa_auto_l">下次自动登录</label>
        </div>
        <a class="newa_login_btn newa_ordinary" href="javascript:void(0);" onclick="toLogin(1)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a></p>
        <div class="newa_coop">
            <a class="newa_sina"
               href="https://api.weibo.com/oauth2/authorize?state=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;client_id=3437054643&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2FHome%2FCallBack%3Fchannel%3Dweibo"></a>
            <a class="newa_qq"
               href="http://openapi.qzone.qq.com/oauth/show?which=Login&amp;response_type=code&amp;client_id=101214959&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;scope=get_user_info,get_fanslist,get_idollist,add_idol"></a>
        </div>
    </div>
    <!---tips--->
    <div class="newa_tips newa_tips_kj" style="margin-left: -134px;top: 118px;">
        <i class="newa_tips_icon">!</i>
        <span class="newa_tips_text">请输入</span>
        <a class="newa_close_tips" href="javascript:;">×</a>
        <span class="newa_triangle"><i></i><em></em></span>
    </div>
</div>
<script>
    $(".newa_login_tab li").each(function (a, b) {
        $(b).on("click", function () {
            $(this).addClass("newa_login_t_active").siblings().removeClass("newa_login_t_active");
            $(".newa_login_con").eq(a).show().siblings(".newa_login_con").hide();
        })
    })
    $("body").delegate("#Login1", "click", function () {
        $("#ValidImg").trigger("click");
        $(".newa_login_bg").show();
        $(".newa_login_main").addClass("newa_login_pop");
    });
    $("body").delegate(".newa_close", "click", function () {
        $(".newa_login_bg").hide();
        $(".newa_login_main").removeClass("newa_login_pop");
    });
    var kj_phone = $("input[name='newa_kj_phone']");
    var newa_tips = $(".newa_tips");
    var newa_len = $(".newa_tips_text").text().length;
    $(".newa_quick").click(function () {
        if (kj_phone.val() == "") {
            kj_phone.focus();
            newa_tips.css({"margin-left": -(newa_len * 12 + 82) / 2}).addClass("newa_tips_show");
        }
    });
    $(".newa_close_tips,.newa_login_input li").click(function () {
        newa_tips.addClass("newa_trans");
        newa_tips.removeClass("newa_tips_show");
    });
</script>


<script>
    $(function () {
        //设置banner选中菜单样式
        $('.s_mn_nav li:eq(0) a').addClass('s_mn_nav_over');
    })
</script>

<script>
    //登录验证
    $(function () {
        if ($(".s_mn_banner_list li").size() == 1) {
            $(".w_banner_icon").hide()
        }
        var showdivflag = '';
        if (showdivflag == '0') {
            $('.newa_login_main').attr('class', 'newa_login_main newa_login_pop');
        }
    });

    function getonclick() {
        $(".labor-dialog").show();
    }

    function getClose() {
        $(".labor-dialog").hide();
    }

    (function () {
        var user_agent = String(navigator.userAgent || "").toLowerCase(),
                url = location.href || "",
                _is_mobile = "";
        if (url.indexOf("from=wap") > -1) {
            S.Cookie("from", "wap", 10);
        } else if (user_agent.indexOf("iphone") > -1 && user_agent.indexOf("spider") == -1) {
            _is_mobile = 'a';
        } else if (user_agent.indexOf("android") > -1 && user_agent.indexOf("spider") == -1) {
            _is_mobile = "b";
        } else if (user_agent.indexOf("windows phone") > -1 && user_agent.indexOf("spider") == -1) {
            _is_mobile = "c";
        } else if (url.indexOf("mqq_source") > -1 && user_agent.indexOf("spider") == -1) {
            _is_mobile = "d";
        }
        if (_is_mobile != "") {
            location.href = "https://m.muniao.com/";
        }
    })();

</script>
<div class="labor-dialog" style="display:none;">
    <!--[if IE 8]>
    <div class="background-mask"></div><![endif]-->
    <div class="labor-dialogContent">
        <a href="javascript:;" onclick="getClose()" class="labor-pcDialogClose"></a>
        <img src="${staticRoot}/images/dialog_0601.png" class="labor-activityDialogImg">
    </div>
</div>
<div class="s_mn_mainbox" id="_mainbox">
    <div class="s_mn_banner_index">
        <div class="s_mn_banner_center">
            <div class="s_mn_search_index">
                <form action="https://www.muniao.com/Home/Lists" class="s_mn_search_box" id="search_form" method="post"
                      target="_self" data-x="xxx">
                    <div style="display: none">
                        <input name="pinyinText" id="pinyintext" type="hidden" value="beijing" autocomplete="off">
                        <input name="areaText" id="areatext" type="hidden" value="" autocomplete="off">
                        <input name="area" id="area" type="hidden" value="" autocomplete="off">
                        <input name="landmarkid" id="landmarkid" type="hidden" value="" autocomplete="off">
                        <input name="keyword" id="keyword" type="hidden" value="" autocomplete="off">
                        <input name="longitude" id="longitude" type="hidden" value="" autocomplete="off">
                        <input name="latitude" id="latitude" type="hidden" value="" autocomplete="off">
                    </div>
                    <ul class="s_mn_search_list">
                        <li class="s_mn_search_list_w city_w">
                            <div class="s_mn_search_ipt">
                                <div class="s_mn_ipt_index">
                                    <input type="text"
                                           class="s_mn_city_ipt s_orange s_f20 s_yh w_index_position city_ipt_w"
                                           id="cityvalue" value="" placeholder="请选择目的地" autocomplete="off">
                                </div>
                                <div class="s_mn_ipt_window" style="display: none;"></div>
                                <div class="s_mn_citywindow noeve" id="citywindow" style="display: none;">
                                    <ul class="s_mn_citywindow_title">
                                        <li><a href="javascript:void(0)" class="s_cw_a_over">热门城市</a></li>
                                        <li><a href="javascript:void(0)">ABCD</a></li>
                                        <li><a href="javascript:void(0)">EFGHJ</a></li>
                                        <li><a href="javascript:void(0)">KLMN</a></li>
                                        <li><a href="javascript:void(0)">PQRSTW</a></li>
                                        <li><a href="javascript:void(0)">XYZ</a></li>
                                    </ul>
                                    <ul class="s_citywindow_main" style="display: block;">
                                        <li data-path="beijing" data-url="bj" data-city="北京">
                                            <a href="javascript:void(0)">北京</a>
                                        </li>
                                        <li data-path="shanghai" data-url="sh" data-city="上海"><a
                                                href="javascript:void(0)">上海</a></li>
                                        <li data-path="chongqing" data-url="cq" data-city="重庆"><a
                                                href="javascript:void(0)">重庆</a></li>
                                        <li data-path="tianjin" data-url="tj" data-city="天津"><a
                                                href="javascript:void(0)">天津</a></li>
                                        <li data-path="qingdao" data-url="qingdao" data-city="青岛"><a
                                                href="javascript:void(0)">青岛</a></li>
                                        <li data-path="qinhuangdao" data-url="qhd" data-city="秦皇岛"><a
                                                href="javascript:void(0)">秦皇岛</a></li>
                                        <li data-path="sanya" data-url="sy" data-city="三亚"><a href="javascript:void(0)">三亚</a>
                                        </li>
                                        <li data-path="dalian" data-url="dalian" data-city="大连"><a
                                                href="javascript:void(0)">大连</a></li>
                                        <li data-path="weihai" data-url="zz" data-city="威海"><a
                                                href="javascript:void(0)">威海</a></li>
                                        <li data-path="rizhao" data-url="zz" data-city="日照"><a
                                                href="javascript:void(0)">日照</a></li>
                                        <li data-path="yantai" data-url="zz" data-city="烟台"><a
                                                href="javascript:void(0)">烟台</a></li>
                                        <li data-path="xiamen" data-url="xm" data-city="厦门"><a
                                                href="javascript:void(0)">厦门</a></li>
                                        <li data-path="chengde" data-url="c" data-city="承德"><a
                                                href="javascript:void(0)">承德</a></li>
                                        <li data-path="dali" data-url="c" data-city="大理"><a
                                                href="javascript:void(0)">大理</a></li>
                                        <li data-path="beihai" data-url="c" data-city="北海"><a href="javascript:void(0)">北海</a>
                                        </li>
                                        <li data-path="shenzhen" data-url="shenzhen" data-city="深圳"><a
                                                href="javascript:void(0)">深圳</a></li>
                                        <li data-path="shenyang" data-url="shenyang" data-city="沈阳"><a
                                                href="javascript:void(0)">沈阳</a></li>
                                        <li data-path="chengdu" data-url="chengdu" data-city="成都"><a
                                                href="javascript:void(0)">成都</a></li>
                                        <li data-path="suzhou" data-url="sz" data-city="苏州"><a
                                                href="javascript:void(0)">苏州</a></li>
                                        <li data-path="hangzhou" data-url="hz" data-city="杭州"><a
                                                href="javascript:void(0)">杭州</a></li>
                                        <li data-path="xian" data-url="xa" data-city="西安"><a href="javascript:void(0)">西安</a>
                                        </li>
                                        <li data-path="guangzhou" data-url="gz" data-city="广州"><a
                                                href="javascript:void(0)">广州</a></li>
                                        <li data-path="changsha" data-url="cs" data-city="长沙"><a
                                                href="javascript:void(0)">长沙</a></li>
                                        <li data-path="kunming" data-url="km" data-city="昆明"><a
                                                href="javascript:void(0)">昆明</a></li>
                                        <li data-path="nanjing" data-url="nj" data-city="南京"><a
                                                href="javascript:void(0)">南京</a></li>
                                        <li data-path="wuhan" data-url="wh" data-city="武汉"><a href="javascript:void(0)">武汉</a>
                                        </li>
                                        <li data-path="zhengzhou" data-url="zz" data-city="郑州"><a
                                                href="javascript:void(0)">郑州</a></li>
                                    </ul>
                                    <ul class="s_citywindow_main2" style="display: none;"></ul>
                                    <div class="s_city_window_prompt">
                                        温馨提示：请选择城市，也可直接输入城市名或城市拼音如：“北京”“BJ”
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="s_mn_search_list_w date_start">
                            <div class="s_mn_search_ipt">
                                <div class="s_mn_ipt_index">
                                    <input type="text"
                                           class="s_mn_city_ipt s_orange s_f30 s_yh w_index_date date_ipt_start"
                                           id="start_date" name="start_date" value="" placeholder="入住时间"
                                           readonly="readonly" autocomplete="off" onfocus="this.blur()">
                                </div>
                                <div class="s_mn_sclear" id="starttime" style="display: none;">
                                    <div class="s_mn_sclear_title">
                                        <div class="s_mn_sclear_pre" id="pre_month">
                                            <a href="javascript:void(0)">&lt;</a>
                                        </div>
                                        <div class="s_mn_sclear_date" id="starttime2"></div>
                                        <div class="s_mn_sclear_next" id="next_month">
                                            <a href="javascript:void(0)">&gt;</a>
                                        </div>
                                    </div>

                                    <div class="s_mn_scld_main">
                                        <div class="s_mn_clear_week"><span style="color: #f30;">周日</span>
                                            <span>周一</span> <span>周二</span> <span>周三</span> <span>周四</span>
                                            <span>周五</span> <span style="color: #f30;">周六</span></div>
                                        <div class="s_mn_clear_day" id="starttime_day"><!----> </div>
                                    </div>
                                    <div class="s_mn_clear_prompt" id="starttime1">
                                        请选择入住时间<a href="javascript:void(0)">今天</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="s_mn_search_list_w"
                            style="width: 20px; height: 56px; position: relative; background: #fff;">
                            <div style="position: absolute; top: 28px; width: 18px; height: 2px; background: #ccc"></div>
                        </li>
                        <li class="s_mn_search_list_w date_end">
                            <div class="s_mn_search_ipt">
                                <div class="s_mn_ipt_index">
                                    <input type="text" class="s_mn_city_ipt s_orange s_f30 s_yh date_ipt_end"
                                           id="end_date" name="end_date" value="" placeholder="离开时间" readonly="readonly"
                                           autocomplete="off" onfocus="this.blur()">
                                </div>
                            </div>
                        </li>
                        <li class="s_mn_search_list_w w_rz_person">
                            <div class="s_mn_search_ipt s_mn_person">
                                <div class="s_mn_ipt_index">
                                    <input type="text" class="s_mn_city_ipt s_orange w_index_person s_f30 s_yh noeve"
                                           id="s_numtext" name="guestnum" value="" placeholder="入住人数"
                                           readonly="readonly" onfocus="this.blur()" autocomplete="off">
                                </div>
                                <ul class="s_mn_number noeve" id="s_number" style="display: none;">
                                    <li><a href="javascript:void(0)" class="s_l40 s_f20">1</a></li>
                                    <li><a href="javascript:void(0)">2</a></li>
                                    <li><a href="javascript:void(0)">3</a></li>
                                    <li><a href="javascript:void(0)">4</a></li>
                                    <li><a href="javascript:void(0)">5</a></li>
                                    <li><a href="javascript:void(0)">6</a></li>
                                    <li><a href="javascript:void(0)">7</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <div class="s_mn_search_submit noeve">
                        <input type="button" class="s_mn_submit_index s_red s_f16 s_yh" id="search_submit" value="开始预订"
                               onmouseover="this.className = &#39;s_mn_submit_index_hover&#39;"
                               onmouseout="this.className = &#39;s_mn_submit_index s_red s_f16 s_yh&#39;">
                    </div>
                </form>
            </div>
        </div>
        <ul class="s_mn_banner_list">


            <li style="display: none;"><a title="六一活动" href="javascript:getonclick();"
                                          style="background: url(${staticRoot}/images/pc_bannar.jpg) 50% 50% no-repeat; display: block;">&nbsp;</a>
            </li>
            <li style="display: block;"><a title="发现" href="https://www.muniao.com/list_story_0_1.html"
                                           style="background: url(${staticRoot}/images/bannar_20180412.jpg) 50% 50% no-repeat; display: block;">&nbsp;</a>
            </li>


        </ul>
        <div class="w_banner_icon w_left_icon">&nbsp;</div>
        <div class="w_banner_icon w_right_icon">&nbsp;</div>
    </div>
    <div class="newAdd-good">
        <ul class="newAdd-goodList">
            <li>
                <img src="${staticRoot}/images/pc_safe.png" alt="安全">
                <p>10万出行意外险/身份证信息互联网核查</p>
            </li>
            <li>
                <img src="${staticRoot}/images/pc_server.png" alt="服务">
                <p>2623位试睡体验师/50万房源实拍验真</p>
            </li>
            <li class="last">
                <img src="${staticRoot}/images/pc_clear.png" alt="卫生">
                <p>被单每客一换（高品质洗漱用品）/酒店及保洁</p>
            </li>
        </ul>
    </div>
    <div class="s_mn_hotcitybox">
        <div class="s_mn_center2">
            <div class="s_mn_hotcity_title">
                <h2>寻找你未曾相遇的风景</h2>
                <span>热门城市</span>
            </div>
            <div class="s_mn_hotcity_main">
                <div class="s_mn_module">
                    <div class="s_mn_module2x">
                        <a href="https://www.muniao.com/beijing/" target="_blank" class="s_mn_place2"
                           data-nameen="beijing">
                            <img src="${staticRoot}/images/2015110240755481.jpg" width="780" height="280" alt="北京">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">北京</span> <span
                                        class="s_mn_module_describe">京戏胡同豆汁酸</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module1x">
                        <a href="https://www.muniao.com/shanghai/" target="_blank" class="s_mn_place1"
                           data-nameen="shanghai">
                            <img src="${staticRoot}/images/2015110248950057.jpg" width="380" height="280" alt="上海">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">上海</span> <span
                                        class="s_mn_module_describe">吴语 弄堂 城隍庙</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module1x">
                        <a href="https://www.muniao.com/qingdao/" target="_blank" class="s_mn_place1"
                           data-nameen="qingdao">
                            <img src="${staticRoot}/images/2015110240670077.jpg" width="380" height="280" alt="青岛">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">青岛</span> <span
                                        class="s_mn_module_describe">啤酒城享别样生活</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module2x">
                        <a href="https://www.muniao.com/qinhuangdao/" target="_blank" class="s_mn_place2"
                           data-nameen="qinhuangdao">
                            <img src="${staticRoot}/images/2015110240834921.jpg" width="780" height="280" alt="北戴河">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">北戴河</span> <span
                                        class="s_mn_module_describe">新石器时代的繁衍</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module1x">
                        <a href="https://www.muniao.com/dalian/" target="_blank" class="s_mn_place1"
                           data-nameen="dalian">
                            <img src="${staticRoot}/images/2015110240895237.jpg" width="380" height="280" alt="大连">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">大连</span> <span
                                        class="s_mn_module_describe">酣梦兴游老虎滩</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module1x">
                        <a href="https://www.muniao.com/chengdu/" target="_blank" class="s_mn_place1"
                           data-nameen="chengdu">
                            <img src="${staticRoot}/images/2015102234339797.jpg" width="380" height="280" alt="成都">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">成都</span> <span
                                        class="s_mn_module_describe">宽窄巷子慢生活</span></div>
                                <!--
                                <div class="s_mn_module_text">优选1157套房间</div>-->
                            </div>
                        </a>
                    </div>
                    <div class="s_mn_module1x">
                        <a href="https://www.muniao.com/hangzhou/" target="_blank" class="s_mn_place1"
                           data-nameen="hangzhou">
                            <img src="${staticRoot}/images/2015102234254437.jpg" width="380" height="280" alt="杭州">
                            <div class="s_mn_module_textbox">
                                <div class="s_mn_module_label"><span class="s_mn_module_name">杭州</span> <span
                                        class="s_mn_module_describe">断桥边的千年之恋</span></div>
                                <!--
                                <div class="s_mn_module_text">优选388套房间</div>-->
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="s_mn_adbox">
        <div class="s_mn_ad_center">
            <div class="s_mn_ad_title">
                <h2>为什么在木鸟订房？</h2>
            </div>
            <div class="s_mn_ad_main">
                <div class="index_bzbox">
                    <div class="index_bz">
                        <div class="index_bzicon">
                            <img src="${staticRoot}/images/index_bz1.png">
                        </div>
                        <h3>房源100%实地验证</h3>
                        <div class="index_bztipcontain" style="display: none;">
                            <div class="index_bztipboxbg"></div>
                            <div class="index_bztipbox">
                                <div class="index_bztip">
                                    <div class="index_bztipleft">
                                        <img src="${staticRoot}/images/index_bzone.png">
                                    </div>
                                    <div class="index_bztipright">
                                        <div id="index_bztipclose" class="index_bztipclose">
                                            <a href="javascript:void(0);"><img src="${staticRoot}/images/index_bzclose.png"></a>
                                        </div>
                                        <div class="index_bztiptitle">房源100%实地验证</div>
                                        <div class="index_bztipnr">
                                            1、我们的每一个房东，每一间房间都是有木鸟员工实地考察收集而来。<br>
                                            2、我们每一个房东都经过公安身份验证系统进行真实身份验证。<br>
                                            3、我们的每一间房间图片都是真实拍摄 不加任何修饰，您看到的就是您将要入住的。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="index_bzbox">
                    <div class="index_bz">
                        <div class="index_bzicon">
                            <img src="${staticRoot}/images/index_bz2.png">
                        </div>
                        <h3>付款到木鸟 资金有保障</h3>
                        <div class="index_bztipcontain" style="display: none;">
                            <div class="index_bztipboxbg"></div>
                            <div class="index_bztipbox">
                                <div class="index_bztip">
                                    <div class="index_bztipleft">
                                        <img src="${staticRoot}/images/index_bztwo.png">
                                    </div>
                                    <div class="index_bztipright">
                                        <div id="index_bztipclose" class="index_bztipclose">
                                            <a href="javascript:void(0);"><img src="${staticRoot}/images/index_bzclose.png"></a>
                                        </div>
                                        <div class="index_bztiptitle">付款到木鸟 资金有保障</div>
                                        <div class="index_bztipnr">
                                            1、在木鸟短租任何平台预订的房间，房款都是由木鸟短租代为保管，当您入住结束满意后房款才会转给房东。<br>
                                            2、如您在入住过程中遇到任何不满意，木鸟短租将全力帮您解决问题。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="index_bzbox">
                    <div class="index_bz">
                        <div class="index_bzicon">
                            <img class="index_bzimg" src="${staticRoot}/images/index_bz3.png">
                        </div>
                        <h3>保障入住人身安全</h3>
                        <div class="index_bztipcontain" style="display: none;">
                            <div class="index_bztipboxbg"></div>
                            <div class="index_bztipbox">
                                <div class="index_bztip">
                                    <div class="index_bztipleft">
                                        <img src="${staticRoot}/images/index_bzthree.png">
                                    </div>
                                    <div class="index_bztipright">
                                        <div id="index_bztipclose" class="index_bztipclose">
                                            <a href="javascript:void(0);"><img src="${staticRoot}/images/index_bzclose.png"></a>
                                        </div>
                                        <div class="index_bztiptitle">保障入住人身安全</div>
                                        <div class="index_bztipnr">
                                            1、木鸟短租上线以来已经接待了无数的房客，从来没有遇到人身意外。即使如此，我们仍然理解您对住进一个陌生人家中的担忧，并为此做了大量工作来保障您的整个交易和入住安全。<br>
                                            2、您在木鸟短租pc端、app产生的订单我们将免费赠送您一份保险，保障您在入住过程中的人身安全。入住人数较多时，建议您自行为其购买住宿意外险。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="index_bzbox">
                    <div class="index_bz">
                        <div class="index_bzicon">
                            <img class="index_bzimg" src="${staticRoot}/images/index_bz4.png">
                        </div>
                        <h3>地主之谊出行无忧</h3>
                        <div class="index_bztipcontain" style="display: none;">
                            <div class="index_bztipboxbg"></div>
                            <div class="index_bztipbox">
                                <div class="index_bztip">
                                    <div class="index_bztipleft">
                                        <img src="${staticRoot}/images/index_bzfour.png">
                                    </div>
                                    <div class="index_bztipright">
                                        <div id="index_bztipclose" class="index_bztipclose">
                                            <a><img src="${staticRoot}/images/index_bzclose.png"></a>
                                        </div>
                                        <div class="index_bztiptitle">地主之谊出行无忧</div>
                                        <div class="index_bztipnr">
                                            我们的房东大都是不折不扣的当地人，他们愿为远道而来的您尽一尽地主之谊。<br>
                                            1、房东会告诉您当地哪里是最好玩的，让您能够真正的体验到旅行社所不能给的当地旅游景点及自然景观。<br>
                                            2、房东会告诉您去哪里吃能吃到当地特色美食，哪怕是胡同里的一个小摊位，他还会告诉您哪里的美食价格合理不会被宰，有他拒绝宰客。<br>
                                            3、房东会告诉您出行的最佳路线，不走冤枉路，不打黑车，用最优的线路游最美的风景。
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="s_mn_features_box">
        <div class="s_mn_features_center">
            <div class="s_mn_features_title">
                <h2>一处居所，一种情怀</h2>
                <span>木鸟特色</span>
                <span><a href="https://www.muniao.com/features.html" target="_blank"
                         class="s_mn_more_index">探索更多&gt;</a></span>
            </div>
            <div class="s_mn_features_main">
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_1.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112849012901.jpg" width="380" height="280" alt="别墅  ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">别墅</div>
                            <div class="s_mn_features_text">公司年会，开Party，租豪华大别墅</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_2.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112850790009.jpg" width="380" height="280" alt="情侣房 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">情侣房</div>
                            <div class="s_mn_features_text">蜜月、情侣不一样的浪漫</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_5.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112850841837.jpg" width="380" height="280" alt="主题特色 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">主题特色</div>
                            <div class="s_mn_features_text">爱TA将TA的梦变成现实</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_7.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112850904385.jpg" width="380" height="280" alt="海景房 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">海景房</div>
                            <div class="s_mn_features_text">听海的声音，就在窗外</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_9.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112850969601.jpg" width="380" height="280" alt="古镇客栈 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">古镇客栈</div>
                            <div class="s_mn_features_text">住千年古镇，看岁月更迭，听年代流转</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_4.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112851022489.jpg" width="380" height="280" alt="木屋 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">木屋</div>
                            <div class="s_mn_features_text">感受最真实大自然，从住木屋开始</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_6.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112852049429.jpg" width="380" height="280" alt="四合院 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">四合院</div>
                            <div class="s_mn_features_text">感受老北京的深闺大院，品街头巷尾的家长里短</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_8.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112852099413.jpg" width="380" height="280" alt="复式 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">复式</div>
                            <div class="s_mn_features_text">小资情调的感同身受</div>
                        </div>
                    </a>
                </div>
                <div class="s_mn_features_place">
                    <a href="https://www.muniao.com/features_housing_10.html" target="_blank" class="s_mn_feautres_img">
                        <img src="${staticRoot}/images/2016112852149213.jpg" width="380" height="280" alt="窑洞 ">
                        <div class="s_mn_features_textbox">
                            <div class="s_mn_feautres_label">窑洞</div>
                            <div class="s_mn_features_text">西北黄土高原上的别样风情</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="s_mn_storybox">
        <div class="s_mn_story_center">
            <div class="s_mn_story_title">
                <h2>出门在外的一千零一夜</h2>
                <span>木鸟故事</span>
                <span><a href="https://www.muniao.com/list_story_0_1.html" target="_blank" class="s_mn_more_index">探索更多&gt;</a></span>
            </div>
            <div class="s_mn_story_main">
                <ul class="s_mn_story_list" id="s_mn_story_list">
                    <li style="display: block;">
                        <div class="s_mn_story_module">
                            <div class="s_mn_story_img">
                                <a href="https://www.muniao.com/show_story_1583.html" target="_blank" title="三亚碰到黑店怎么办"><img
                                        src="${staticRoot}/images/f51947af84d6480db57ba18e01ee0a1920180205172236211.jpg" width="790"
                                        height="380"></a>
                            </div>
                            <div class="s_mn_story_introduce">
                                <h3>
                                    <a href="https://www.muniao.com/show_story_1583.html" title="三亚碰到黑店怎么办"
                                       target="_blank">三亚碰到黑店怎么办</a>
                                </h3>
                                <span>遍布在三亚的东北人已经成了一种独特的现象。而且做为一个东北人来讲，我们是打心眼里喜欢那个温暖的城市，但好像网络上对在三亚的东北人评价上并不友好，而且觉得三亚人和东北人的关系也是水火不容，但听我讲完这个自己亲身经历的故事，你就不会这么想了。我家一共四口人，为了供我和姐姐上学，老爸老妈辛苦了大半辈子，而且在冰天雪地的东北，落下了风湿的病根，每年冬天都忍受病痛的折磨，我们看在眼里，除了心疼也没有别的办法…<a
                                        href="https://www.muniao.com/show_story_1583.html"
                                        target="_blank">[查看详情]</a></span>
                            </div>
                        </div>
                    </li>
                    <li style="">
                        <div class="s_mn_story_module">
                            <div class="s_mn_story_img">
                                <a href="https://www.muniao.com/show_story_1553.html" target="_blank"
                                   title="东北房客遇到上海房东"><img
                                        src="${staticRoot}/images/20e3473c30c34f839e412da8b41685fe20180108093209626.jpg" width="790"
                                        height="380"></a>
                            </div>
                            <div class="s_mn_story_introduce">
                                <h3>
                                    <a href="https://www.muniao.com/show_story_1553.html" title="东北房客遇到上海房东"
                                       target="_blank">东北房客遇到上海房东</a>
                                </h3>
                                <span>东北人脾气火爆是出了名的，以至于谁都听过“你瞅啥”“瞅你咋地”的故事。上海人的精明也是出了名的，《我的前半生》里马伊琍的妈妈就是一个典型的上海妇人形象。当狂放不羁风风火火的东北人去到上海，碰到一个生性谨慎事事周密的上海人，又会发生什么样的故事呢？2017年最后一个小长假，家在长春的我跟两个闺蜜准备去上海跨年，那里是我们三个在北国冷酷的雪乡里一直葆留有的浪漫想象。我们三个都是土生土长的东北妞，但相比…<a
                                        href="https://www.muniao.com/show_story_1553.html"
                                        target="_blank">[查看详情]</a></span>
                            </div>
                        </div>
                    </li>
                    <li style="">
                        <div class="s_mn_story_module">
                            <div class="s_mn_story_img">
                                <a href="https://www.muniao.com/show_story_1540.html" target="_blank" title="关于家的一百个梦想"><img
                                        src="${staticRoot}/images/4f8a9a967fae47d4b8939e3c92f5d26e20171218170712001.jpg" width="790"
                                        height="380"></a>
                            </div>
                            <div class="s_mn_story_introduce">
                                <h3>
                                    <a href="https://www.muniao.com/show_story_1540.html" title="关于家的一百个梦想"
                                       target="_blank">关于家的一百个梦想</a>
                                </h3>
                                <span>她叫钟小喵，从名字就知道她是个爱猫之人，这不家里就养了两只可爱猫咪，分别取名：樱桃和丸子。都说爱猫的人，拥有一颗柔软又善良的内心，她也不例外。博物馆控她是一个喜欢旅游的人，喜欢住民宿。每到一个地方，她最大的爱好就是去当地的博物馆逛一逛。在她看来，博物馆才是一个城市的灵魂所在，虽然爱逛，但一直也只是逛逛而已。直到几年前的一次湖北博物馆之行，开启了她新世界的大门。当时在博物馆遇到一个志愿者，讲解曾侯乙…<a
                                        href="https://www.muniao.com/show_story_1540.html"
                                        target="_blank">[查看详情]</a></span>
                            </div>
                        </div>
                    </li>
                    <li style="">
                        <div class="s_mn_story_module">
                            <div class="s_mn_story_img">
                                <a href="https://www.muniao.com/show_story_1710.html" target="_blank"
                                   title="不烧香只种花的最美尼姑庵"><img
                                        src="${staticRoot}/images/19b6a2da4f1146079884dec74648a1f620180606100211528.jpg" width="790"
                                        height="380"></a>
                            </div>
                            <div class="s_mn_story_introduce">
                                <h3>
                                    <a href="https://www.muniao.com/show_story_1710.html" title="不烧香只种花的最美尼姑庵"
                                       target="_blank">不烧香只种花的最美尼姑庵</a>
                                </h3>
                                <span>作为一个自由摄影师，大理一直是我心里最想去的地方。可以说大理之于我，就像三亚之于东北人，都是梦里的天堂。当然，去大理除了想感觉苍山洱海的静谧之美以外，我最想去的地方其实是寂照庵。寂照庵位于大理苍山圣应峰南麓，是大理最早敞开的一座尼姑庵。寺院周围树木成荫环境幽静，处处透着是清新浓艳的气味。寂照庵隐居深山，隐藏着本来就已是世外桃源的大理苍山深处，是名副其实的人间天堂。三月末，正好有两个客人也要去大理旅…<a
                                        href="https://www.muniao.com/show_story_1710.html"
                                        target="_blank">[查看详情]</a></span>
                            </div>
                        </div>
                    </li>
                    <li style="">
                        <div class="s_mn_story_module">
                            <div class="s_mn_story_img">
                                <a href="https://www.muniao.com/show_story_1709.html" target="_blank"
                                   title="小岞，让人惊艳的小渔村！"><img
                                        src="${staticRoot}/images/eb59d0813f2249d6a3b6daf00de8744f20180531111651889.jpg" width="790"
                                        height="380"></a>
                            </div>
                            <div class="s_mn_story_introduce">
                                <h3>
                                    <a href="https://www.muniao.com/show_story_1709.html" title="小岞，让人惊艳的小渔村！"
                                       target="_blank">小岞，让人惊艳的小渔村！</a>
                                </h3>
                                <span>说起文艺，首先想起的是厦门，谈起浪漫，人们向往的是圣托里尼的那一抹蓝。每个文青都有一个彩色的梦，就是能遇见一个让够放空自己，发现另一个自己的地方。前几日的旅行，我们发现了一处能够媲美日本直岛，比圣托里尼还浪漫的地方——泉州小岞。这里有可以媲美直岛的美术馆，有浪漫得可以拍青春片的无敌海景，还有充满市井气息的渔村渔市。这是一个根本不需要攻略的地方，在这里的每一天都是飘飘然的样子，漫无目的，但每一眼都会…<a
                                        href="https://www.muniao.com/show_story_1709.html"
                                        target="_blank">[查看详情]</a></span>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="s_mn_story_nav" id="s_mn_story_nav">
                    <a href="javascript:void(0);" class="s_mn_story_nav_a">&nbsp;</a> <a href="javascript:void(0);">&nbsp;</a>
                    <a href="javascript:void(0);">&nbsp;</a> <a href="javascript:void(0);">&nbsp;</a> <a
                        href="javascript:void(0);">&nbsp;</a>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="s_mn_column">
        <div class="s_mn_column_center">
            <div class="s_mn_informationbox">
                <div class="s_mn_title">
                    <div class="s_mn_t1">旅游资讯</div>
                    <div class="s_mn_more">
                        <a href="https://www.muniao.com/list_news_0_1.html" title="更多旅游资讯" target="_blank">更多旅游资讯&gt;&gt;</a>
                    </div>
                </div>
                <div class="s_mn_information">
                    <div class="s_mn_information_img">
                        <img src="${staticRoot}/images/06016ddd4e9d478c81ad4fceb33ee85620171201104832032.jpg" id="information_img"
                             width="290" height="230" alt="资讯标题">
                    </div>
                    <ul class="s_mn_information_list" id="information_list">
                        <input type="hidden" name="name"
                               value="UploadFiles/image/b1c56c60485646218f1a2126ec2172a520171205155615016.jpg">
                        <li><a href="https://www.muniao.com/show_news_1535.html"
                               data-thumb="https://assets.muniao.com/UploadFiles/image/b1c56c60485646218f1a2126ec2172a520171205155615016.jpg"
                               title="神笔山旅游" target="_blank" class="">神笔山旅游</a></li>
                        <input type="hidden" name="name"
                               value="UploadFiles/image/e3a76032ac3c4d419d1d24c1e45187a920171204110720016.jpg">
                        <li><a href="https://www.muniao.com/show_news_1531.html"
                               data-thumb="https://assets.muniao.com/UploadFiles/image/e3a76032ac3c4d419d1d24c1e45187a920171204110720016.jpg"
                               title="阳江海陵岛旅游攻略" target="_blank" class="">阳江海陵岛旅游攻略</a></li>
                        <input type="hidden" name="name"
                               value="UploadFiles/image/06016ddd4e9d478c81ad4fceb33ee85620171201104832032.jpg">
                        <li><a href="https://www.muniao.com/show_news_1530.html"
                               data-thumb="https://assets.muniao.com/UploadFiles/image/06016ddd4e9d478c81ad4fceb33ee85620171201104832032.jpg"
                               title="苏州周庄古镇旅游" target="_blank" class="s_mn_inf_list_a">苏州周庄古镇旅游</a></li>
                        <input type="hidden" name="name"
                               value="UploadFiles/image/7cfdb0f7847648d199f259f8515c4e5d20171130110830172.jpg">
                        <li><a href="https://www.muniao.com/show_news_1529.html"
                               data-thumb="https://assets.muniao.com/UploadFiles/image/7cfdb0f7847648d199f259f8515c4e5d20171130110830172.jpg"
                               title="深圳杨梅坑旅游攻略" target="_blank" class="">深圳杨梅坑旅游攻略</a></li>
                        <input type="hidden" name="name"
                               value="UploadFiles/image/9c80496d01184a9f81c32bbb09f0bf3920171129110138422.jpg">
                        <li><a href="https://www.muniao.com/show_news_1528.html"
                               data-thumb="https://assets.muniao.com/UploadFiles/image/9c80496d01184a9f81c32bbb09f0bf3920171129110138422.jpg"
                               title="金佛山旅游" target="_blank" class="">金佛山旅游</a></li>
                    </ul>

                </div>
            </div>
            <div class="s_mn_latestbox" id="s_latestbox">
                <div class="s_mn_title">
                    <div class="s_mn_t1">最新房源</div>
                    <ul class="s_mn_li_nav">
                        <li><a href="javascript:void(0);" class="s_mn_li_nav_a">1</a></li>
                        <li><a href="javascript:void(0);">2</a></li>
                        <li><a href="javascript:void(0);">3</a></li>
                    </ul>
                </div>
                <ul class="s_mn_lates_houselist">
                    <li style="display:block">
                        <div class="s_mn_lates_house1" data-id="202290">
                            <a href="https://www.muniao.com/room/202290.html" title="京旺家园长店大街浪漫一居室" target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/c32f26bfba92475ebae7b1f8b261ef7d20180607112959785.jpg_414_262.jpg"
                                         width="280" height="176" alt="京旺家园长店大街浪漫一居室">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">京旺家园长店大街浪漫一居室</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京-朝阳区</span>
                                        <span class="s_mn_house_price">￥180/晚</span></div>
                                </div>
                            </a>
                        </div>
                        <div class="s_mn_lates_house2">
                            <a href="https://www.muniao.com/room/202287.html" title="长店大街京旺家园温馨两居室" target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/648275dd2fa64f14a37484f71cf70eb920180607112608181.jpg_414_262.jpg"
                                         width="280" height="176" alt="长店大街京旺家园温馨两居室">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">长店大街京旺家园温馨两居室</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京-朝阳区</span>
                                        <span class="s_mn_house_price">￥230/晚</span></div>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="s_mn_lates_house1">
                            <a href="https://www.muniao.com/room/202283.html" title="国际航空俱乐部 温馨两居室" target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/b3e06f4d5a6c456baad43693d836011520180607111714508.jpg_414_262.jpg"
                                         width="280" height="176" alt="国际航空俱乐部 温馨两居室">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">国际航空俱乐部 温馨两居室</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京-朝阳区</span>
                                        <span class="s_mn_house_price">￥230/晚</span></div>
                                </div>
                            </a>
                        </div>
                        <div class="s_mn_lates_house2">
                            <a href="https://www.muniao.com/room/202282.html" title="长店大街京旺家园温馨一居室" target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/2cfb7bf9a1394c149d14472768e3d4dc20180607111114010.jpg_414_262.jpg"
                                         width="280" height="176" alt="长店大街京旺家园温馨一居室">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">长店大街京旺家园温馨一居室</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京-朝阳区</span>
                                        <span class="s_mn_house_price">￥180/晚</span></div>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="s_mn_lates_house1">
                            <a href="https://www.muniao.com/room/202279.html" title="回民街附近北欧3居室能做饭" target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/d6d52dd044b148cc9a3e195b7eaf463820180607105753609.jpg_414_262.jpg"
                                         width="280" height="176" alt="回民街附近北欧3居室能做饭">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">回民街附近北欧3居室能做饭</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">西安-碑林区</span>
                                        <span class="s_mn_house_price">￥386/晚</span></div>
                                </div>
                            </a>
                        </div>
                        <div class="s_mn_lates_house2">
                            <a href="https://www.muniao.com/room/202277.html" title="人民公园-宽窄巷子-春熙路太古里-地铁口温馨老居"
                               target="_blank">
                                <div class="s_mn_lates_houseimg">
                                    <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                         src="${staticRoot}/images/e8fe4cc1b9fe412dbe79d0b0bbb3098120180607105011521.jpg_414_262.jpg"
                                         width="280" height="176" alt="人民公园-宽窄巷子-春熙路太古里-地铁口温馨老居">
                                </div>
                                <div class="s_mn_lates_housetext">
                                    <div class="s_mn_lates_housetitle">人民公园-宽窄巷子-春熙路太古里-...</div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">成都-青羊区</span>
                                        <span class="s_mn_house_price">￥119/晚</span></div>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!---侧边栏开始-->
<!--侧边栏-->
<div class="sidebar">
    <style>
        .down_app {
            background: transparent;
            opacity: 1;
        }

        .down_app_bg {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: #000;
            opacity: 0.7;
            -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
            filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
        }

        .down_app_left {
            position: absolute;
            left: -40px;
            top: -117px;
            z-index: 1;
        }

        .down_app_right {
            position: absolute;
            right: -15px;
            top: -10px;
            width: 375px;
            height: 168px;
            background: #11172e;
            z-index: 1;
        }

        .appewm {
            float: left;
            margin: 26px 43px;
        }

        .appewm img {
            width: 116px;
        }

        .androidios {
            float: left;
        }

        .androidios h4 {
            font-size: 20px;
            color: #FFFFFF;
            margin: 25px 0px 14px;
        }

        .downapp_bottom {
            display: block;
            width: 110px;
            height: 28px;
            -webkit-border-radius: 14px;
            -moz-border-radius: 14px;
            border-radius: 14px;
            border: 1px solid #FFFFFF;
            color: #FFFFFF;
            text-align: center;
            line-height: 28px;
            margin-top: 10px;
        }

    </style>
    <ul>
        <li class="silder_hide">
            <a href="https://cschat.cloud.alipay.com/pcportal.htm?tntInstId=EZKNWDCN&amp;scene=SCE00001040"
               target="_blank">
                <img style="margin-top: 5px;" src="${staticRoot}/images/mumu.png" title="咨询客服">
            </a>
            <div class="link-tips" style="display: none;">在<br>线<br>客<br>服</div>
        </li>
        <li class="side_order">
            <a class="side_click" href="http://user2.muniao.com/order/index" target="_blank"></a>
            <div class="tenant_tip" style="display: none;">
                <h3>我的订单</h3>
                <p>查看您的近期订单</p>
                <a href="http://user2.muniao.com/order/index" target="_blank">点击查看</a>
            </div>
        </li>
        <li class="tenant_f">
            <a class="side_click"
               href="http://shang.qq.com/wpa/qunwpa?idkey=0c3a7d35ed933d97739d5420d5fa31dd01ade1ed1649949a840d32fa58073edf"
               target="_blank"></a>
            <div class="tenant_tip" style="display: none;">
                <h3>意见反馈群</h3>
                <p>官方问题反馈群，为您排忧解难，欢迎您的加入</p>
                <a href="http://shang.qq.com/wpa/qunwpa?idkey=0c3a7d35ed933d97739d5420d5fa31dd01ade1ed1649949a840d32fa58073edf"
                   target="_blank">点击加入</a>
            </div>
        </li>
        <li class="opinion_f">
            <a class="side_click" href="http://www.muniao.com/Home/Feedback" target="_blank"></a>
            <div class="tenant_tip" style="display: none;">
                <h3>问题反馈</h3>
                <p>请将您的问题告诉我们，<br>我们将更好的为您服务。</p>
                <a href="http://www.muniao.com/Home/Feedback" target="_blank">点击反馈</a>
            </div>
        </li>
    </ul>
    <div class="backTop" style="display: none;"><a href="javascript:;"></a></div>
</div>
<script>
    (function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 300) {
                $(".backTop").show();
            } else {
                $(".backTop").hide();
            }
            ;
        });
        var timer = null;
        $(".backTop").click(function () {
            $('html,body').animate({scrollTop: 0}, 300);
        })
        $(".sidebar li").each(function (a, b) {
            $(b).on("mouseover", function () {
                $(b).children("div").show();
                $(b).siblings().children("div").hide();
                clearInterval(timer);
            })
            $(b).on("mouseout", function () {
                timer = setTimeout(function () {
                    $(b).children("div").hide();
                }, 1000)
            })
        });
        $(".side_see_order,.tenant_tip").on("mouseover", function () {
            clearInterval(timer)
            $(this).children("div").show();
        })

        /*
        */
    })()
</script>
<!---侧边栏结束-->
<!---有礼相送开始-->
<div class="downapp-layer" style="display: none;">
    <div class="left_down" style="left: -120px;">
        <img src="${staticRoot}/images/left_down_bot.png" alt="有礼相送">
    </div>
    <div class="down_app" style="left: 0px;">
        <div class="down_app_bg"></div>
        <div class="down_app_c">
            <!--<img src="//assets.muniao.com/assets2/2015/images/down_app.png?2016/08/30" alt="点击下载">-->
            <div class="down_app_left">
                <img src="${staticRoot}/images/newdownapp.png" alt="点击下载">
            </div>
            <div class="down_app_right">
                <div class="appewm">
                    <img src="${staticRoot}/images/fkappewm.png" alt="下载app二维码">
                </div>
                <div class="androidios">
                    <h4>扫描下载APP</h4>
                    <a id="downbtn1" class="downapp_bottom" href="javascript:;">IOS下载</a>
                    <a id="downbtn2" class="downapp_bottom" href="javascript:;">Android下载</a>
                </div>
            </div>
            <a class="close_down" href="javascript:;">
                <img src="${staticRoot}/images/close_down.png" alt="点击关闭">
            </a>
        </div>
    </div>
</div>
<script>
    $(".down_app").css({"left": 0});
    $(".left_down").css({"left": "-120px"})
    downapp();
    $(window).scroll(function () {
        downapp()
    })

    function downapp() {
        var t = $(this).scrollTop();
        if (t > 400) {
            $(".downapp-layer").show();
        } else {
            $(".downapp-layer").hide();
        }
    }

    $(".left_down").click(function () {
        $(this).animate({
            "left": "-120px"
        }, 300);
        setTimeout(function () {
            $(".down_app").animate({
                "left": 0
            }, 500)
        }, 400);
    });
    $(".close_down").click(function () {
        S.Cookie("Bsksdjd", "down_app");
        $(".down_app").animate({
            "left": -$(window).width()
        }, 500);
        setTimeout(function () {
            $(".left_down").animate({
                "left": "0"
            }, 300)
        }, 500);
    });
    S("downbtn2").on("click", function () {
        var url = "http://appapi.muniao.com/server/iuiue/?os=apk";
        try {
            window.open(url);
        }
        catch (e) {
            window.location.href = url;
        }
    });
    S("downbtn1").on("click", function () {
        var url = "http://appapi.muniao.com/server/iuiue/?os=ios";
        try {
            window.open(url);
        }
        catch (e) {
            window.location.href = url;
        }
    });

    (function () {
        if (S.Cookie("start%5Fdate%5Fu")) {
            S("start_date").val(S.Cookie("start%5Fdate%5Fu"));
        }
        if (S.Cookie("end%5Fdate%5Fu")) {
            S("end_date").val(S.Cookie("end%5Fdate%5Fu"));
        }
        $(".left_down").click(function () {
            $(".network").animate({
                "left": "-300px"
            }, 300);
        });
        $(".close_down").click(function () {
            $(".network").animate({
                "left": "0"
            }, 300);
        });
        $(".close_aq").click(function () {
            $(".network").hide();
        });
    })();
</script>
<!---有礼相送结束-->


<style>
    .s_mn_hotdibiao {
        overflow: hidden;
        padding: 0 50px 0 147px;
    }
</style>
<link href="${staticRoot}/images/w_style.css" rel="stylesheet" type="text/css">
<div class="w_footerbox" id="s_mn_footerbox">
    <!--底部微博微信begin-->
    <div class="w_footer_contactbox">
        <div class="w_footer_weibo"><a href="http://weibo.com/rizupingtai" rel="nofollow" target="_blank"></a></div>
        <div class="w_footer_weixin">
            <a id="w_footer_weixin" style="cursor: pointer;"></a>
            <div class="w_footer_ewm" id="w_footer_ewm" style="display:none;"><img src="${staticRoot}/images/footer_ewm.png"></div>
        </div>
    </div>
    <script>
        var w_footer_ewm = document.getElementById("w_footer_ewm");
        var w_footer_weixin = document.getElementById("w_footer_weixin");
        w_footer_weixin.style.cursor = "pointer";
        w_footer_weixin.onclick = function () {
            w_footer_ewm.style.display = "block";
            w_footer_weixin.onmouseout = function () {
                w_footer_ewm.style.display = "none";
            }
        }
    </script>
    <!--底部微博微信end-->
    <!--底部热门链接begin-->
    <ul class="s_mn_footercitylist cleafix" id="s_mn_footercitylist">
        <!--短租房信息-->

        <!-- **按位置找短租房-->

        <!-- **热门房源类型-->

        <!-- **主题特色短租房-->

        <!--热门短租-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="https://www.muniao.com/beijing/" title="北京短租" target="_blank">北京短租房</a><a
                        href="https://www.muniao.com/shanghai/" title="上海短租" target="_blank">上海短租</a><a
                        href="https://www.muniao.com/chongqing/" title="重庆短租" target="_blank">重庆短租房</a><a
                        href="https://www.muniao.com/tianjin/" title="天津短租" target="_blank">天津短租房</a><a
                        href="https://www.muniao.com/qingdao/" title="青岛短租" target="_blank">青岛短租房</a><a
                        href="https://www.muniao.com/qinhuangdao/" title="秦皇岛短租" target="_blank">秦皇岛短租房</a><a
                        href="https://www.muniao.com/sanya/" title="三亚短租" target="_blank">三亚短租房</a><a
                        href="https://www.muniao.com/dalian/" title="大连短租" target="_blank">大连短租房</a><a
                        href="https://www.muniao.com/weihai/" title="威海短租" target="_blank">威海短租房</a><a
                        href="https://www.muniao.com/rizhao/" title="日照短租" target="_blank">日照短租房</a><a
                        href="https://www.muniao.com/yantai/" title="烟台短租" target="_blank">烟台短租房</a><a
                        href="https://www.muniao.com/xiamen/" title="厦门短租" target="_blank">厦门短租房</a><a
                        href="https://www.muniao.com/chengde/" title="承德短租" target="_blank">承德短租房</a><a
                        href="https://www.muniao.com/dali/" title="大理短租" target="_blank">大理短租房</a><a
                        href="https://www.muniao.com/beihai/" title="北海短租" target="_blank">北海短租房</a><a
                        href="https://www.muniao.com/shenzhen/" title="深圳短租" target="_blank">深圳短租房</a><a
                        href="https://www.muniao.com/shenyang/" title="沈阳短租" target="_blank">沈阳短租房</a><a
                        href="https://www.muniao.com/chengdu/" title="成都短租" target="_blank">成都短租房</a><a
                        href="https://www.muniao.com/suzhou/" title="苏州短租" target="_blank">苏州短租房</a><a
                        href="https://www.muniao.com/hangzhou/" title="杭州短租" target="_blank">杭州短租房</a><a
                        href="https://www.muniao.com/xian/" title="西安短租" target="_blank">西安短租房</a><a
                        href="https://www.muniao.com/guangzhou/" title="广州短租" target="_blank">广州短租房</a><a
                        href="https://www.muniao.com/changsha/" title="长沙短租" target="_blank">长沙短租房</a><a
                        href="https://www.muniao.com/kunming/" title="昆明短租" target="_blank">昆明短租房</a><a
                        href="https://www.muniao.com/nanjing/" title="南京短租" target="_blank">南京短租房</a><a
                        href="https://www.muniao.com/wuhan/" title="武汉短租" target="_blank">武汉短租房</a><a
                        href="https://www.muniao.com/zhengzhou/" title="郑州短租" target="_blank">郑州短租房</a><a
                        href="https://www.muniao.com/shijiazhuang/" title="石家庄短租" target="_blank">石家庄短租房</a><a
                        href="https://www.muniao.com/wuxi/" title="无锡短租" target="_blank">无锡短租房</a><a
                        href="https://www.muniao.com/haerbin/" title="哈尔滨短租" target="_blank">哈尔滨短租房</a><a
                        href="https://www.muniao.com/nanchang/" title="南昌短租" target="_blank">南昌短租房</a><a
                        href="https://www.muniao.com/haikou/" title="海口短租" target="_blank">海口短租房</a><a
                        href="https://www.muniao.com/huangshan/" title="黄山短租" target="_blank">黄山短租房</a><a
                        href="https://www.muniao.com/zhuhai/" title="珠海日租房" target="_blank">珠海日租房</a><a
                        href="https://www.muniao.com/ningbo/" title="宁波日租房" target="_blank">宁波日租房</a><a
                        href="https://www.muniao.com/changchun/" title="长春日租房" target="_blank">长春日租房</a><a
                        href="https://www.muniao.com/yangzhou/" title="扬州日租房" target="_blank">扬州日租房</a><a
                        href="https://www.muniao.com/tangshan/" title="唐山日租房" target="_blank">唐山日租房</a><a
                        href="https://www.muniao.com/huludao/" title="葫芦岛日租房" target="_blank">葫芦岛日租房</a><a
                        href="https://www.muniao.com/taian/" title="泰安日租房" target="_blank">泰安日租房</a><a
                        href="https://www.muniao.com/guiyang/" title="贵阳短租公寓" target="_blank">贵阳短租公寓</a><a
                        href="https://www.muniao.com/guilin/" title="桂林日租房" target="_blank">桂林日租房</a><a
                        href="https://www.muniao.com/xiangxi/" title="湘西日租房" target="_blank">湘西日租房</a><a
                        href="https://www.muniao.com/hefei/" title="合肥日租房" target="_blank">合肥日租房</a><a
                        href="https://www.muniao.com/jinzhong/" title="晋中日租房" target="_blank">晋中日租房</a><a
                        href="https://www.muniao.com/xining/" title="西宁日租房" target="_blank">西宁日租房</a><a
                        href="https://www.muniao.com/fuzhou/" title="福州日租房" target="_blank">福州日租房</a><a
                        href="https://www.muniao.com/baoding/" title="保定日租房" target="_blank">保定日租房</a><a
                        href="https://www.muniao.com/zhoushan/" title="舟山日租房" target="_blank">舟山日租房</a><a
                        href="https://www.muniao.com/dongguan/" title="东莞日租房" target="_blank">东莞日租房</a>
                </div>
            </div>
            <div class="s_mn_footercity_tit">热门短租：</div>
            <div style="display: block;" class="s_mn_footercity_more">+展开</div>
        </li>


        <!-- **周边短租推荐-->

        <!-- **周边短租推荐-->
        <!-- **热门住宿推荐-->

        <!-- **热门住宿推荐-->
        <!-- **友情链接-->


        <input type="hidden" id="indes" value="1">
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao"><a href="https://www.muniao.com/zhuhai/null-0-0-0-4-0-0-0-1.html"
                                               title="珠海短租房公寓" target="_blank">珠海短租房公寓</a><a
                        href="https://www.muniao.com/zhongshan/null-0-0-0-4-0-0-0-1.html" title="中山短租房公寓"
                        target="_blank">中山短租房公寓</a><a href="https://www.muniao.com/zhengzhou/null-0-0-0-4-0-0-0-1.html"
                                                      title="郑州短租房公寓" target="_blank">郑州短租房公寓</a><a
                        href="https://www.muniao.com/zhangjiajie/null-0-0-0-4-0-0-0-1.html" title="张家界短租房公寓"
                        target="_blank">张家界短租房公寓</a><a
                        href="https://www.muniao.com/xishuangbanna/null-0-0-0-4-0-0-0-1.html" title="西双版纳短租房公寓"
                        target="_blank">西双版纳短租房公寓</a><a href="https://www.muniao.com/xining/null-0-0-0-4-0-0-0-1.html"
                                                        title="西宁短租房公寓" target="_blank">西宁短租房公寓</a><a
                        href="https://www.muniao.com/xianggang/null-0-0-0-4-0-0-0-1.html" title="香港短租房公寓"
                        target="_blank">香港短租房公寓</a><a href="https://www.muniao.com/xian/null-0-0-0-4-0-0-0-1.html"
                                                      title="西安短租房公寓" target="_blank">西安短租房公寓</a><a
                        href="https://www.muniao.com/xiamen/null-0-0-0-4-0-0-0-1.html" title="厦门短租房公寓" target="_blank">厦门短租房公寓</a><a
                        href="https://www.muniao.com/wuxi/null-0-0-0-4-0-0-0-1.html" title="无锡短租房公寓" target="_blank">无锡短租房公寓</a><a
                        href="https://www.muniao.com/wuhan/null-0-0-0-4-0-0-0-1.html" title="武汉短租房公寓" target="_blank">武汉短租房公寓</a><a
                        href="https://www.muniao.com/weihai/null-0-0-0-4-0-0-0-1.html" title="威海短租房公寓" target="_blank">威海短租房公寓</a><a
                        href="https://www.muniao.com/tianjin/null-0-0-0-4-0-0-0-1.html" title="天津短租房公寓" target="_blank">天津短租房公寓</a><a
                        href="https://www.muniao.com/taiyuan/null-0-0-0-4-0-0-0-1.html" title="太原短租房公寓" target="_blank">太原短租房公寓</a><a
                        href="https://www.muniao.com/suzhou/null-0-0-0-4-0-0-0-1.html" title="苏州短租房公寓" target="_blank">苏州短租房公寓</a><a
                        href="https://www.muniao.com/shijiazhuang/null-0-0-0-4-0-0-0-1.html" title="石家庄短租房公寓"
                        target="_blank">石家庄短租房公寓</a><a href="https://www.muniao.com/shenzhen/null-0-0-0-4-0-0-0-1.html"
                                                       title="深圳短租房公寓" target="_blank">深圳短租房公寓</a><a
                        href="https://www.muniao.com/shenyang/null-0-0-0-4-0-0-0-1.html" title="沈阳短租房公寓"
                        target="_blank">沈阳短租房公寓</a><a href="https://www.muniao.com/shanghai/null-0-0-0-4-0-0-0-1.html"
                                                      title="上海短租房公寓" target="_blank">上海短租房公寓</a><a
                        href="https://www.muniao.com/sanya/null-0-0-0-4-0-0-0-1.html" title="三亚短租房公寓" target="_blank">三亚短租房公寓</a><a
                        href="https://www.muniao.com/rizhao/null-0-0-0-4-0-0-0-1.html" title="日照短租房公寓" target="_blank">日照短租房公寓</a><a
                        href="https://www.muniao.com/qingdao/null-0-0-0-4-0-0-0-1.html" title="青岛短租房公寓" target="_blank">青岛短租房公寓</a><a
                        href="https://www.muniao.com/panjin/null-0-0-0-4-0-0-0-1.html" title="盘锦短租房公寓" target="_blank">盘锦短租房公寓</a><a
                        href="https://www.muniao.com/ningbo/null-0-0-0-4-0-0-0-1.html" title="宁波短租房公寓" target="_blank">宁波短租房公寓</a><a
                        href="https://www.muniao.com/nanning/null-0-0-0-4-0-0-0-1.html" title="南宁短租房公寓" target="_blank">南宁短租房公寓</a><a
                        href="https://www.muniao.com/nanjing/null-0-0-0-4-0-0-0-1.html" title="南京短租房公寓" target="_blank">南京短租房公寓</a><a
                        href="https://www.muniao.com/qinhuangdao/nandaihe-0-0-0-4-0-0-0-1.html" title="南戴河短租房公寓"
                        target="_blank">南戴河短租房公寓</a><a href="https://www.muniao.com/nanchang/null-0-0-0-4-0-0-0-1.html"
                                                       title="南昌短租房公寓" target="_blank">南昌短租房公寓</a><a
                        href="https://www.muniao.com/luoyang/null-0-0-0-4-0-0-0-1.html" title="洛阳短租房公寓" target="_blank">洛阳短租房公寓</a><a
                        href="https://www.muniao.com/lanzhou/null-0-0-0-4-0-0-0-1.html" title="兰州短租房公寓" target="_blank">兰州短租房公寓</a><a
                        href="https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html" title="昆明短租房公寓" target="_blank">昆明短租房公寓</a><a
                        href="https://www.muniao.com/jinan/null-0-0-0-4-0-0-0-1.html" title="济南短租房公寓" target="_blank">济南短租房公寓</a><a
                        href="https://www.muniao.com/jilinshi/null-0-0-0-4-0-0-0-1.html" title="吉林短租房公寓"
                        target="_blank">吉林短租房公寓</a><a href="https://www.muniao.com/huludao/null-0-0-0-4-0-0-0-1.html"
                                                      title="葫芦岛短租房公寓" target="_blank">葫芦岛短租房公寓</a><a
                        href="https://www.muniao.com/huizhou/null-0-0-0-4-0-0-0-1.html" title="惠州短租房公寓" target="_blank">惠州短租房公寓</a><a
                        href="https://www.muniao.com/huhehaote/null-0-0-0-4-0-0-0-1.html" title="呼和浩特短租房公寓"
                        target="_blank">呼和浩特短租房公寓</a><a
                        href="https://www.muniao.com/huangshan/null-0-0-0-4-0-0-0-1.html" title="黄山短租房公寓"
                        target="_blank">黄山短租房公寓</a><a href="https://www.muniao.com/hefei/null-0-0-0-4-0-0-0-1.html"
                                                      title="合肥短租房公寓" target="_blank">合肥短租房公寓</a><a
                        href="https://www.muniao.com/haikou/null-0-0-0-4-0-0-0-1.html" title="海口短租房公寓" target="_blank">海口短租房公寓</a><a
                        href="https://www.muniao.com/haerbin/null-0-0-0-4-0-0-0-1.html" title="哈尔滨短租房公寓"
                        target="_blank">哈尔滨短租房公寓</a><a href="https://www.muniao.com/guiyang/null-0-0-0-4-0-0-0-1.html"
                                                       title="贵阳短租房公寓" target="_blank">贵阳短租房公寓</a><a
                        href="https://www.muniao.com/guilin/null-0-0-0-4-0-0-0-1.html" title="桂林短租房公寓" target="_blank">桂林短租房公寓</a><a
                        href="https://www.muniao.com/guangzhou/null-0-0-0-4-0-0-0-1.html" title="广州短租房公寓"
                        target="_blank">广州短租房公寓</a><a href="https://www.muniao.com/dalian/null-0-0-0-4-0-0-0-1.html"
                                                      title="大连短租房公寓" target="_blank">大连短租房公寓</a><a
                        href="https://www.muniao.com/chongqing/null-0-0-0-4-0-0-0-1.html" title="重庆短租房公寓"
                        target="_blank">重庆短租房公寓</a><a href="https://www.muniao.com/chengdu/null-0-0-0-4-0-0-0-1.html"
                                                      title="成都短租房公寓" target="_blank">成都短租房公寓</a><a
                        href="https://www.muniao.com/changzhou/null-0-0-0-4-0-0-0-1.html" title="常州短租房公寓"
                        target="_blank">常州短租房公寓</a><a href="https://www.muniao.com/changchun/null-0-0-0-4-0-0-0-1.html"
                                                      title="长春短租房公寓" target="_blank">长春短租房公寓</a><a
                        href="https://www.muniao.com/beijing/null-0-0-0-4-0-0-0-1.html" title="北京短租房公寓" target="_blank">北京短租房公寓</a><a
                        href="https://www.muniao.com/beihai/null-0-0-0-4-0-0-0-1.html" title="北海短租房公寓" target="_blank">北海短租房公寓</a><a
                        href="https://www.muniao.com/qinhuangdao/beidaihe-0-0-0-4-0-0-0-1.html" title="北戴河短租房公寓"
                        target="_blank">北戴河短租房公寓</a><a href="https://www.muniao.com/baoding/null-0-0-0-4-0-0-0-1.html"
                                                       title="保定短租房公寓" target="_blank">保定短租房公寓</a><a
                        href="https://www.muniao.com/yingkou/null-0-0-0-4-0-0-0-1.html" title="营口短租房公寓" target="_blank">营口短租房公寓</a><a
                        href="https://www.muniao.com/qinhuangdao/null-0-0-0-4-0-0-0-1.html" title="秦皇岛短租房公寓"
                        target="_blank">秦皇岛短租房公寓</a><a href="https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html"
                                                       title="昆山短租房公寓" target="_blank">昆山短租房公寓</a><a
                        href="https://www.muniao.com/hangzhou/null-0-0-0-4-0-0-0-1.html" title="杭州短租房公寓"
                        target="_blank">杭州短租房公寓</a><a href="https://www.muniao.com/changsha/null-0-0-0-4-0-0-0-1.html"
                                                      title="长沙短租房公寓" target="_blank">长沙短租房公寓</a><a
                        href="https://www.muniao.com/foshan/null-0-0-0-4-0-0-0-1.html" title="佛山短租房公寓" target="_blank">佛山短租房公寓</a><a
                        href="https://www.muniao.com/datong/null-0-0-0-4-0-0-0-1.html" title="大同短租房公寓" target="_blank">大同短租房公寓</a><a
                        href="https://www.muniao.com/quanzhou/null-0-0-0-4-0-0-0-1.html" title="泉州短租房公寓"
                        target="_blank">泉州短租房公寓</a></div>
            </div>
            <div class="s_mn_footercity_tit">短租公寓推荐：</div>
            <div class="s_mn_footercity_more" style="display: block;">+展开</div>
        </li>
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="http://news.huochepiao.com/" target="_blank">火车票资讯</a>
                    <a href="http://www.uoko.com/" target="_blank">成都租房</a>
                    <a href="http://www.grfyw.com/" target="_blank">找房子</a>
                    <a href="http://shikebiao.com.cn/" target="_blank">汽车时刻表查询</a>
                    <a href="http://tc.5khouse.com/" target="_blank">太仓房产网</a>
                    <a href="http://jiudian.cncn.com/" target="_blank">酒店预订网</a>
                    <a href="http://www.haogongzhang.com/" target="_blank">装修网</a>
                    <a href="http://lvyou.yjbys.com/" target="_blank">旅游攻略</a>
                    <a href="http://www.cncn.com/piao/" target="_blank">景点门票</a>
                    <a href="http://www.jutuw.com/" target="_blank">九寨沟旅游</a>
                    <a href="http://www.taiwandao.tw/" target="_blank">台湾旅游</a>
                    <a href="http://www.jiuzheng.com/" target="_blank">装修</a>
                    <a href="http://www.juwai.com/" target="_blank">海外房产</a>
                    <a href="http://guangzhou.anjuke.com/" target="_blank">广州房产网</a>
                    <a href="http://www.qizuang.com/" target="_blank">装修网</a>
                    <a href="http://www.okcis.cn/" target="_blank">招标采购</a>
                    <a href="http://www.qk365.com/" target="_blank">租房网</a>
                    <a href="http://www.yihaojiaju.com/" target="_blank">装修网</a>
                    <a href="http://guju.com.cn/" target="_blank">装修设计</a>
                    <a href="http://shenzhen.qfang.com/" target="_blank">深圳房产</a>
                    <a href="http://www.muniao.com/zhuanti/8302_search/" target="_blank">北戴河家庭旅馆</a>
                    <a href="http://www.muniao.com/zhuanti/8303_search/" target="_blank">北戴河刘庄家庭旅馆</a>
                    <a href="http://www.ytszg.com/" target="_blank">重庆旅行社</a>
                    <a href="http://poi.mapbar.com/" target="_blank">地图查询</a>
                    <a href="http://china.findlaw.cn/fangdichan/" target="_blank">房产纠纷律师</a>


                </div>
            </div>
            <div class="s_mn_footercity_tit">友情链接：</div>
            <div class="s_mn_footercity_more" style="display: block;">+展开</div>
        </li>


    </ul>
    <script>
        $(function () {
            var s = $("#indes").val();
            if (s == 1) {
                getindex();
            }
        })

        function getindex() {
            var list = [{
                "title": "珠海短租房公寓",
                "link": "https://www.muniao.com/zhuhai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "中山短租房公寓",
                "link": "https://www.muniao.com/zhongshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "郑州短租房公寓",
                "link": "https://www.muniao.com/zhengzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "张家界短租房公寓",
                "link": "https://www.muniao.com/zhangjiajie/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西双版纳短租房公寓",
                "link": "https://www.muniao.com/xishuangbanna/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西宁短租房公寓",
                "link": "https://www.muniao.com/xining/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "香港短租房公寓",
                "link": "https://www.muniao.com/xianggang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西安短租房公寓",
                "link": "https://www.muniao.com/xian/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "厦门短租房公寓",
                "link": "https://www.muniao.com/xiamen/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "无锡短租房公寓",
                "link": "https://www.muniao.com/wuxi/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "武汉短租房公寓",
                "link": "https://www.muniao.com/wuhan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "威海短租房公寓",
                "link": "https://www.muniao.com/weihai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "天津短租房公寓",
                "link": "https://www.muniao.com/tianjin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "太原短租房公寓",
                "link": "https://www.muniao.com/taiyuan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "苏州短租房公寓",
                "link": "https://www.muniao.com/suzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "石家庄短租房公寓",
                "link": "https://www.muniao.com/shijiazhuang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "深圳短租房公寓",
                "link": "https://www.muniao.com/shenzhen/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "沈阳短租房公寓",
                "link": "https://www.muniao.com/shenyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "上海短租房公寓",
                "link": "https://www.muniao.com/shanghai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "三亚短租房公寓",
                "link": "https://www.muniao.com/sanya/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "日照短租房公寓",
                "link": "https://www.muniao.com/rizhao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "青岛短租房公寓",
                "link": "https://www.muniao.com/qingdao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "盘锦短租房公寓",
                "link": "https://www.muniao.com/panjin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "宁波短租房公寓",
                "link": "https://www.muniao.com/ningbo/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南宁短租房公寓",
                "link": "https://www.muniao.com/nanning/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南京短租房公寓",
                "link": "https://www.muniao.com/nanjing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南戴河短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/nandaihe-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南昌短租房公寓",
                "link": "https://www.muniao.com/nanchang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "洛阳短租房公寓",
                "link": "https://www.muniao.com/luoyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "兰州短租房公寓",
                "link": "https://www.muniao.com/lanzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "昆明短租房公寓",
                "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "济南短租房公寓",
                "link": "https://www.muniao.com/jinan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "吉林短租房公寓",
                "link": "https://www.muniao.com/jilinshi/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "葫芦岛短租房公寓",
                "link": "https://www.muniao.com/huludao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "惠州短租房公寓",
                "link": "https://www.muniao.com/huizhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "呼和浩特短租房公寓",
                "link": "https://www.muniao.com/huhehaote/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "黄山短租房公寓",
                "link": "https://www.muniao.com/huangshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "合肥短租房公寓",
                "link": "https://www.muniao.com/hefei/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "海口短租房公寓",
                "link": "https://www.muniao.com/haikou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "哈尔滨短租房公寓",
                "link": "https://www.muniao.com/haerbin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "贵阳短租房公寓",
                "link": "https://www.muniao.com/guiyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "桂林短租房公寓",
                "link": "https://www.muniao.com/guilin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "广州短租房公寓",
                "link": "https://www.muniao.com/guangzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "大连短租房公寓",
                "link": "https://www.muniao.com/dalian/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "重庆短租房公寓",
                "link": "https://www.muniao.com/chongqing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "成都短租房公寓",
                "link": "https://www.muniao.com/chengdu/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "常州短租房公寓",
                "link": "https://www.muniao.com/changzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "长春短租房公寓",
                "link": "https://www.muniao.com/changchun/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北京短租房公寓",
                "link": "https://www.muniao.com/beijing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北海短租房公寓",
                "link": "https://www.muniao.com/beihai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北戴河短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/beidaihe-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "保定短租房公寓",
                "link": "https://www.muniao.com/baoding/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "营口短租房公寓",
                "link": "https://www.muniao.com/yingkou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "秦皇岛短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "昆山短租房公寓",
                "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "杭州短租房公寓",
                "link": "https://www.muniao.com/hangzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "长沙短租房公寓",
                "link": "https://www.muniao.com/changsha/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "佛山短租房公寓",
                "link": "https://www.muniao.com/foshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "大同短租房公寓",
                "link": "https://www.muniao.com/datong/null-0-0-0-4-0-0-0-1.html"
            }, {"title": "泉州短租房公寓", "link": "https://www.muniao.com/quanzhou/null-0-0-0-4-0-0-0-1.html"}];
            var str = "<li><div class=\"s_mn_footerhot\"><div class=\"s_mn_hotdibiao\">";
            for (var i = 0; i < list.length; i++) {
                str += "<a href=\"" + list[i].link + "\" title=\"" + list[i].title + "\" target=\"_blank\">" + list[i].title + "</a>";
            }
            str += "</div></div><div class=\"s_mn_footercity_tit\">短租公寓推荐：</div><div class=\"s_mn_footercity_more\" style=\"display: block;\">+展开</div></li>";
            $("#s_mn_footercitylist li").eq($("#s_mn_footercitylist li").length - 1).before(str);
        }
    </script>
    <!--底部热门链接end-->
    <script type="text/javascript">
        $(window).load(function () {
            $("#cityvalue").on("click focus", function () {
                scrollPage($("#citywindow"))
            });
            $("#start_date_D").on("click focus", function () {
                scrollPage($("#starttime"))
            });
            $("#s_numtext").on("click focus", function () {
                scrollPage($("#s_number"));
            });

            function scrollPage(obj) {
                var windowHeight = $(window).height();
                var offsetTop = parseInt(obj.offset().top);
                var scrollTop = $(document).scrollTop();
                var suggestionHeight = obj.height();
                if ((windowHeight - (offsetTop - scrollTop)) - suggestionHeight < 0) {
                    var newTopHeight = scrollTop + (suggestionHeight + 10) - (windowHeight - (offsetTop - scrollTop));
                    $('html,body').animate({scrollTop: newTopHeight}, 300);
                }
            }
        });
    </script>
    <div class="w_footer_nav">
        <div class="s_mn_footer_nav">
            <a href="https://www.muniao.com/single_10.html" rel="nofollow" target="_blank" title="免责声明">免责声明</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_3.html" target="_blank" title="木鸟短租客服">联系我们</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_5.html" rel="nofollow" target="_blank" title="新手指南">新手指南</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a><span
                class="m10">|</span>

            <a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a><span class="m10">|</span>
            <a href="https://www.muniao.com/list_news_0_1.html" target="_blank" title="新闻资讯">新闻资讯</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_9.html" rel="nofollow" target="_blank" title="媒体报道">媒体报道</a>


        </div>
        <div class="s_mn_footer_nav f12">客服电话：400-056-0055 或 010-89180879<span
                class="m10">客户服务：service@muniao.com</span><span class="m10">意见反馈：feedback@muniao.com</span></div>
        <div class="s_mn_footer_nav f12">
            网站备案/许可证号：京ICP备12043553号-3&nbsp;京公网安备11010802011855号&nbsp;北京爱游易科技有限公司&nbsp;
        </div>
        <div style="display:none;">
            <script>
                var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                document.write(unescape("%3Cspan id='cnzz_stat_icon_1000373664'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/z_stat.php%3Fid%3D1000373664' type='text/javascript'%3E%3C/script%3E"));
                var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F59c4ac1df66ae9bdb2ce804f09084ea1' type='text/javascript'%3E%3C/script%3E"));
                //(function () {
                //    var bp = document.createElement('script');
                //    bp.src = '//push.zhanzhang.baidu.com/push.js';
                //    var s = document.getElementsByTagName("script")[0];
                //    s.parentNode.insertBefore(bp, s);
                //})();
                (function () {
                    var src = (document.location.protocol == "http:") ? "http://js.passport.qihucdn.com/11.0.1.js?3afa9ab1a72e0e6917de9c2bab2b8089" : "https://jspassport.ssl.qhimg.com/11.0.1.js?3afa9ab1a72e0e6917de9c2bab2b8089";
                    document.write('<script src="' + src + '" id="sozz"><\/script>');
                })();
            </script>
            <span id="cnzz_stat_icon_1000373664"><a href="http://www.cnzz.com/stat/website.php?web_id=1000373664"
                                                    target="_blank" title="站长统计">站长统计</a></span>
            <script src="${staticRoot}/images/z_stat.php" type="text/javascript"></script>
            <script src="${staticRoot}/images/core.php" charset="utf-8" type="text/javascript"></script>
            <script src="${staticRoot}/images/h.js.下载" type="text/javascript"></script>
            <a href="http://tongji.baidu.com/hm-web/welcome/ico?s=59c4ac1df66ae9bdb2ce804f09084ea1" target="_blank"><img
                    border="0" src="${staticRoot}/images/21.gif" width="20" height="20"></a>
            <script src="${staticRoot}/images/11.0.1.js.下载" id="sozz"></script>
            <script charset="utf-8" src="${staticRoot}/images/ab77b6ea7f3fbf79.js.下载"></script>
            <!-- cnzz统计代码：-->

        </div>
        <div class="s_mn_security">
            <ul class="s_mn_security_list">
                <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心" target="_blank"><img
                        src="${staticRoot}/images/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109" height="45"
                        style="border-radius: 2px;"></a></li>
                <li><a href="http://www.cyberpolice.cn/" rel="nofollow" title="网络110" target="_blank"><img
                        src="${staticRoot}/images/pic2.jpg" alt="网络110" title="网络110" width="109" height="45"
                        style="border-radius: 2px;"></a></li>
                <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img
                        src="${staticRoot}/images/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109" height="45"
                        style="border-radius: 2px;"></a></li>
                <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测"
                       target="_blank"><img src="${staticRoot}/images/pic6.jpg" alt="安全检测" title="安全检测" width="109" height="45"
                                            style="border-radius: 2px;"></a></li>
                <li>

                </li>
            </ul>
        </div>
        <!--Pc站百度统计代码：-->

    </div>

</div>

<div style="display:none;">
    <a href="https://webscan.360.cn/index/checkwebsite/url/muniao.com"><img border="0"
                                                                            src="${staticRoot}/images/b5e5834958d0b814df4d49fba0850552"></a>
</div>


<script type="text/javascript" src="${staticRoot}/images/lat"></script>
<script type="text/javascript" src="${staticRoot}/images/lt"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>