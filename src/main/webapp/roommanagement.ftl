<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0041)http://user2.muniao.com//Room/Index?utp=1 -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户中心-木鸟短租</title>
    <#assign basePath=request.contextPath />
    <meta http-equiv="X-UA-Compatible" content="IE=7, IE=9, IE=10">
    <link rel="shortcut icon" href="http://user2.muniao.com/favicon.ico">
    <link href="${staticRoot}/images/userpublic.css" rel="stylesheet">
    <link href="${staticRoot}/images/user.css" rel="stylesheet">
    <script src="${staticRoot}/images/muniao.js.下载"></script>

    <script src="${staticRoot}/images/jquery-1.11.2.min.js.下载"></script>
    <style>
        .personCenter-dialog {
            position: fixed;
            width: 100%;
            height: 100%;
            background: rgba(000, 000, 000, .6);
            z-index: 2000;
        }

        .background-mask {
            width: 100%;
            height: 100%;
            filter: progid:DXImageTransform.Microsoft.gradient(startcolorstr=#6F000000, endcolorstr=#6F000000);
        }

        .center-dialogClose {
            display: block;
            position: absolute;
            right: 292px;
            top: 0;
            width: 41px;
            height: 135px;
            background: url(${staticRoot}/images/centerClose.png);
            z-index: 200;
        }

        .personCenter-main {
            display: block;
            position: absolute;
            left: 50%;
            top: 50%;
            width: 722px;
            height: 417px;
            margin: -204px 0 0 -361px;
        }
    </style>
    <link rel="stylesheet" href="${staticRoot}/images/reset.css" type="text/css">
    <link rel="stylesheet" href="${staticRoot}/images/style_single.css" type="text/css">

    <script>
        //解决IE8及以下兼容问题(去空格trim)
        String.prototype.trim = function () {
            return this.replace(/(^\s*)|(\s*$)/g, "");
        }
        $(function () {
            $("body").on("click", ".center-dialogClose", function () {
                $(this).parent().hide();
            })
        })

    </script>
</head>
<body style="">
<!--<div id="webim" class="webim webim-state-active">-->
<!--<div class="webim-preload ui-helper-hidden-accessible">-->
<!--<div id="webim-flashlib-c">-->
<!--</div>-->
<!--</div>-->
<!--<div id=":layout" class="webim-layout webim-layout-minimize">-->
<!--&lt;!&ndash;<iframe class="webim-bgiframe" frameborder="0" tabindex="-1" src="about:blank;" ></iframe>&ndash;&gt;-->
<!--<div class="webim-layout-bg ui-state-default ui-toolbar"></div>-->
<!--<div class="webim-ui ui-helper-clearfix">-->
<!--<div id=":shortcut" class="webim-shortcut">-->
<!--</div>-->
<!--<div class="webim-layout-r">-->
<!--<div id=":panels" class="webim-panels">-->
<!--<div class="webim-window-tab-wrap ui-widget webim-panels-next-wrap">-->
<!--<div id=":next" class="webim-window-tab webim-panels-next ui-state-default ui-state-disabled"-->
<!--unselectable="on" style="user-select: none; display: none;">-->
<!--<div id=":nextMsgCount" class="webim-window-tab-count" style="display: none;">0</div>-->
<!--<em class="ui-icon ui-icon-triangle-1-w"></em>-->
<!--<span id=":nextCount">0</span>-->
<!--</div>-->
<!--</div>-->
<!--<div id=":tabsWrap" class="webim-panels-tab-wrap">-->
<!--<div id=":tabs" class="webim-panels-tab" style="left: 0px;">-->
<!--</div>-->
<!--</div>-->
<!--<div class="webim-window-tab-wrap ui-widget webim-panels-prev-wrap">-->
<!--<div id=":prev" class="webim-window-tab webim-panels-prev ui-state-default ui-state-disabled"-->
<!--unselectable="on" style="user-select: none; display: none;">-->
<!--<div id=":prevMsgCount" class="webim-window-tab-count" style="display: none;">0</div>-->
<!--<span id=":prevCount">0</span>-->
<!--<em class="ui-icon ui-icon-triangle-1-e"></em>-->
<!--</div>-->
<!--</div>-->
<!--<div class="webim-window-tab-wrap webim-collapse-wrap ui-widget">-->
<!--<div id=":collapse" class="webim-window-tab webim-collapse ui-state-default" title="收缩">-->
<!--<em class="ui-icon ui-icon-circle-arrow-e"></em>-->
<!--</div>-->
<!--</div>-->
<!--<div class="webim-window-tab-wrap webim-expand-wrap ui-widget">-->
<!--<div id=":expand" class="webim-window-tab webim-expand ui-state-default" title="展开">-->
<!--<em class="ui-icon ui-icon-circle-arrow-w"></em>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div id=":widgets" class="webim-widgets">-->
<!--<div id=":webim-window" class="webim-window ui-widget webim-buddy-window webim-window-minimize">-->
<!--<div class="webim-window-tab-wrap">-->
<!--<div id=":tab" class="webim-window-tab ui-state-default ui-state-default" unselectable="on"-->
<!--style="display: block; user-select: none;">-->
<!--<div class="webim-window-tab-inner">-->

<!--<a id=":tabClose" title="关闭" class="webim-window-close"-->
<!--href="http://user2.muniao.com//Room/Index?utp=1#close" style="display: none;"><em-->
<!--class="ui-icon ui-icon-close">关闭</em></a>-->
<!--<div id=":tabCount" class="webim-window-tab-count">-->
<!--0-->
<!--</div>-->
<!--<em id=":tabIcon" class="webim-icon webim-icon-buddy"></em>-->
<!--<h4 id=":tabTitle">联系人[0/0]</h4>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div>-->
<!--<div id=":window" class="webim-window-window" style="width: 224px;">-->
<!--&lt;!&ndash;							<iframe id=":bgiframe" class="webim-bgiframe" frameborder="0" tabindex="-1" src="about:blank;" ></iframe>&ndash;&gt;-->
<!--<div id=":header" class="webim-window-header ui-widget-header ui-corner-top">-->
<!--<span id=":actions" class="webim-window-actions">-->
<!--<a id=":minimize" title="最小化"-->
<!--class="webim-window-minimize"-->
<!--href="javascript:void();"><em-->
<!--class="ui-icon ui-icon-minus">最小化</em></a>-->
<!--<a id=":detach" title="移动"-->
<!--class="webim-window-detach"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-arrowthick-1-ne">移动</em></a>-->
<!--<a id=":maximize" title="最大化"-->
<!--class="webim-window-maximize"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-plus">最大化</em></a>-->
<!--<a id=":close" title="关闭"-->
<!--class="webim-window-close"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-close">关闭</em></a>-->
<!--</span>-->
<!--<h4 id=":headerTitle"-->
<!--style="overflow: hidden;height: 20px;margin: 0 0 0 52px;width: 170px;">-->
<!--联系人[0/0]</h4>-->
<!--<div id=":subHeader" class="webim-window-subheader">-->
<!--<div style="display: block;">-->
<!--<div id=":user" class="webim-user">-->
<!--<a id=":userPic" class="webim-user-pic ui-corner-all ui-state-active"-->
<!--href="http://user2.muniao.com//Room/Index?utp=1#"><img width="50"-->
<!--height="50"-->
<!--defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"-->
<!--class="ui-corner-all"-->
<!--src="${staticRoot}/images/d590d8e4b87c4c65922d653c3812d4a620180604093556672.jpg_150_150.jpg"></a>-->
<!--<div class="webim-user-show"><h4><a id=":userShowTrigger"-->
<!--href="http://user2.muniao.com//Room/Index?utp=1#show"><strong-->
<!--id=":userNick">嘉利学府</strong><span id=":userShow"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</span><em-->
<!--class="ui-icon ui-icon-triangle-1-s">show_status_list</em></a>-->
<!--</h4>-->
<!--<p id=":userShowList" class="ui-state-active ui-corner-all"-->
<!--style="display: none;">-->
<!--<a href="http://user2.muniao.com//Room/Index?utp=1#available"-->
<!--class="webim-user-show-available"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</a>-->
<!--<a href="http://user2.muniao.com//Room/Index?utp=1#dnd"-->
<!--class="webim-user-show-dnd"><em-->
<!--class="webim-icon webim-icon-dnd">忙碌</em>忙碌</a>-->
<!--<a href="http://user2.muniao.com//Room/Index?utp=1#away"-->
<!--class="webim-user-show-away"><em-->
<!--class="webim-icon webim-icon-away">离开</em>离开</a>-->
<!--<a href="http://user2.muniao.com//Room/Index?utp=1#invisible"-->
<!--class="webim-user-show-invisible"><em-->
<!--class="webim-icon webim-icon-invisible">隐身</em>隐身</a>-->
<!--<a href="http://user2.muniao.com//Room/Index?utp=1#unavailable"-->
<!--class="webim-user-show-unavailable"><em-->
<!--class="webim-icon webim-icon-unavailable">离线</em>离线</a>-->
<!--</p>-->
<!--</div>-->
<!--<span id=":userStatus" title="" class="webim-user-status">&nbsp;</span>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div id=":content" class="webim-window-content ui-widget-content">-->
<!--<div id="webim-buddy" class="webim-buddy webim-flex webim-box">-->
<!--<div id=":search" class="webim-buddy-search ui-state-default ui-corner-all"><em-->
<!--class="ui-icon ui-icon-search"></em><input id=":searchInput" type="text"-->
<!--value=""></div>-->
<!--<div class="webim-buddy-content webim-flex" id=":content">-->
<!--<div id=":empty" class="webim-buddy-empty" style="display: block;">没有联系人在线-->
<!--</div>-->
<!--<ul id=":ul"></ul>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div id=":webim-window" class="webim-window ui-widget webim-window-minimize">-->
<!--<div class="webim-window-tab-wrap">-->
<!--<div id=":tab" class="webim-window-tab ui-state-default ui-state-default" unselectable="on"-->
<!--style="display: block; user-select: none;">-->
<!--<div class="webim-window-tab-inner">-->
<!--<div id=":tabTip" class="webim-window-tab-tip">-->
<!--<strong id=":tabTipC">公告</strong>-->
<!--</div>-->
<!--<a id=":tabClose" title="关闭" class="webim-window-close"-->
<!--href="http://user2.muniao.com//Room/Index?utp=1#close" style="display: none;"><em-->
<!--class="ui-icon ui-icon-close">关闭</em></a>-->
<!--<div id=":tabCount" class="webim-window-tab-count">-->
<!--0-->
<!--</div>-->
<!--<em id=":tabIcon" class="webim-icon webim-icon-notification"></em>-->
<!--<h4 id=":tabTitle" style="display: none;">公告</h4>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div>-->
<!--<div id=":window" class="webim-window-window" style="width: 224px;">-->
<!--&lt;!&ndash;							<iframe id=":bgiframe" class="webim-bgiframe" frameborder="0" tabindex="-1" src="about:blank;" ></iframe>&ndash;&gt;-->
<!--<div id=":header" class="webim-window-header ui-widget-header ui-corner-top">-->
<!--<span id=":actions" class="webim-window-actions">-->
<!--<a id=":minimize" title="最小化"-->
<!--class="webim-window-minimize"-->
<!--href="javascript:void();"><em-->
<!--class="ui-icon ui-icon-minus">最小化</em></a>-->
<!--<a id=":detach" title="移动"-->
<!--class="webim-window-detach"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-arrowthick-1-ne">移动</em></a>-->
<!--<a id=":maximize" title="最大化"-->
<!--class="webim-window-maximize"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-plus">最大化</em></a>-->
<!--<a id=":close" title="关闭"-->
<!--class="webim-window-close"-->
<!--href="javascript:void();"-->
<!--style="display: none;"><em-->
<!--class="ui-icon ui-icon-close">关闭</em></a>-->
<!--</span>-->
<!--<h4 id=":headerTitle"-->
<!--style="overflow: hidden;height: 20px;margin: 0 0 0 52px;width: 170px;">公告</h4>-->
<!--<div id=":subHeader" class="webim-window-subheader"></div>-->
<!--</div>-->
<!--<div id=":content" class="webim-window-content ui-widget-content">-->
<!--<div id="webim-notification" class="webim-notification">-->
<!--<ul id=":ul"></ul>-->
<!--<div id=":empty" class="webim-notification-empty">空</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->


<style>
    .w_user_xl {
        width: 160px;
        position: absolute;
        right: 0;
        top: 32px;
        z-index: 199;
        background-color: #fff;
        box-shadow: 1px 2px 4px 2px #666;
        text-align: left;
    }

    .w_user_xlfd {
        width: 130px;
        margin: 0 auto;
        padding: 20px 0;
    }

    .w_user_xl .w_user_font {
        font: 12px/25px "microsoft yahei";
        color: #333;
    }

    .w_user_xl .w_user_tt {
        width: 120px;
        padding-left: 10px;
        font-size: 14px;
        font-weight: bold;
        border-bottom: 1px solid #ccc;
    }

    .w_user_xl .w_user_list {
        width: 100%;
        height: auto;
        margin-top: 5px;
    }

    .w_user_xl .w_user_list li {
        width: 50%;
        text-align: center;
        float: left;
        padding: 0;
    }

    .w_user_xl .w_user_list li a {
        color: #333;
    }

    .w_user_xl .w_user_list li:hover {
        background: #ff3300;
    }

    .w_user_tc {
        width: 130px;
        margin: 20px auto 0;
        border-top: 1px dashed #ccc;
        font-weight: bold;
        text-align: center;
    }

    .w_user_tc a:hover {
        color: #ff3300;
        text-decoration: underline;
    }

    .w_user_t22 {
        top: 22px;
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
        $.get("/Login/OutLogin", function (data) {
            //var j = JSON.parse(data);
            if (data == "1") {
                location.href = 'http://www.muniao.com';
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
        src="${staticRoot}/images/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox"
   style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img
        src="${staticRoot}/images/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"><a href="http://www.muniao.com/"><img
            src="${staticRoot}/images/mn_logo.png" width="80" height="40"></a></h2>
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/images/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活">
    </div>
    <ul class="s_mn_nav">
        <li><a href="${basePath}/index" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/featureslist" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/images/give88.png"></i></a></li>
    </ul>
    <div id="div_FangKe1" class="s_mn_release w_mR30" style="display:none;">
        <a href="http://user2.muniao.com/Index/MoveHouse?utp=1" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style="">
        <a href="http://user2.muniao.com/Index/MoveHouse?utp=1" class="free-publishBtn">免费发布房源</a>

        <span>Hi,欢迎回来！</span>
        <a class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank"
           onmouseover="$(&#39;#div_FangKe&#39;).show(); $(&#39;#div_FangDong&#39;).show();">嘉利学府</a>
        <!--房东弹出框-->
        <div id="div_FangDong" class="w_user_xl"
             style="border-radius: 3px; opacity: 0.8; background-color: rgb(191, 82, 13); border: 0px; display: none;"
             onmouseover="$(&#39;#div_FangDong&#39;).show();" onmouseout="$(&#39;#div_FangDong&#39;).hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font" style="text-align:left;"><a
                        href="http://user2.muniao.com/SystemMsg/Index?utp=1" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房东中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Index/MoveHouse?utp=1"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">发布房间</a></li>
                    <li><a href="http://user2.muniao.com/Order/Index?utp=1&amp;type=8"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">订单管理</a></li>
                    <li><a href="http://user2.muniao.com/Room/Index?utp=1&amp;c=3"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房源管理</a></li>
                    <li><a href="http://www.muniao.com/fd_mobile.html"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房东助手</a></li>
                </ul>
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;"><a
                        href="http://user2.muniao.com/SystemMsg/Index?utp=2" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房客中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="http://www.muniao.com/mobile.html?utp=2"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;"><a href="javascript:void(0);"
                                                                                  onclick="logout()"
                                                                                  style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a>
                </div>
            </div>
        </div>

    </div>


</div>
<!--登录弹出框-->


<title></title>
<script src="${staticRoot}/images/base-validator.js.下载"></script>
<style>
    .newa_login_bg {
        display: none;
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        background: #000;
        opacity: 0.36;
        filter: alpha(opacity=36);
        z-index: 100;
    }

    .newa_login_main {
        z-index: 9999;
        visibility: hidden;
        opacity: 0;
        -webkit-transition: .2s cubic-bezier(0, 0.56, 0.14, 1.33);
        -moz-transition: .2s cubic-bezier(0, 0.56, 0.14, 1.33);
        -ms-transition: .2s cubic-bezier(0, 0.56, 0.14, 1.33);
        -o-transition: .2s cubic-bezier(0, 0.56, 0.14, 1.33);
        transition: .2s cubic-bezier(0, 0.56, 0.14, 1.33);
        -webkit-transform: scaleY(0.5) scaleX(0.5);
        -moz-transform: scaleY(0.5) scaleX(0.5);;
        -ms-transform: scaleY(0.5) scaleX(0.5);;
        -o-transform: scaleY(0.5) scaleX(0.5);;
        transform: scaleY(0.5) scaleX(0.5);;
        font-size: 14px;
        position: fixed;
        background: #fff;
        width: 280px;
        padding: 0 50px 16px;
        top: 50%;
        left: 50%;
        margin-left: -190px;
        margin-top: -219px;
        border-radius: 3px;
        box-shadow: 0 0 8px 1px rgba(0, 0, 0, .24);
    }

    .newa_login_pop {
        visibility: visible;
        opacity: 1;
        -webkit-transform: scaleY(1) scaleX(1);
        -moz-transform: scaleY(1) scaleX(1);
        -ms-transform: scaleY(1) scaleX(1);
        -o-transform: scaleY(1) scaleX(1);
        transform: scaleY(1) scaleX(1);
    }

    .newa_close {
        display: block;
        width: 12px;
        height: 12px;
        background: url("${staticRoot}/images/newa_close.png") no-repeat;
        position: absolute;
        top: 16px;
        right: 16px;
    }

    .newa_login_tab {
        width: 220px;
        margin: 29px auto 37px;
        height: 32px;
    }

    .newa_login_tab li {
        line-height: 30px;
        width: 110px;
        float: left;
        font-size: 18px;
        color: #777;
        text-align: center;
        cursor: pointer;
    }

    .newa_login_t_active span {
        display: inline-block;
        width: 73px;
        border-bottom: 2px solid #ff9180;
    }

    .newa_login_con {
        display: none;
        width: 280px;
    }

    .newa_login_input li {
        position: relative;
        margin-bottom: 18px;
    }

    .newa_login_input input {
        width: 245px;
        height: 40px;
        font-size: 14px;
        padding-left: 35px;
        border: 1px solid #eeeeee;
    }

    .newa_login_input li i {
        position: absolute;
        display: inline-block;
        width: 13px;
        height: 17px;
        top: 14px;
        left: 9px;
    }

    .newa_email_tel_icon {
        background: url("${staticRoot}/images/login_icon.png") no-repeat 0 -53px;
    }

    .newa_l_password_icon {
        background: url("${staticRoot}/images/login_icon.png") no-repeat -18px -53px;
    }

    .newa_login_input li i.newa_kj_icon {
        background: url("${staticRoot}/images/login_icon.png") no-repeat 0 -74px;
        width: 14px;
        height: 18px;
    }

    .newa_login_input li i.newa_piccode_icon {
        background: url("${staticRoot}/images/login_icon.png") no-repeat 0 -97px;
        top: 15px;
        width: 17px;
        height: 14px;
    }

    .newa_login_input li i.newa_code_icon {
        background: url("${staticRoot}/images/login_icon.png") no-repeat 0 -116px;
        top: 15px;
        width: 16px;
        height: 14px;
    }

    .newa_foget {
        height: 14px;
        line-height: 14px;
        margin-bottom: 28px;
    }

    .newa_foget label {
        color: #999999;
        font-size: 14px;
    }

    .newa_foget_m {
        float: right;
        color: #ff9180;
        font-size: 14px;
    }

    .newa_login_btn {
        display: block;
        width: 310px;
        height: 70px;
        background: url("${staticRoot}/images/login_btn.png") no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("${staticRoot}/images/login_btn.png") no-repeat -310px 0;
    }

    .newa_zc {
        color: #999;
        margin-top: -6px;
    }

    .newa_zc a {
        color: #fe7e71;
    }

    .newa_zc a:hover {
        text-decoration: underline;
    }

    .newa_coop {
        margin-top: 28px;
    }

    .newa_coop a {
        display: inline-block;
    }

    .newa_coop .newa_sina {
        width: 28px;
        height: 23px;
        background: url("${staticRoot}/images/login_icon.png") no-repeat 0 -25px;
    }

    .newa_coop .newa_qq {
        width: 18px;
        height: 20px;
        background: url("${staticRoot}/images/login_icon.png") no-repeat -1px 0;
        margin-left: 25px;
    }

    .newa_piccode {
        display: block;
        width: 80px;
        height: 36px;
        position: absolute;
        right: 0px;
        top: 2px;
    }

    .newa_code {
        display: block;
        height: 40px;
        line-height: 44px;
        color: #fe7e71;
        padding: 0 10px;
        position: absolute;
        right: 0px;
        top: 0;
    }

    .newa_tips {
        visibility: hidden;
        border: 1px solid #ccc;
        background: #fff;
        opacity: 0;
        -webkit-transform: translateY(10px);
        -moz-transform: translateY(10px);
        -ms-transform: translateY(10px);
        -o-transform: translateY(10px);
        transform: translateY(10px);
        -webkit-transition: transform .1s ease-in;
        -moz-transition: transform .1s ease-in;
        -ms-transition: transform .1s ease-in;
        -o-transition: transform .1s ease-in;
        transition: transform .1s ease-in;
        -webkit-box-shadow: 0 4px 20px 1px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0 4px 20px 1px rgba(0, 0, 0, 0.2);
        box-shadow: 0 4px 20px 1px rgba(0, 0, 0, 0.2);
        line-height: 20px;
        padding: 4px 14px;
        display: inline-block;
        font-size: 12px;
        color: #999999;
        position: absolute;
        left: 50%;
        top: 58px;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
    }

    .newa_tips .newa_tips_icon {
        margin-right: 10px;
        font-style: normal;
        display: inline-block;
        width: 14px;
        height: 14px;
        font-size: 12px;
        background: #fe7e71;
        color: #fff;
        text-align: center;
        line-height: 14px;
        -webkit-border-radius: 7px;
        -moz-border-radius: 7px;
        border-radius: 7px;
    }

    .newa_trans {
        -webkit-transition: .1s ease-in;
        -moz-transition: .1s ease-in;
        -ms-transition: .1s ease-in;
        -o-transition: .1s ease-in;
        transition: .1s ease-in;
    }

    .newa_tips_show {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -ms-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
        visibility: visible;
        opacity: 1;
    }

    .newa_close_tips {
        margin-left: 14px;
        font-size: 16px;
        line-height: 16px;
    }

    .newa_close_tips:hover {
        color: #fe7e71;
    }

    .newa_triangle {
        position: absolute;
        bottom: -15px;
        left: 50%;
        margin-left: -7px;
        right: auto;
        height: 14px;
        display: inline-block;
        font-size: 0;
    }

    .newa_triangle i, .newa_triangle em {
        overflow: hidden;
        vertical-align: top;
        width: 0;
        height: 0;
        overflow: hidden;
        font-size: 0;
        line-height: 0;
        border: 7px solid;
        display: inline-block;
    }

    .newa_triangle i {
        border-color: #ccc transparent transparent transparent;
    }

    .newa_triangle em {
        border-color: #fff transparent transparent transparent;
        margin: -1px 0 0 -14px;
    }

    .newa_piccode img {
        width: 80px;
        height: 36px;
    }
</style>

<script>
    function toLogin(tp) {
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
                    getImageCode($("#ValidImg"));
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
                } else if (j.state == -22) {
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('验证码已经失效，请重新获取验证码！');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == 1) {
                    location.href = 'http://www.muniao.com';
                }
                else if (j.state == 3) {
                    alert(j.mgs);
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
                    location.href = 'http://www.muniao.com';
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

    //获取短信验证码
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
                //$('#hd_MsgCode').val(JSON.parse(data).Code);

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
                alert('您还不是木鸟用户，请注册！');
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
                                                                        onclick="getImageCode(this);"></a>
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
        <a class="newa_login_btn newa_quick" href="javascript:;" onclick="toLogin(0)"></a>
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
            <a class="newa_sina" href="http://user2.muniao.com//Room/Index?utp=1#"></a>
            <a class="newa_qq" href="http://user2.muniao.com//Room/Index?utp=1#"></a>
        </div>
    </div>
    <!---tips--->
    <div class="newa_tips newa_tips_kj">
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
    $("#Login").click(function () {
        $(".newa_login_bg").show();
        $(".newa_login_main").addClass("newa_login_pop");
    })
    $(".newa_close").click(function () {
        $(".newa_login_bg").hide();
        $(".newa_login_main").removeClass("newa_login_pop");
    })
    var kj_phone = $("input[name='newa_kj_phone']");
    var newa_tips = $(".newa_tips");
    var newa_len = $(".newa_tips_text").text().length;
    //$(".newa_quick").click(function () {
    //    if (kj_phone.val() == "") {
    //        kj_phone.focus();
    //        newa_tips.css({ "margin-left": -(newa_len * 12 + 82) / 2 }).addClass("newa_tips_show");
    //    }
    //})
    //$(".newa_close_tips,.newa_login_input li").click(function () {
    //    newa_tips.addClass("newa_trans");
    //    newa_tips.removeClass("newa_tips_show");
    //})
</script>


<!--房东管理开始-->
<div class="userT"><a href="http://www.muniao.com/" class="aGray">首页</a> &gt; 用户中心</div>
<div class="usercon">
    <div class="userL" style="box-shadow: 4px 2px 10px rgba(0, 0, 0, 0.25);margin-bottom: 30px;">
        <div class="userhead">
            <div class="userhead_pic"><img id="ContPic"
                                           src="${staticRoot}/images/d590d8e4b87c4c65922d653c3812d4a620180604093556672.jpg_150_150(1).jpg"
                                           style="border:0;" width="219" height="219"></div>
            <span>嘉利学府</span>
            <div class="userheadtxt"><a href="http://user2.muniao.com/Order/Index?utp=1" style="color:#f4650a;">订单管理</a><a
                    class="w_border" style="color:#f4650a;" href="http://user2.muniao.com/UserInfo/Index">个人信息</a></div>
        </div>
        <style>
            .usidebar ul li img {
                vertical-align: baseline;
            }

            .usidebar ul li a {
                vertical-align: top;
            }
        </style>
        <div class="usidebar">
            <h4 style="color:#444;">房源与交易</h4>
            <ul>
                <li id="li1" class="usidebarlibg"><img src="${staticRoot}/images/light_on.gif" width="18" height="18"
                                                       align="absmiddle"><a
                        href="http://user2.muniao.com/Index/MoveHouse?utp=1">发布房源</a></li>
                <li id="li2" class="usidebarlibg1"><img src="${staticRoot}/images/application_view_icons.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/Room/Index?utp=1&amp;c=3">房源管理</a></li>
                <li id="li5" class="usidebarlibg"><img src="${staticRoot}/images/icon_update.png" width="14" height="18"
                                                       align="absmiddle"><a
                        href="http://user2.muniao.com/Index/MoveHouse?utp=1" target="_blank">搬家房源</a><img
                        src="${staticRoot}/images/icon_newAdd.png" align="absmiddle"></li>
                <li id="li3" class="usidebarlibg"><img src="${staticRoot}/images/folders.gif" width="18" height="18"
                                                       align="absmiddle"><a
                        href="http://user2.muniao.com/Order/Index?utp=1">订单管理</a></li>
                <li id="li4" class="usidebarlibg"><img src="${staticRoot}/images/comment_user.gif" width="18" height="18"
                                                       align="absmiddle"><a
                        href="http://user2.muniao.com/Appraise/List?utp=1">我的评价</a></li>


                <li id="li20" class="usidebarlibg"><img src="${staticRoot}/images/shanding.png" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/Room/Flashset?utp=1">闪订管理</a><img src="${staticRoot}/images/icon_newAdd.png"
                                                                                        align="absmiddle"></li>
            </ul>
            <h4 style="color:#444;">用户信息</h4>
            <ul>
                <li id="li26" class="usidebarlibg"><img src="${staticRoot}/images/icon_memeber.png" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/commpage/mymember?utp=1">我的会员</a></li>
                <li id="li13" class="usidebarlibg"><img src="${staticRoot}/images/user_edit.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/UserInfo/Index?utp=1">个人信息</a></li>
                <li id="li21" class="usidebarlibg"><img src="${staticRoot}/images/checked_icon.png" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/index/Verificationcenter?utp=1">验证中心</a><img
                        src="${staticRoot}/images/icon_newAdd.png" align="absmiddle"></li>
                <li id="li11" class="usidebarlibg"><img src="${staticRoot}/images/database_user.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/RentMoney/Index?utp=1">我的租币 </a></li>
                <li id="li12" class="usidebarlibg"><img src="${staticRoot}/images/key.gif" width="18" height="18" align="absmiddle"><a
                        href="http://user2.muniao.com/UserInfo/Password?utp=1">密码修改</a></li>
                <li id="li14" class="usidebarlibg"><img src="${staticRoot}/images/user_down.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/BecomeHost/Index?utp=1">收款方式</a></li>

                <li id="li15" class="usidebarlibg"><img src="${staticRoot}/images/comment_reply.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/SystemMsg/Index?date=131734173585801443">消息提醒</a></li>
            </ul>
        </div>
    </div>
    <!--欢迎页面开始-->
    <div class="uwelcome">
        <script>
            $("body").ready(function () {
                var pic_list_w = $("#user_banner_pic li").width();
                var pic_list = $("#user_banner_pic li");
                var pic_len = $("#user_banner_pic li").length;
                $('#user_banner_pic').width(pic_list_w * pic_len);
                var num = 0;
                var timer = null;
                autoyd();

                function autoyd() {
                    timer = setInterval(function () {
                        num++;
                        $('#user_banner_pic').animate({
                            "left": -(num % pic_list.length) * pic_list_w
                        })
                        $(".user_banner_radius li").eq(num % pic_list.length).addClass("active").siblings().removeClass("active");
                        //alert((num % pic_list.length)*pic_list_w)
                    }, 4000);
                }

                $(".user_banner_radius li").on("mouseover", function () {
                    $('#user_banner_pic').animate({
                        "left": -$(this).index() * pic_list.width()
                    });
                    $(this).addClass("active").siblings().removeClass("active");
                    if (timer != null) {
                        try {
                            clearInterval(timer);
                        }
                        catch (e) {

                        }
                        timer = null;
                    }
                })
                $(".user_banner_radius li").on("mouseout", function () {
                    autoyd();
                })
            });
            $(this).addClass("active").siblings().removeClass("active");
            $(".user_banner_radius li").on("mouseout", function () {
                autoyd();
            })
        </script>
        <style>
            .user_banner {
                width: 769px;
                height: 200px;
                overflow: hidden;
                position: relative;
            }

            #user_banner_pic {
                height: 200px;
                position: absolute;
                left: 0;
                top: 0;
            }

            #user_banner_pic li {
                width: 769px;
                height: 200px;
                float: left;
            }

            .user_banner_radius {
                position: absolute;
                bottom: 10px;
                right: 30px;
            }

            .user_banner_radius li {
                width: 10px;
                height: 10px;
                background: #f86d56;
                float: left;
                margin-left: 10px;
                border-radius: 50%;
            }

            .user_banner_radius li.active {
                background: #ffffff;
            }
        </style>
        <div class="user_banner">
            <ul id="user_banner_pic" style="width: 769px; left: 0px;">


                <li><a href="https://mp.weixin.qq.com/s/VwCZLXGbv_1QNd6mrs3prQ" target="_blank"><img
                        src="${staticRoot}/images/bannar.png" width="769" height="200"></a></li>


            </ul>
            <ul class="user_banner_radius">
                <li class="active"></li>


            </ul>
        </div>
        <!--欢迎页面结束-->


        <link href="${staticRoot}/images/RoomList.css" rel="stylesheet">
        <link href="${staticRoot}/images/jqPaginator.css" rel="stylesheet">
        <script src="${staticRoot}/images/jquery-1.10.2.min.js.下载"></script>
        <script src="${staticRoot}/images/jqPaginator.js.下载"></script>
        <script>
            $(function () {
                GetJson(1, 5, 1);//页面加载是  当前  页码为1 条数5  状态  在线
            });

            function GetJson(page, pagesize, type) {
                $("#room" + type).css("color", "#f4650a").siblings().css("color", "#444");
                var jsondate = {
                    "page": page,
                    "pagesize": pagesize,
                    "type": type, //2未上线-未提交房源，1已上线房源，0所有房源，3草稿，4未通过，5重新审核，6下架
                    "hasmoving": 0
                };
                var datastr = JSON.stringify(jsondate);
                $.ajax({
                    type: "post",
                    url: "/Room/req",
                    dataType: "json",
                    async: false,
                    data: {
                        step: "101",
                        data: datastr
                    },
                    success: function (json) {
                        var roombeds = JSON.parse(json).data;
                        console.log(roombeds.list);
                        var roomlisthtml = "";
                        if (roombeds.list.length > 0) {
                            var roomlist = roombeds.list;
                            for (var i = 0; i < roombeds.list.length; i++) {
                                var roomid = roomlist[i].roomid;
                                var status = roomlist[i].status;
                                var subtitle = roomlist[i].subtitle.length > 0 ? roomlist[i].subtitle : "暂无房间别名";
                                var url = "//www.muniao.com/room/" + roomid + ".html";
                                var roomstatushtml = "";
                                var examplehtml = "";
                                var yuanyinhtml = "";
                                var beianhtml = "";
                                var beiananniu = "";
                                if (roomlist[i].valid_msg.indexOf('未认证') > -1) {
                                    beiananniu += "<li onclick=\"location.href='/Room/RoomValid?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">房源备案</li>";
                                } else if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                    beiananniu += "<li onclick=\"location.href='/Room/RoomValid?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">房源" + roomlist[i].valid_msg + "</li>";
                                }
                                else if (roomlist[i].valid_msg == "") {
                                    if (roomlist[i].province != "北京") {
                                        beiananniu += "<li class=\"umanageconlibg\">房源已认证</li>";
                                    }

                                }
                                else {
                                    beiananniu += "<li class=\"umanageconlibg\">房源" + roomlist[i].valid_msg + "</li>";
                                }
                                if (status == 1) {
                                    if (roomlist[i].status_msg.indexOf('在线(修改待提交)') > -1) {
                                        roomstatushtml = "<li title=\"提交审核\" onclick=\"RoomStatusOp(" + roomid + ",33)\" class=\"umanageconlibg\">提交审核</li><li onclick=\"location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>" + beiananniu;
                                        examplehtml = "<div class=\"fRight\"><div class=\"example\" style=\"border-color:#a8acad;color:#808080;\">未提交</div></div>";
                                        if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                            yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                        }

                                    } else if (roomlist[i].status_msg.indexOf('在线(修改审核中)') > -1) {
                                        roomstatushtml = "<li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>" + beiananniu;
                                        examplehtml = "<div class=\"fRight\"><div class=\"example\" style=\"border-color:#ffd0b4;color:#ffd0b4;\">正在<br />审核</div></div>";
                                        if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                            yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                        }
                                    } else if (roomlist[i].status_msg.indexOf('在线(修改未通过)') > -1) {
                                        if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                            beianhtml = " <font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br/>";
                                        }
                                        yuanyinhtml += " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>房源未通过原因：" + roomlist[i].status_reason + "</font><br />" + beianhtml + "</div>";
                                        roomstatushtml = "<li title=\"重新提交审核\" onclick=\"RoomStatusOp(" + roomid + ",33)\" class=\"umanageconlibg\">重新提交</li><li onclick=\"location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>" + beiananniu;
                                        examplehtml = "<div class=\"fRight\"><div class=\"example\" style=\"border-color:#a8acad;color:#a8acad;\">未通过</div></div>";
                                    } else {
                                        if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                            yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                        }
                                        roomstatushtml = "<li onclick=\"alert('编辑房源位置、房间描述、床型信息、入住人数、户型、房间照片需重新审核，审核期间房源不下线，审核期间房源信息处于锁定状态，审核结束后方可再次编辑。在此期间订房的房客，需按审核前的条件接待。');location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li title=\"下线此房源\" onclick=\"updateroom(" + roomid + ")\" class=\"umanageconlibg\">下线</li><li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>" + beiananniu;
                                        examplehtml = "<div class=\"fRight\"><div class=\"example\">审核<br />通过</div></div>";
                                    }

                                } else if (status == 2) {
                                    if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                        beianhtml = " <font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br/>";
                                    }
                                    yuanyinhtml += " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>房源未通过原因：" + roomlist[i].status_reason + "</font><br />" + beianhtml + "</div>";
                                    roomstatushtml = "<li title=\"重新提交审核\" onclick=\"RoomStatusOp(" + roomid + ",3)\" class=\"umanageconlibg\">重新提交</li><li onclick=\"location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>";
                                    examplehtml = "<div class=\"fRight\"><div class=\"example\" style=\"border-color:#a8acad;color:#a8acad;\">未通过</div></div>";
                                } else if (status == 0)//审核中
                                {
                                    if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                        yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                    }
                                    roomstatushtml = beiananniu;
                                    examplehtml = "<div class=\"fRight\"><div class=\"example\" style=\"border-color:#ffd0b4;color:#ffd0b4;\">正在<br />审核</div></div>";
                                }
                                else if (status == 4)//房东下架
                                {
                                    if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                        yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                    }
                                    roomstatushtml = "<li title=\"上线接受预定\" onclick=\"RoomStatusOp(" + roomid + ",31)\" class=\"umanageconlibg\">上线</li><li onclick=\"location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>";
                                    examplehtml = "<div class=\"fRight\"></div>";
                                }
                                else if (status == 9)//草稿
                                {
                                    if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                        yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                    }
                                    roomstatushtml = "<li title=\"提交审核\" onclick=\"RoomStatusOp(" + roomid + ",0)\" class=\"umanageconlibg\">提交审核</li><li onclick=\"location.href='/room/Step2/" + roomid + "'\" class=\"umanageconlibg\" title=\"修改房源信息\">编辑</li><li onclick=\"deleteRoom(" + roomid + ")\" class=\"umanageconlibg\">删除</li>";
                                    examplehtml = "<div class=\"fRight\"></div>";
                                }
                                else if (status == 3)//重新审核中
                                {
                                    if (roomlist[i].valid_msg.indexOf('未通过') > -1) {
                                        yuanyinhtml = " <div class=\"over fLeft\" style=\"margin: 0; margin-top: 5px; width: 400px; borderradius:5px;padding:2px 10px;\"><font>备案未通过原因：" + roomlist[i].valid_reason + "</font><br /></div>";
                                    }
                                    roomstatushtml += "<li onclick=\"location.href='/Room/PriceDate?utp=1&id=" + roomid + "'\" class=\"umanageconlibg\">价格排期</li>";
                                }
                                roomlisthtml += "<div class=\"umanagecon\"><div class=\"fLeft\"><div class=\"ubgimg\"><a href=\"" + url + "\" target=\"_blank\"><img src=\"" + roomlist[i].cover + "\" width=\"173\" height=\"129\"></a></div></div><div class=\"fRight\"><div class=\"umanageR\"><p class=\"f14 fLeft\"><a href=\"" + url + "\" target=\"_blank\" style=\"color: #444; font-weight: bolder;\"><label title=\"已上线情况下修改房源信息，审核过程中不会影响线上房源。\" class='status_class1'>[" + roomlist[i].status_msg + "]</label>" + roomlist[i].title + "[" + subtitle + "]</a><span style=\"padding-left:10px;font-size:9pt;\">(" + roomlist[i].adddate + "发布)</span></p><div class=\"clear\"></div><p class=\"mT10\"><img src=\"${staticRoot}/images/address.png\" width=\"18\" height=\"20\" style=\"vertical-align:middle;\" />地址：" + roomlist[i].street + "</p><div class=\"uprice\"><div class=\"fLeft mT20\"><span><strong style=\"color:orangered;font-size:23px;\">￥" + roomlist[i].price + "</strong>/天</span></div>" + examplehtml + "<div class=\"clear\"></div><p class=\"userp\" style=\"font-size:12px; margin:5px;float:right;\">编号：" + roomid + "</p></div></div>" + yuanyinhtml + "<div class=\"clear\"></div></div><div class=\"clear\"></div><ul>" + roomstatushtml + "</ul><div class=\"clear\"></div></div>";
                            }
                            $("#roomcontent").html(roomlisthtml);
                            /*分页*/
                            GetPages(roombeds.page, roombeds.pagecount, type, false);
                            $("#div_RoomLists").hide();
                            $("#div_RoomList").show();
                        } else {
                            $("#div_RoomLists").show();
                            $("#div_RoomList").hide();

                        }
                    },
                    error: function () {
                    }
                })
            }

            /*分页*/
            function GetPages(page, count, type, key) {
                $("#demo1").jqPaginator({
                    totalPages: count,
                    visiblePages: count,
                    currentPage: page,
                    first: '<li class="first"><a href="javascript:void(0);">第一页<\/a><\/li>',
                    prev: '<li class="prev"><a href="javascript:void(0);"><i class="arrow arrow2"></i>上一页<\/a><\/li>',
                    next: '<li class="next"><a href="javascript:void(0);">下一页<i class="arrow arrow3"></i><\/a><\/li>',
                    last: '<li class="last"><a href="javascript:void(0);">末页<\/a><\/li>',
                    page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
                    onPageChange: function (n) {//n=当前页码
                        if (key) {
                            GetJson(n, 5, type);
                        }
                        if (!key) {
                            key = true;
                        }
                    }
                });
            }

            //左侧菜单选中样式
            $('#li2').attr('class', 'usidebarlibg1');

            /*上架/下架、重新提交、提交审核*/
            function RoomStatusOp(id, op) {
                var msg = "";
                if (op == 31) {
                    msg = '您确定要上架此房源吗？ 上架需要重新审核房源。';
                }
                else if (op == 3 || op == 33) {
                    msg = '您确定要重新提交审核此房源吗？';
                }
                else if (op == 0 || op == 34) {
                    msg = '您确定要提交审核此房源吗？';
                }
                if (confirm(msg)) {
                    var postData = {"roomid": id};
                    var datastr = JSON.stringify(postData);
                    var url = '/Room/Submit_RoomStatus';
                    $.post(url, {postData: datastr}, function (json) {
                        console.log(json);
                        var jsonData = JSON.parse(json);
                        alert(jsonData.message);
                        if (jsonData.status == 0) {
                            window.location.reload();
                        }
                    })
                }
            }

            /*删除*/
            function deleteRoom(RoomId) {
                if (confirm('您确定要删除该房源吗？删除后不可恢复。')) {
                    $.ajax({
                        type: "post",
                        url: "deleteroom",
                        dataType: "json",
                        async: false,
                        data: {
                            data: "{\"roomid\":" + RoomId + "}"
                        },
                        success: function (json) {
                            var jsonData = json;
                            alert(jsonData.message);
                            if (jsonData.status == 0) {
                                window.location.reload();
                            }
                        }
                    });
//                    $.ajax({
//                        type: "post",
//                        url: "/Room/req",
//                        dataType: "json",
//                        async: false,
//                        data: {
//                            step: "104",
//                            data: "{\"roomid\":" + RoomId + "}"
//                        },
//                        success: function (json) {
//                            var jsonData = JSON.parse(json);
//                            alert(jsonData.message);
//                            if (jsonData.status == 0) {
//                                window.location.reload();
//                            }
//                        }
//                    });
                }
            }
        </script>
        <div class="userR">
            <div class="uinfoT">
                <h4 style="color: rgb(244, 101, 10); float: left; margin-right: 5px; cursor: pointer;" id="room0"
                    onclick="GetJson(1, 5, 0)">全部房源</h4>
                <h4 style="color:#444; float:left;margin-right:5px;cursor:pointer;" id="room3"
                    onclick="GetJson(1, 5, 3)">草稿</h4>
                <h4 style="color: rgb(68, 68, 68); float: left; margin-right: 5px; cursor: pointer;" id="room1"
                    onclick="GetJson(1, 5, 1)">在线</h4>
                <h4 style="color:#444; float:left;margin-right:5px;cursor:pointer;" id="room7"
                    onclick="GetJson(1, 5, 7)">审核中</h4>
                <h4 style="color:#444; float:left;margin-right:5px;cursor:pointer;" id="room6"
                    onclick="GetJson(1, 5, 6)">已下架</h4>
            </div>
            <!--列表开始-->
            <div id="div_RoomList" style="display: block;">
            <#list roomList as list>
                <div id="roomcontent">
                    <div class="umanagecon">
                        <div class="fLeft">
                            <div class="ubgimg"><a href="http://www.muniao.com/room/203090.html" target="_blank"><img
                                    src="${staticRoot}/images/nopic.gif" width="173" height="129"></a></div>
                        </div>
                        <div class="fRight">
                            <div class="umanageR"><p class="f14 fLeft"><a href="http://www.muniao.com/room/203090.html"
                                                                          target="_blank"
                                                                          style="color: #444; font-weight: bolder;"><label
                                    title="已上线情况下修改房源信息，审核过程中不会影响线上房源。"
                                    class="status_class1"></label>${list.title}</a><span
                                    style="padding-left:10px;font-size:9pt;"></span></p>
                                <div class="clear"></div>
                                <p class="mT10"><img src="${staticRoot}/images/address.png" width="18" height="20"
                                                     style="vertical-align:middle;">地址：${list.city}${list.area}${list.street}</p>
                                <div class="uprice">
                                    <div class="fLeft mT20"><span><strong
                                            style="color:orangered;font-size:23px;">￥${list.price}</strong>/天</span></div>
                                    <div class="fRight"></div>
                                    <div class="clear"></div>
                                    <p class="userp" style="font-size:12px; margin:5px;float:right;">编号：${list.roomid}</p></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                        <ul>
                            <li title="提交审核" onclick="RoomStatusOp(203090,0)" class="umanageconlibg">提交审核</li>
                            <li onclick="location.href=&#39;/room/Step2/203090&#39;" class="umanageconlibg"
                                title="修改房源信息">编辑
                            </li>
                            <li onclick="deleteRoom(${list.roomid})" class="umanageconlibg">删除</li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
        </#list>
                <!--分页开始-->
                <div style="text-align:center; margin-bottom:30px;">
                    <ul id="demo1" class="pagination">
                        <li class="first disabled" jp-role="first" jp-data="1"><a href="javascript:void(0);">第一页</a>
                        </li>
                        <li class="prev disabled" jp-role="prev" jp-data="0"><a href="javascript:void(0);"><i
                                class="arrow arrow2"></i>上一页</a></li>
                        <li class="page active" jp-role="page" jp-data="1"><a href="javascript:void(0);">1</a></li>
                        <li class="next disabled" jp-role="next" jp-data="2"><a href="javascript:void(0);">下一页<i
                                class="arrow arrow3"></i></a></li>
                        <li class="last disabled" jp-role="last" jp-data="1"><a href="javascript:void(0);">末页</a></li>
                    </ul>
                </div>
                <!--分页结束-->
            </div>
            <div id="div_RoomLists" style="display: none;">
                <div style="text-align:center;"><a id="Submit" href="http://user2.muniao.com/Index/MoveHouse"
                                                   class="userinfo_tijiao">发布我的房源</a></div>
            </div>
            <!--列表结束-->
        </div>
        <!--offline-dialog-->
        <div id="offline-dialog">
            <!--[if IE 8]>
            <div class="background-mask"></div><![endif]-->
            <div class="offline-dialog">
                <h2>要下架房源？</h2>
                <p class="offline-tellUs">请告诉我们原因</p>
                <ul class="offline-cause">
                    <li><label for="1">1.我不再做这套房间的短租</label><input id="1" type="radio" name="offline-cause" value="1">
                    </li>
                    <li><label for="2">2.我认为做房东很麻烦，不想做房东了</label><input id="2" type="radio" name="offline-cause"
                                                                        value="2"></li>
                    <li><label for="3">3.我不想和木鸟合作了</label><input id="3" type="radio" name="offline-cause" value="3">
                    </li>
                    <li><label for="4">4.其他原因</label><input id="4" type="radio" name="offline-cause" value="4"></li>
                    <textarea class="offline-textarea" placeholder="请输入下架原因"></textarea>
                </ul>
                <div class="offline-btn">
                    <a href="javascript:;" class="offline-submit">确定</a>
                    <a href="javascript:;" class="offline-giveUp">取消</a>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function updateroom(id) {
                if ($("#4").prop("checked")) {
                    $(".offline-textarea").show();
                }
                $("#offline-dialog").show().attr("room_id", id);
            }

            $("input[type=radio]:last").click(function () {
                $(this).parents("ul").find(".offline-textarea").show();
            });
            $(".offline-giveUp").click(function () {
                $("#offline-dialog").hide();
            });
            $(".offline-submit").click(function () {
                var roomId = $(this).parents("#offline-dialog").attr("room_id"),
                        offline_cause = $(".offline-cause input:checked").val(),
                        otherText;
                offline_cause == 4 ? otherText = $(".offline-textarea").val() : otherText = $(".offline-cause input:checked").prev().text();
                console.log("roomId" + roomId + "offline_cause" + offline_cause + "otherText" + otherText);
                if (offline_cause == "" || offline_cause == null) {
                    alert("请您选择下架原因！");
                    return false;
                }
                if (otherText == "") {
                    alert("请您填写原因！");
                    return false;
                }
                var msg = '您确定要下架此房源吗？';
                if (confirm(msg)) {
                    $.get('/Room/RoomStatusOpdown?id=' + roomId + '&op=' + offline_cause + '&text=' + otherText, function (data) {
                        var j = JSON.parse(data);
                        if (j.state == 0) {
                            alert('操作成功！');
                            window.location.reload();
                        } else if (j.state == 20) {
                            alert("系统检测：您此房源资料未完成，请填写完后提交审核！");
                        } else {
                            alert('操作失败！');
                        }
                    });
                }


            })
        </script>

        <div class="clear"></div>
    </div>
</div>
<!--尾开始-->
<div class="s_mn_footerbox" id="s_mn_footerbox">
    <div class="s_mn_footer_center">
        <div class="s_mn_footer_nav">
            <a href="http://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/single_3.html" target="_blank" title="木鸟短租客服">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/single_5.html" rel="nofollow" target="_blank" title="新手指南">新手指南</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/single_7.html" rel="nofollow" target="_blank" title="加入我们">加入我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/list_news_0_1.html" target="_blank" rel="nofollow" title="新闻资讯">新闻资讯</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a>
        </div>
        <div class="s_mn_footer_information">
            <div class="s_mn_copyright">
                <p>客服电话：4000560055&nbsp;客户服务：service@muniao.com&nbsp;意见反馈：feedback@muniao.com</p>
                <p>版权所有&nbsp;木鸟短租&nbsp;网站备案/许可证号：京ICP备12043553号-3 京公网安备11010802011855号</p>
                <p><a href="https://assets.muniao.com/UploadFiles/appimg/b_copy.jpg" target="_blank">营业执照编号
                    104555056</a>&nbsp;北京爱游易科技有限公司</p>
            </div>
            <div class="s_mn_security">
                <ul class="s_mn_security_list">
                    <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心"
                           target="_blank"><img style="border-radius: 5px;" src="${staticRoot}/images/pic1.jpg" alt="信息举报中心"
                                                title="信息举报中心" width="109" height="50"></a></li>
                    <li><a href="http://www.cyberpolice.cn/wfjb/" rel="nofollow" title="网络110" target="_blank"><img
                            style="border-radius: 5px;" src="${staticRoot}/images/pic2.jpg" alt="网络110" title="网络110" width="109"
                            height="50"></a></li>
                    <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img
                            style="border-radius: 5px;" src="${staticRoot}/images/pic3.jpg" alt="互联网举报中心" title="互联网举报中心"
                            width="109" height="50"></a></li>
                    <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测"
                           target="_blank"><img style="border-radius: 5px;" src="${staticRoot}/images/pic6.jpg" alt="安全检测"
                                                title="安全检测" width="109" height="50"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--尾结束-->

<!--<script type="text/javascript">-->
<!--document.write(unescape("%3Cscript src='https://webim3.muniao.com/webim2/?action=boot&utype=1' type='text/javascript'%3E%3C/script%3E"));-->
<!--</script>-->
<!--<script src="${staticRoot}/images/saved_resource" type="text/javascript"></script>-->
<!--<link href="${staticRoot}/images/webim.min.css" media="all" type="text/css" rel="stylesheet">-->
<!--<link href="${staticRoot}/images/jquery.ui.theme.css" media="all" type="text/css" rel="stylesheet">-->
<!--<script src="${staticRoot}/images/web_socket.min.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim.min.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim-zh-CN.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim.php5.min.js.下载" charset="utf-8" type="text/javascript"></script>-->


<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>