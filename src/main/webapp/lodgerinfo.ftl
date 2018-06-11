<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0038)http://user2.muniao.com/UserInfo/Index -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户中心-木鸟短租</title>

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
<body>
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
<!--href="http://user2.muniao.com/UserInfo/Index#close" style="display: none;"><em-->
<!--class="ui-icon ui-icon-close">关闭</em></a>-->
<!--<div id=":tabCount" class="webim-window-tab-count">-->
<!--0-->
<!--</div>-->
<!--<em id=":tabIcon" class="webim-icon webim-icon-buddy"></em>-->
<!--<h4 id=":tabTitle">联系人[2/2]</h4>-->
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
<!--联系人[2/2]</h4>-->
<!--<div id=":subHeader" class="webim-window-subheader">-->
<!--<div style="display: block;">-->
<!--<div id=":user" class="webim-user">-->
<!--<a id=":userPic" class="webim-user-pic ui-corner-all ui-state-active"-->
<!--href="http://user2.muniao.com/UserInfo/Index#"><img width="50"-->
<!--height="50"-->
<!--defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"-->
<!--class="ui-corner-all"-->
<!--src="${staticRoot}/images/pic13.jpg"></a>-->
<!--<div class="webim-user-show"><h4><a id=":userShowTrigger"-->
<!--href="http://user2.muniao.com/UserInfo/Index#show"><strong-->
<!--id=":userNick">夏冰</strong><span id=":userShow"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</span><em-->
<!--class="ui-icon ui-icon-triangle-1-s">show_status_list</em></a>-->
<!--</h4>-->
<!--<p id=":userShowList" class="ui-state-active ui-corner-all"-->
<!--style="display: none;">-->
<!--<a href="http://user2.muniao.com/UserInfo/Index#available"-->
<!--class="webim-user-show-available"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</a>-->
<!--<a href="http://user2.muniao.com/UserInfo/Index#dnd"-->
<!--class="webim-user-show-dnd"><em-->
<!--class="webim-icon webim-icon-dnd">忙碌</em>忙碌</a>-->
<!--<a href="http://user2.muniao.com/UserInfo/Index#away"-->
<!--class="webim-user-show-away"><em-->
<!--class="webim-icon webim-icon-away">离开</em>离开</a>-->
<!--<a href="http://user2.muniao.com/UserInfo/Index#invisible"-->
<!--class="webim-user-show-invisible"><em-->
<!--class="webim-icon webim-icon-invisible">隐身</em>隐身</a>-->
<!--<a href="http://user2.muniao.com/UserInfo/Index#unavailable"-->
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
<!--<div id=":empty" class="webim-buddy-empty" style="display: none;">没有联系人在线-->
<!--</div>-->
<!--<ul id=":ul">-->
<!--<li style="display: block;"><h4><em-->
<!--class="ui-icon ui-icon-triangle-1-s"></em><span>好友[2/2]</span>-->
<!--</h4>-->
<!--<hr class="webim-line ui-state-default">-->
<!--<ul>-->
<!--<li title="" class="webim-buddy-available"><a-->
<!--href="http://user2.muniao.com/UserInfo/Index#url"-->
<!--rel="363368" class="ui-helper-clearfix">-->
<!--<div id=":tabCount" class="webim-window-tab-count">0</div>-->
<!--<em class="webim-icon ui-icon ui-icon-trash"-->
<!--style="display:none;cursor:pointer;"></em><em-->
<!--class="webim-icon webim-icon-available" title="在线">available</em><img-->
<!--width="25"-->
<!--src="${staticRoot}/images/7fc93e87a9334a339509b3ff0e6ec09b20180525163701649.jpg_150_150.jpg"-->
<!--defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"><strong>逅客崇文门天安门前门店</strong><span>&nbsp;</span></a>-->
<!--</li>-->
<!--<li title="" class="webim-buddy-available"><a-->
<!--href="http://user2.muniao.com/UserInfo/Index#url"-->
<!--rel="969857" class="ui-helper-clearfix">-->
<!--<div id=":tabCount" class="webim-window-tab-count">0</div>-->
<!--<em class="webim-icon ui-icon ui-icon-trash"-->
<!--style="display:none;cursor:pointer;"></em><em-->
<!--class="webim-icon webim-icon-available" title="在线">available</em><img-->
<!--width="25"-->
<!--src="${staticRoot}/images/24bb9d9113a7404282c5ae9ca7501fe620180518152803336.jpg_150_150.jpg"-->
<!--defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"><strong>班海东</strong><span>&nbsp;</span></a>-->
<!--</li>-->
<!--</ul>-->
<!--</li>-->
<!--</ul>-->
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
<!--href="http://user2.muniao.com/UserInfo/Index#close" style="display: none;"><em-->
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
        <li><a href="http://www.muniao.com/">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="http://www.muniao.com/features.html" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/images/give88.png"></i></a></li>
    </ul>
    <div id="div_FangKe1" class="s_mn_release w_mR30" style="">
        <a href="http://user2.muniao.com/Index/MoveHouse?utp=1" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style="">

        <span>Hi,欢迎回来！</span>
        <a class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank"
           onmouseover="$(&#39;#div_FangKe&#39;).show(); $(&#39;#div_FangDong&#39;).show();">夏冰</a>
        <!--房客弹出框-->
        <div id="div_FangKe" class="s_mu_usermenubox" style="display:none;"
             onmouseover="$(&#39;#div_FangKe&#39;).show();" onmouseout="$(&#39;#div_FangKe&#39;).hide();">
            <div class="s_mu_user_jt">&nbsp;</div>
            <ul class="s_mu_usermenu" style="opacity:0.8;background-color:rgb(191, 82, 13);border:0;">
                <li><a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8"
                       style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                <li><a href="http://www.muniao.com/mobile.html?utp=2"
                       style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                <li><a href="javascript:void(0);" style="font-size:12px;font-family:微软雅黑;color:#fff;"
                       onclick="logout()">退出</a></li>
            </ul>
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
            <a class="newa_sina" href="http://user2.muniao.com/UserInfo/Index#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/UserInfo/Index#"></a>
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
            <div class="userhead_pic"><img id="ContPic" src="${staticRoot}/images/nopic.gif" style="border:0;" width="219"
                                           height="219"></div>
            <span>夏冰</span>
            <div class="userheadtxt"><a href="http://user2.muniao.com/Order/Index?utp=2" style="color:#f4650a;">订单管理</a><a
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
            <h4 style="color:#444;">订单管理</h4>
            <ul>
                <li id="li3" class="usidebarlibg"><img src="${staticRoot}/images/folders.gif" width="18" height="18"
                                                       align="absmiddle"><a
                        href="http://user2.muniao.com/Order/Index?utp=2">订单管理</a></li>
                <li id="li17" class="usidebarlibg"><img src="${staticRoot}/images/star.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/Favorite/Index?utp=2">我的收藏</a></li>

            </ul>
            <h4 style="color:#444;">用户信息</h4>
            <ul>
                <li id="li26" class="usidebarlibg"><img src="${staticRoot}/images/icon_memeber.png" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/commpage/mymember?utp=2">我的会员</a></li>
                <li id="li13" class="usidebarlibg1"><img src="${staticRoot}/images/user_edit.gif" width="18" height="18"
                                                         align="absmiddle"><a
                        href="http://user2.muniao.com/UserInfo/Index?utp=2">个人信息</a></li>
                <li id="li16" class="usidebarlibg"><img src="${staticRoot}/images/database_user.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/Coupon/Index?utp=2">我的优惠券 </a></li>
                <li id="li11" class="usidebarlibg"><img src="${staticRoot}/images/database_user.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/RentMoney/Index?utp=2">我的租币 </a></li>
                <li id="li12" class="usidebarlibg"><img src="${staticRoot}/images/key.gif" width="18" height="18" align="absmiddle"><a
                        href="http://user2.muniao.com/UserInfo/Password?utp=2">密码修改</a></li>
                <li id="li14" class="usidebarlibg"><img src="${staticRoot}/images/user_down.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/BecomeHost/Index?utp=2">收款方式</a></li>
                <li id="li15" class="usidebarlibg"><img src="${staticRoot}/images/comment_reply.gif" width="18" height="18"
                                                        align="absmiddle"><a
                        href="http://user2.muniao.com/SystemMsg/Index?utp=2">消息提醒</a></li>
            </ul>
        </div>
    </div>
    <!--欢迎页面开始-->
    <div class="uwelcome">

        <!--欢迎页面结束-->


        <link href="${staticRoot}/images/webuploader1.css" rel="stylesheet">
        <script src="${staticRoot}/images/webuploader.js.下载"></script>
        <script src="${staticRoot}/images/base-validator.js.下载"></script>
        <script>
            $(function () {
                var usertype = '2';
                //判断其他爱好选中则显示其他爱好文本框
                showHobbyOther();
                //左侧菜单选中样式
                $('#li13').attr('class', 'usidebarlibg1');

                //表单提交
                $('#Submit').click(function () {
                    if (usertype == "1") {
                        //验证用户名
                        if ($('#UserName').val() == '') {
                            $('#UserName').focus();
                            $('#msg_UserName').html('&nbsp;&nbsp;请输入房东昵称！');
                            $('#msg_UserName').show();
                            return false;
                        }
                        //验证选择省份不选城市情况
                        if ($('#Province').val() != null && $('#Province').val() != '省') {
                            if ($('#City').val() == null || $('#City').val() == '市') {
                                $('#City').focus();
                                $('#msg_City').html('&nbsp;&nbsp;请选择城市！');
                                $('#msg_City').show();
                                return false;
                            }
                        }
                        //验证职业字数
                        if (!isLenStr1($('#Profession').val(), 15)) {
                            $('#Profession').focus();
                            $('#msg_Profile').html('&nbsp;&nbsp;字符超出限制，最多15字');
                            $('#msg_Profile').show();
                            return false;
                        }
                        //验证邮箱
                        if ($('#Email').val() != '') {
                            if (!isEmail($('#Email').val())) {
                                $('#Email').focus();
                                $('#msg_Email').html('&nbsp;&nbsp;请输入正确的邮箱地址！');
                                $('#msg_Email').show();
                                return false;
                            }
                        }
                        //验证手机
                        if ($('#Tel').val() != '') {
                            if (!isMobileOrPhone($('#Tel').val())) {
                                $('#Tel').focus();
                                $('#msg_Tel').html('&nbsp;&nbsp;请输入正确的手机或固话！');
                                $('#msg_Tel').show();
                                return false;
                            }
                        }
                        //验证qq
                        if ($('#QQ').val() != '') {
                            if (!isLenNum($('#QQ').val(), 15)) {
                                $('#QQ').focus();
                                $('#msg_QQ').html('&nbsp;&nbsp;请输入正确的QQ号码！');
                                $('#msg_QQ').show();
                                return false;
                            }
                        }
                        //验证个人简介字数
                        if (!isLenStr1($('#Profile').val(), 200)) {
                            $('#Profile').focus();
                            $('#msg_Profile').html('&nbsp;&nbsp;字符超出限制，最多200字');
                            $('#msg_Profile').show();
                            return false;
                        }

                        var json_data = "";
                        $.post("/UserInfo/AjaxSubmit", {
                            "UserType": 1,
                            "UserName": $("#UserName").val(),
                            "Sex": getSex(),
                            "BirthDay": getBirthday(),
                            "CityId": $("#City").val(),
                            "HomeCityId": $("#HomeCity").val(),
                            "BloodType": $("#BloodType").val(),
                            "Profession": $("#Profession").val(),
                            "edu": $("#Education").val(),
                            "School": $("#School").val(),
                            "Email": $("#Email").val(),
                            "Tel_M": $("#Tel_M").html(),
                            "Tel": $("#Tel").val(),
                            "QQ": $("#QQ").val(),
                            "WeChat": $("#WeChat").val(),
                            "Hobby": getHobby(),
                            "HobbyOther": $("#HobbyOther").val(),
                            "introduce": $("#Profile").val(),
                            "UserPhotoUrl": getImg(),
                            "LivingPhoto": getImg1()
                        }, function (data) {
                            if (!!data) {
                                var dt = JSON.parse(data);
                                window.location.reload();
                                alert(dt.msg);
                            }
                        })
                    }
                    else if (usertype == "2") {
                        //验证选择省份不选城市情况
                        if ($('#Province').val() != null && $('#Province').val() != '省') {
                            if ($('#City').val() == null || $('#City').val() == '市') {
                                $('#City').focus();
                                $('#msg_City').html('&nbsp;&nbsp;请选择城市！');
                                $('#msg_City').show();
                                return false;
                            }
                        }
                        //验证职业字数
                        if (!isLenStr1($('#Profession').val(), 15)) {
                            $('#Profession').focus();
                            $('#msg_Profile').html('&nbsp;&nbsp;字符超出限制，最多15字');
                            $('#msg_Profile').show();
                            return false;
                        }
                        //验证邮箱
                        if ($('#Email').val() != '') {
                            if (!isEmail($('#Email').val())) {
                                $('#Email').focus();
                                $('#msg_Email').html('&nbsp;&nbsp;请输入正确的邮箱地址！');
                                $('#msg_Email').show();
                                return false;
                            }
                        }
                        //验证qq
                        if ($('#QQ').val() != '') {
                            if (!isLenNum($('#QQ').val(), 15)) {
                                $('#QQ').focus();
                                $('#msg_QQ').html('&nbsp;&nbsp;请输入正确的QQ号码！');
                                $('#msg_QQ').show();
                                return false;
                            }
                        }
                        //验证个人简介字数
                        if (!isLenStr1($('#Profile').val(), 200)) {
                            $('#Profile').focus();
                            $('#msg_Profile').html('&nbsp;&nbsp;字符超出限制，最多200字');
                            $('#msg_Profile').show();
                            return false;
                        }
                        var json_data = "";
                        $.post("/UserInfo/AjaxSubmit", {
                            "userType": 2,
                            "sex": getSex(),
                            "birth": getBirthday(),
                            "city": $("#City").val(),
                            "hometown": $("#HomeCity").val(),
                            "blood": $("#BloodType").val(),
                            "work": $("#Profession").val(),
                            "edu": $("#Education").val(),
                            "school": $("#School").val(),
                            "email": $("#Email").val(),
                            "otherTEL": $("#Tel_M").html(),
                            "QQ": $("#QQ").val(),
                            "hobby": getHobby(),
                            "otherHobby": $("#HobbyOther").val(),
                            "introduce": $("#Profile").val(),
                            "picture": getImg()
                        }, function (data) {
                            if (!!data) {
                                var dt = JSON.parse(data);
                                window.location.reload();
                                alert(dt.msg);
                            }
                        })
                    }
                })

                //加载下拉
                if ($('#Country').val() == '中国') {
                    getProvince();
                    getCityList('1');
                    getProvince1();
                    getCityList1('1');
                }
            })

            //得到性别选中项
            function getSex() {
                var chk = -1;
                var chkObjs = document.getElementsByName("Sex");
                for (var i = 0; i < chkObjs.length; i++) {
                    if (chkObjs[i].checked) {
                        chk = i;
                        break;
                    }
                }
                return chk;
            }

            //得到生日
            function getBirthday() {
                if ($("#Year").val() == "" || $("#Month").val() == "" || $("#Day").val() == "") {
                    return $('#BirthDay').html();
                }
                else {
                    return $("#Year").val() + "-" + $("#Month").val() + "-" + $("#Day").val();
                }
            }

            //得到爱好选择
            function getHobby() {
                var vl = "";
                var temp = document.getElementsByName("Hobby");
                for (var i = 0; i < temp.length; i++) {
                    if (temp[i].checked) {
                        if (vl == '') {
                            vl += temp[i].value;
                        }
                        else {
                            vl += '|' + temp[i].value;
                        }
                    }
                }
                return vl;
            }

            //得到头像图片
            function getImg() {
                var url = "";
                $("#fileList img").each(function () {
                    url = $(this).attr("url");
                });
                return url;
            }

            //得到生活照
            function getImg1() {
                var url = "";
                $("#fileList1 img").each(function () {
                    if (url == "") {
                        url += $(this).attr("url");
                    }
                    else {
                        url += "|" + $(this).attr("url");
                    }
                });
                return url;
            }

            //得到月列表
            function getMonth() {
                var year = $('#Year').val();
                if (year == '') {
                    return false;
                }
                var html = "";
                for (var i = 1; i <= 12; i++) {
                    html += "<option value='" + i + "'>" + i + "月</option>";
                }
                $('#Month').html($('#Month').html() + html);
            }

            //得到天列表
            function getDay() {
                var year = $('#Year').val();
                if (year == '') {
                    return false;
                }
                var month = $('#Month').val();
                var date = new Date(year, month, 0);
                var daycount = date.getDate();
                var html = "";
                for (var i = 1; i <= daycount; i++) {
                    html += "<option value='" + i + "'>" + i + "日</option>";
                }
                $('#Day').html($('#Day').html() + html);
            }

            //得到省份列表
            function getProvince() {
                $.get("/UserInfo/AjaxGetProvinceList", function (data) {
                    var html = '<option style="color:#aaa;" value="0">省</option>';
                    var id = '1';
                    for (var i = 0; i < data.length; i++) {
                        if (id == data[i].ProvinceId) {
                            html += '<option value="' + data[i].ProvinceId + '" selected="selected">' + data[i].Province + '</option>';
                        }
                        else {
                            html += '<option value="' + data[i].ProvinceId + '">' + data[i].Province + '</option>';
                        }
                    }
                    $('#Province').html(html);
                });
            }

            //onchange得到城市列表by省份id
            function getCityList(ProvinceId) {
                $.get("/UserInfo/AjaxGetCityList", {ProvinceId: ProvinceId}, function (data) {
                    var html = '<option style="color:#aaa;" value="0">市</option>';
                    var id = '1';
                    for (var i = 0; i < data.length; i++) {
                        if (id == data[i].CityId) {
                            html += '<option value="' + data[i].CityId + '" selected="selected">' + data[i].City + '</option>';
                        }
                        else {
                            html += '<option value="' + data[i].CityId + '">' + data[i].City + '</option>';
                        }
                    }
                    $('#City').html(html);
                });
            }

            //得到省份列表故乡
            function getProvince1() {
                $.get("/UserInfo/AjaxGetProvinceList", function (data) {
                    var html = '<option style="color:#aaa;" value="0">省</option>';
                    var id = '1';
                    for (var i = 0; i < data.length; i++) {
                        if (id == data[i].ProvinceId) {
                            html += '<option value="' + data[i].ProvinceId + '" selected="selected">' + data[i].Province + '</option>';
                        }
                        else {
                            html += '<option value="' + data[i].ProvinceId + '">' + data[i].Province + '</option>';
                        }
                    }
                    $('#HomeProvince').html(html);
                });
            }

            //onchange得到城市列表by省份id故乡
            function getCityList1(ProvinceId) {
                $.get("/UserInfo/AjaxGetCityList", {ProvinceId: ProvinceId}, function (data) {
                    var html = '<option style="color:#aaa;" value="0">市</option>';
                    var id = '1';
                    for (var i = 0; i < data.length; i++) {
                        if (id == data[i].CityId) {
                            html += '<option value="' + data[i].CityId + '" selected="selected">' + data[i].City + '</option>';
                        }
                        else {
                            html += '<option value="' + data[i].CityId + '">' + data[i].City + '</option>';
                        }
                    }
                    $('#HomeCity').html(html);
                });
            }

            //修改手机号码弹出框样式
            function editTel() {
                $('#div_Tel').hide();
                $('#div_Tel1').show();

                $('#edit_Tel').val($('#Tel_M').html());
                $('#ValidCode').val('');
                $('#hd_ValidCode').val('');
            }

            //取消修改手机弹出框样式
            function cancelEditTel() {
                $('#div_Tel1').hide();
                $('#div_Tel').show();

                $('#edit_Tel').val('');
                $('#ValidCode').val('');
                $('#hd_ValidCode').val('');
            }

            //获取验证码
            var IsOut = false;//验证码是否过期
            function getValidCode(obj) {
                //手机号为空验证
                if ($('#edit_Tel').val() == '') {
                    $('#edit_Tel').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请输入新手机号！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //手机号是否正确
                if (!isMobile($('#edit_Tel').val())) {
                    $('#edit_Tel').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请输入正确的手机号！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //验证手机号是否被占用
                var IsUsed = true;
                $.ajaxSettings.async = false;
                $.ajaxSetup({cache: false});
                $.get("/UserInfo/IsTelUsed", {Tel: $('#edit_Tel').val()}, function (data) {
                    var j = JSON.parse(data);
                    if (j.state) {
                        $('#edit_Tel').focus();
                        $('#msg_edit_Tel').html('&nbsp;&nbsp;您输入的手机号已存在！');
                        $('#msg_edit_Tel').show();
                        return false;
                    }
                    else
                        IsUsed = false;
                })
                if (!IsUsed) {
                    /*发送短信*/
                    $.ajaxSettings.async = false;
                    $.ajaxSetup({cache: false});
                    $.get('/UserInfo/SendValidCode', {mob: $('#edit_Tel').val()}, function (data) {
                        var State = JSON.parse(data).State;
                        if (State == 1) {
                            $('#hd_ValidCode').val(JSON.parse(data).Code);

                            /*设置样式*/
                            var name = $(obj).find("a").html();
                            var color = $(obj).find("a").css('color');
                            var i = 60;
                            $(obj).find("a").html(i + '秒');
                            $(obj).find("a").css('color', '#f4650a');
                            $(obj).removeAttr("onclick");
                            var inv = setInterval(function () {
                                if (i == 1) {
                                    $(obj).find("a").html(name);
                                    $(obj).find("a").css('color', color);
                                    $(obj).attr("onclick", "getValidCode(this)");
                                    clearInterval(inv);
                                }
                                else {
                                    i--;
                                    $(obj).find("a").html(i + '秒');
                                }
                            }, 1000);
                            /*设置验证码过期时间*/
                            var outtime = setInterval(function () {
                                IsOut = true;
                                clearInterval(outtime);
                            }, 120000);
                            /*验真手机号*/
                            $('#hd_ValidTel').val($('#edit_Tel').val());
                            alert('短信验证码已发送，请注意查收！');
                        }
                        else if (State == 2) {
                            alert('已达到验证次数上限，请稍后再试！');
                        } else if (State == 3) {
                            var Code = JSON.parse(data).Code;
                            alert(Code);
                        }
                        else {
                            alert('发送失败，请稍后重试！');
                        }

                    })
                }
            }

            //保存手机号
            function saveTel() {
                //手机号为空验证
                if ($('#edit_Tel').val() == '') {
                    $('#edit_Tel').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请输入新手机号！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //手机号是否正确
                if (!isMobile($('#edit_Tel').val())) {
                    $('#edit_Tel').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请输入正确的手机号！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //验证码是否为空
                if ($('#ValidCode').val() == '') {
                    $('#ValidCode').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请输入验证码！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //验证码是否过期
                if (IsOut) {
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;验证码已过期，有效期为2分钟，请重新获取！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                //验证手机不匹配
                if ($('#hd_ValidTel').val() != $('#edit_Tel').val()) {
                    $('#ValidCode').focus();
                    $('#msg_edit_Tel').html('&nbsp;&nbsp;请重新获取验证码！');
                    $('#msg_edit_Tel').show();
                    return false;
                }
                ////验证码是否正确
                //if ($('#ValidCode').val() != $('#hd_ValidCode').val()) {
                //    $('#ValidCode').focus();
                //    $('#msg_edit_Tel').html('&nbsp;&nbsp;手机验证码错误！');
                //    $('#msg_edit_Tel').show();
                //    return false;
                //}

                $.post('/UserInfo/ModifyTelM', {
                    Tel_M: $('#edit_Tel').val(),
                    MsgCode: $("#ValidCode").val()
                }, function (data) {
                    var msg = JSON.parse(data).msg;
                    var state = JSON.parse(data).state;
                    alert(msg);
                    if (state) {
                        $('#Tel_M').html($('#edit_Tel').val());//赋值
                        cancelEditTel();//恢复样式
                    } else {
                        return false;
                    }
                });
            }

            //点击其他爱好多选框框后显示其他爱好文本框
            function showHobbyOther() {
                var chkObjs = document.getElementById("Hobby6");
                if (chkObjs.checked) {
                    $('#HobbyOther').show();
                }
                else {
                    $('#HobbyOther').val('');
                    $('#HobbyOther').hide();
                }
            }


            //==========图片上传begin===========
            // 图片上传1
            jQuery(function () {
                var $ = jQuery,
                        $list = $('#fileList'),
                        // 优化retina, 在retina下这个值是2
                        ratio = window.devicePixelRatio || 1,

                        // 缩略图大小
                        thumbnailWidth = 100 * ratio,
                        thumbnailHeight = 100 * ratio,

                        // Web Uploader实例
                        uploader;

                // 初始化Web Uploader
                uploader = WebUploader.create({
                    fileSingleSizeLimit: 1024 * 1024,//字节限制(1MB)
                    fileVal: "Filedata",//name 名称
                    fileNumLimit: 1,//最多上传数量
                    // 自动上传。
                    auto: true,

                    // swf文件路径
                    swf: '../.././js/Uploader.swf',

                    // 文件接收服务端。
                    server: 'http://imghandler.muniao.com/ImageHandler/ImgUpload_ThumbHead',

                    // 选择文件的按钮。可选。
                    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                    pick: '#filePicker',

                    // 只允许选择文件，可选。
                    accept: {
                        title: 'Images',
                        extensions: 'gif,jpg,jpeg,bmp,png',
                        mimeTypes: 'image/*'
                    }
                });

                // 加入队列前触发(判断是否有头像)
                uploader.on('beforeFileQueued', function (file) {
                    if ($('#WU_FILE_a img').attr('url') != null && $('#WU_FILE_a img').attr('url') != '' && $('#WU_FILE_a img').attr('url') != undefined) {
                        return false;
                    }
                    else {
                        return true;
                    }
                });

                // 当有文件添加进来的时候
                uploader.on('fileQueued', function (file) {
                    var $li = $(
                            '<div id="' + file.id + '" class="file-item thumbnail">' +
                            '<img style="border:solid 1px #eee; padding:1px;">' +
                            '<div class="info"><dele style="cursor:pointer;line-height: 15px;" title="点击删除">删除</dele></div>' +
                            '</div>'
                            ),
                            $img = $li.find('img');
                    $list.append($li);

                    // 创建缩略图
                    uploader.makeThumb(file, function (error, src) {
                        if (error) {
                            $img.replaceWith('<span>不能预览</span>');
                            return;
                        }

                        $img.attr('src', src);
                    }, thumbnailWidth, thumbnailHeight);

                    //处理删除
                    $li.on("click", "dele", function () {
                        $('#' + file.id).remove();
                        uploader.removeFile(file);
                    });
                });

                // 文件上传过程中创建进度条实时显示。
                uploader.on('uploadProgress', function (file, percentage) {
                    var $li = $('#' + file.id),
                            $percent = $li.find('.progress span');

                    // 避免重复创建
                    if (!$percent.length) {
                        $percent = $('<p class="progress"><span></span></p>')
                                .appendTo($li)
                                .find('span');
                    }

                    $percent.css('width', percentage * 100 + '%');
                });

                // 文件上传成功，给item添加成功class, 用样式标记上传成功。
                uploader.on('uploadSuccess', function (file, response) {
                    if (response.ret == 6) {
                        uploader.removeFile(file);
                        alert(response.msg);
                        $("#" + file.id).remove();
                        return false;
                    }
                    $('#' + file.id).addClass('upload-state-done');
                    $('#' + file.id).find('img').attr('fullurl', response.fullurl).attr('url', response.url);
                });

                // 文件上传失败，现实上传出错。
                uploader.on('uploadError', function (file) {
                    var $li = $('#' + file.id),
                            $error = $li.find('div.error');

                    // 避免重复创建
                    if (!$error.length) {
                        $error = $('<div class="error"></div>').appendTo($li);
                    }

                    $error.text('上传失败');
                });

                // 完成上传完了，成功或者失败，先删除进度条。
                uploader.on('uploadComplete', function (file) {
                    $('#' + file.id).find('.progress').remove();
                });

            });

            // 图片上传2
            jQuery(function () {
                var $ = jQuery,
                        $list1 = $('#fileList1'),
                        // 优化retina, 在retina下这个值是2
                        ratio = window.devicePixelRatio || 1,

                        // 缩略图大小
                        thumbnailWidth = 100 * ratio,
                        thumbnailHeight = 100 * ratio,

                        // Web Uploader实例
                        uploader1;

                // 初始化Web Uploader
                uploader1 = WebUploader.create({
                    fileSingleSizeLimit: 1024 * 1024,//字节限制(1MB)
                    fileVal: "Filedata",//name 名称
                    fileNumLimit: 5,//最多上传数量
                    // 自动上传。
                    auto: true,

                    // swf文件路径
                    swf: '../.././js/Uploader.swf',

                    // 文件接收服务端。
                    server: 'http://imghandler.muniao.com/ImageHandler/ImgUpload_ThumbRoomGbk',

                    // 选择文件的按钮。可选。
                    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                    pick: '#filePicker1',

                    // 只允许选择文件，可选。
                    accept: {
                        title: 'Images',
                        extensions: 'gif,jpg,jpeg,bmp,png',
                        mimeTypes: 'image/*'
                    }
                });

                // 加入队列前触发(判断是图片大于5)
                uploader1.on('beforeFileQueued', function (file) {
                    var i = 0;
                    $('#fileList1 img').each(function () {
                        i++;
                    })

                    if (i == 5)
                        return false;
                    else return true;
                });

                // 当有文件添加进来的时候
                uploader1.on('fileQueued', function (file) {
                    var $li = $(
                            '<div id="' + file.id + '" class="file-item thumbnail" style="float:left;margin:3px;">' +
                            '<img style="border:solid 1px #eee; padding:1px;">' +
                            '<div class="info"><dele style="cursor:pointer;line-height: 15px;" title="点击删除">删除</dele></div>' +
                            '</div>'
                            ),
                            $img = $li.find('img');
                    $list1.append($li);

                    // 创建缩略图
                    uploader1.makeThumb(file, function (error, src) {
                        if (error) {
                            $img.replaceWith('<span>不能预览</span>');
                            return;
                        }

                        $img.attr('src', src);
                    }, thumbnailWidth, thumbnailHeight);

                    //处理删除
                    $li.on("click", "dele", function () {
                        $('#' + file.id).remove();
                        uploader1.removeFile(file);
                    });
                });

                // 文件上传过程中创建进度条实时显示。
                uploader1.on('uploadProgress', function (file, percentage) {
                    var $li = $('#' + file.id),
                            $percent = $li.find('.progress span');

                    // 避免重复创建
                    if (!$percent.length) {
                        $percent = $('<p class="progress"><span></span></p>')
                                .appendTo($li)
                                .find('span');
                    }

                    $percent.css('width', percentage * 100 + '%');
                });

                // 文件上传成功，给item添加成功class, 用样式标记上传成功。
                uploader1.on('uploadSuccess', function (file, response) {
                    if (response.ret == 6) {
                        uploader1.removeFile(file);
                        alert(response.msg);
                        $("#" + file.id).remove();
                        return false;
                    }
                    $('#' + file.id).addClass('upload-state-done');
                    $('#' + file.id).find('img').attr('fullurl', response.fullurl).attr('url', response.url);
                });

                // 文件上传失败，现实上传出错。
                uploader1.on('uploadError', function (file) {
                    var $li = $('#' + file.id),
                            $error = $li.find('div.error');

                    // 避免重复创建
                    if (!$error.length) {
                        $error = $('<div class="error"></div>').appendTo($li);
                    }

                    $error.text('上传失败');
                });

                // 完成上传完了，成功或者失败，先删除进度条。
                uploader1.on('uploadComplete', function (file) {
                    $('#' + file.id).find('.progress').remove();
                });
            });
            //==========图片上传end===========


        </script>

        <style>
            h4 {
                border-radius: 10px 10px 0 0;
            }

            select {
                height: 26px;
                border-color: #dcdcdc;
                color: #444444;
                border: solid 1px #dcdcdc;
            }

            input {
                height: 24px;
                border-color: #dcdcdc;
                color: #444444;
                padding-left: 5px;
            }

            textarea {
                border-color: #dcdcdc;
                color: #444444;
                padding: 5px;
            }

            .w_userzmbox {
                background-color: #fcf3ed;
                padding: 10px 25px;
                margin: 0px 10px 10px 10px;
                border-radius: 15px;
            }

            .w_userzmbox a:hover {
                text-decoration: underline;
            }

            .w_userzmtt {
                width: 100%;
                font: bold 14px/20px "宋体";
                color: #00864b;
            }

            .w_userzmtt img {
                vertical-align: middle;
                margin-right: 5px;
            }

            .w_userzmp {
                font: 12px/20px "宋体";
                color: #666;
            }

            .w_userzma {
                font: bold 12px/20px "宋体";
                color: #0084ff;
                text-decoration: none;
                cursor: pointer;
            }

            .w_zmscorebox {
                width: 600px;
                height: 100px;
                margin: 25px auto;
                position: relative;
                font: 12px/35px "microsoft yahei";
                padding-bottom: 20px;
            }

            .w_zmscorebox li {
                width: 50px;
                float: left;
                text-align: center;
                color: #fff;
            }

            .w_zmscorebox .red {
                background-color: #e63627;
            }

            .w_zmscorebox .orange {
                background-color: #f6860d;
            }

            .w_zmscorebox .yellow {
                background-color: #ebd31c;
            }

            .w_zmscorebox .greenlight {
                background-color: #8fd12a;
            }

            .w_zmscorebox .green {
                background-color: #58bf4e;
            }
        </style>

        <div class="userR">
            <div class="uinfoT">
                <input type="hidden">
                <h4 style="color:#444;">完善个人信息</h4>
            </div>
            <form name="uinfoform" id="uinfoform" method="post" style="background-color:#ffffff;">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr style="border-top:1px solid #dcdcdc; display:none">
                        <td width="100" height="40" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed">*</span>房东昵称：
                        </td>
                        <td width="655" height="40" align="left" valign="middle" class="uinfotd">
                            <input id="UserName" type="text" class="uinfoinput" value="夏冰" maxlength="20"
                                   onchange="$(&#39;#msg_UserName&#39;).hide();">
                            <span id="msg_UserName" class="aRed" style="display:none;"></span>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd"><span
                                class="aRed">*</span>手机号码：
                        </td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <div id="div_Tel">
                                <div id="Tel_M" class="fLeft mL5" style="font-weight:bolder;">18602727805</div>
                                <div class="fLeft mL10"><a href="javascript:void(0);" class="aBlue" onclick="editTel()">修改</a>
                                </div>
                            </div>
                            <div id="div_Tel1" style="display:none;">
                                <input id="edit_Tel" type="text" class="uinfoinput"
                                       onchange="$(&#39;#msg_edit_Tel&#39;).hide();" style="float:left;"
                                       value="18602727805" maxlength="11">
                                <input id="hd_ValidTel" type="hidden">
                                <input id="hd_ValidCode" type="hidden">
                                <input id="ValidCode" type="text" class="teltext mT15"
                                       onchange="$(&#39;#msg_edit_Tel&#39;).hide();"
                                       style="width:68px; margin-top:0;margin-left:5px;">
                                <div class="teltbtn mT15" style="margin-top:0;cursor:pointer;"
                                     onclick="getValidCode(this);"><a href="javascript:void(0);" class="aGray">获取验证码</a>
                                </div>
                                <div class="teltbtn mT15" style="margin-top:0;cursor:pointer;" onclick="saveTel();"><a
                                        href="javascript:void(0);" class="aGray">保存</a></div>
                                <span id="msg_edit_Tel" class="aRed" style="display:none;line-height:25px;"></span>
                                <div class="fLeft mL10"><a href="javascript:void(0);" class="aBlue"
                                                           style="line-height:25px;" onclick="cancelEditTel()">取消修改</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="40" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed">*</span>性别：
                        </td>
                        <td width="655" height="40" align="left" valign="middle" class="uinfotd">
                            <input id="Sex1" name="Sex" type="radio" value="男" checked="&#39;checked&#39;"
                                   style="margin-left:5px; vertical-align:middle;"><label for="Sex1"
                                                                                          style="cursor:pointer;">男</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Sex2" name="Sex" type="radio" value="女" style="vertical-align:middle;"><label
                                for="Sex2" style="cursor:pointer;">女</label>
                            <span id="msg_Sex" class="aRed"></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="40" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>出生日期：
                        </td>
                        <td width="655" height="40" align="left" valign="middle" class="uinfotd">
                            <span id="BirthDay" style="float:left; padding-left:5px; font-weight:bolder;"></span>&nbsp;
                            <select id="Year" name="year1" onchange="getMonth()">
                                <option style="color:#aaa;" value="">年</option>
                                <option value="2018">2018年</option>
                                <option value="2017">2017年</option>
                                <option value="2016">2016年</option>
                                <option value="2015">2015年</option>
                                <option value="2014">2014年</option>
                                <option value="2013">2013年</option>
                                <option value="2012">2012年</option>
                                <option value="2011">2011年</option>
                                <option value="2010">2010年</option>
                                <option value="2009">2009年</option>
                                <option value="2008">2008年</option>
                                <option value="2007">2007年</option>
                                <option value="2006">2006年</option>
                                <option value="2005">2005年</option>
                                <option value="2004">2004年</option>
                                <option value="2003">2003年</option>
                                <option value="2002">2002年</option>
                                <option value="2001">2001年</option>
                                <option value="2000">2000年</option>
                                <option value="1999">1999年</option>
                                <option value="1998">1998年</option>
                                <option value="1997">1997年</option>
                                <option value="1996">1996年</option>
                                <option value="1995">1995年</option>
                                <option value="1994">1994年</option>
                                <option value="1993">1993年</option>
                                <option value="1992">1992年</option>
                                <option value="1991">1991年</option>
                                <option value="1990">1990年</option>
                                <option value="1989">1989年</option>
                                <option value="1988">1988年</option>
                                <option value="1987">1987年</option>
                                <option value="1986">1986年</option>
                                <option value="1985">1985年</option>
                                <option value="1984">1984年</option>
                                <option value="1983">1983年</option>
                                <option value="1982">1982年</option>
                                <option value="1981">1981年</option>
                                <option value="1980">1980年</option>
                                <option value="1979">1979年</option>
                                <option value="1978">1978年</option>
                                <option value="1977">1977年</option>
                                <option value="1976">1976年</option>
                                <option value="1975">1975年</option>
                                <option value="1974">1974年</option>
                                <option value="1973">1973年</option>
                                <option value="1972">1972年</option>
                                <option value="1971">1971年</option>
                                <option value="1970">1970年</option>
                                <option value="1969">1969年</option>
                                <option value="1968">1968年</option>
                                <option value="1967">1967年</option>
                                <option value="1966">1966年</option>
                                <option value="1965">1965年</option>
                                <option value="1964">1964年</option>
                                <option value="1963">1963年</option>
                                <option value="1962">1962年</option>
                                <option value="1961">1961年</option>
                                <option value="1960">1960年</option>
                                <option value="1959">1959年</option>
                                <option value="1958">1958年</option>
                                <option value="1957">1957年</option>
                                <option value="1956">1956年</option>
                                <option value="1955">1955年</option>
                                <option value="1954">1954年</option>
                                <option value="1953">1953年</option>
                                <option value="1952">1952年</option>
                                <option value="1951">1951年</option>
                                <option value="1950">1950年</option>
                                <option value="1949">1949年</option>
                                <option value="1948">1948年</option>
                                <option value="1947">1947年</option>
                                <option value="1946">1946年</option>
                                <option value="1945">1945年</option>
                                <option value="1944">1944年</option>
                                <option value="1943">1943年</option>
                                <option value="1942">1942年</option>
                                <option value="1941">1941年</option>
                                <option value="1940">1940年</option>
                                <option value="1939">1939年</option>

                            </select>
                            <select id="Month" name="month1" onchange="getDay()">
                                <option style="color:#aaa;" value="">月</option>
                            </select>
                            <select id="Day" name="day1">
                                <option style="color:#aaa;" value="">日</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>所在城市：
                        </td>
                        <td width="655" height="30" align="left" valign="middle" class="uinfotd">
                            <select id="Country" name="country" style="margin-left:5px;">
                                <option value="中国" selected="selected">中国</option>

                            </select>
                            <select id="Province" onchange="getCityList(this.value)">
                                <option style="color:#aaa;" value="0">省</option>
                                <option value="1" selected="selected">北京</option>
                                <option value="2">河北</option>
                                <option value="3">山西</option>
                                <option value="4">内蒙古</option>
                                <option value="5">辽宁</option>
                                <option value="6">吉林</option>
                                <option value="7">黑龙江</option>
                                <option value="8">河南</option>
                                <option value="9">上海</option>
                                <option value="10">江苏</option>
                                <option value="11">浙江</option>
                                <option value="12">安徽</option>
                                <option value="13">福建</option>
                                <option value="14">江西</option>
                                <option value="15">山东</option>
                                <option value="16">云南</option>
                                <option value="17">西藏</option>
                                <option value="18">陕西</option>
                                <option value="19">甘肃</option>
                                <option value="20">青海</option>
                                <option value="21">宁夏</option>
                                <option value="22">新疆</option>
                                <option value="23">台湾</option>
                                <option value="24">香港</option>
                                <option value="25">澳门</option>
                                <option value="26">湖北</option>
                                <option value="27">湖南</option>
                                <option value="28">广东</option>
                                <option value="29">广西</option>
                                <option value="30">海南</option>
                                <option value="31">重庆</option>
                                <option value="32">四川</option>
                                <option value="33">贵州</option>
                                <option value="34">天津</option>
                                <option value="35">钓鱼岛</option>
                            </select>
                            <select id="City" onchange="$(&#39;msg_City&#39;).hide();">
                                <option style="color:#aaa;" value="0">市</option>
                                <option value="1" selected="selected">北京</option>
                            </select>
                            <span id="msg_City" class="aRed" style="display:none;"></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>故乡：
                        </td>
                        <td width="655" height="30" align="left" valign="middle" class="uinfotd">
                            <select id="HomeProvince" style="margin-left:5px;" onchange="getCityList1(this.value)">
                                <option style="color:#aaa;" value="0">省</option>
                                <option value="1" selected="selected">北京</option>
                                <option value="2">河北</option>
                                <option value="3">山西</option>
                                <option value="4">内蒙古</option>
                                <option value="5">辽宁</option>
                                <option value="6">吉林</option>
                                <option value="7">黑龙江</option>
                                <option value="8">河南</option>
                                <option value="9">上海</option>
                                <option value="10">江苏</option>
                                <option value="11">浙江</option>
                                <option value="12">安徽</option>
                                <option value="13">福建</option>
                                <option value="14">江西</option>
                                <option value="15">山东</option>
                                <option value="16">云南</option>
                                <option value="17">西藏</option>
                                <option value="18">陕西</option>
                                <option value="19">甘肃</option>
                                <option value="20">青海</option>
                                <option value="21">宁夏</option>
                                <option value="22">新疆</option>
                                <option value="23">台湾</option>
                                <option value="24">香港</option>
                                <option value="25">澳门</option>
                                <option value="26">湖北</option>
                                <option value="27">湖南</option>
                                <option value="28">广东</option>
                                <option value="29">广西</option>
                                <option value="30">海南</option>
                                <option value="31">重庆</option>
                                <option value="32">四川</option>
                                <option value="33">贵州</option>
                                <option value="34">天津</option>
                                <option value="35">钓鱼岛</option>
                            </select>
                            <select id="HomeCity">
                                <option style="color:#aaa;" value="0">市</option>
                                <option value="1" selected="selected">北京</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>血型：
                        </td>
                        <td width="655" height="30" align="left" valign="middle" class="uinfotd">
                            <select id="BloodType" style="margin-left:5px;">
                                <option style="color:#aaa;">--请选择--</option>
                                <option value="A型血" selected="&#39;selected&#39;">A型血</option>
                                <option value="B型血">B型血</option>
                                <option value="AB型血">AB型血</option>
                                <option value="O型血">O型血</option>
                                <option value="其他">其他</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>职业：
                        </td>
                        <td width="655" height="30" align="left" valign="middle" class="uinfotd">
                            <input id="Profession" type="text" class="uinfoinput" value="作家" maxlength="15">
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>教育：
                        </td>
                        <td width="655" height="30" align="left" valign="middle" class="uinfotd">
                            <select id="Education" style="margin-left:5px;">
                                <option style="color:#aaa;">--请选择--</option>
                                <option value="初中">初中</option>
                                <option value="高中">高中</option>
                                <option value="大专">大专</option>
                                <option value="本科">本科</option>
                                <option value="硕士">硕士</option>
                                <option value="博士" selected="&#39;selected&#39;">博士</option>
                            </select>
                            <input id="School" type="text" class="uinfoinput" value="北京大学" maxlength="25">
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">电子邮箱：</td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <input id="Email" type="text" class="uinfoinput" value="85800621@qq.com"
                                   onchange="$(&#39;#msg_Email&#39;).hide();">
                            <span id="msg_Email" class="aRed" style="display:none;"></span>
                        </td>
                    </tr>
                    <tr style="display:none">
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">备用电话：</td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <input id="Tel" type="text" class="uinfoinput">
                            <span id="msg_Tel" class="aRed"></span><span style="color:#f4650a;margin-left:5px;">温馨提示：用于木鸟短租客服与您联系使用</span>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">QQ：</td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <input id="QQ" type="text" class="uinfoinput" value="85800621"
                                   onchange="$(&#39;#msg_QQ&#39;).hide();">
                            <span id="msg_QQ" class="aRed" style="display:none;"></span>
                        </td>
                    </tr>
                    <tr style="display:none">
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">微信：</td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <input id="WeChat" type="text" class="uinfoinput">
                        </td>
                    </tr>
                    <tr>
                        <td width="100" height="40" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">
                            <span class="aRed"></span>爱好：
                        </td>
                        <td width="655" height="40" align="left" valign="middle" class="uinfotd">
                            <input id="Hobby1" name="Hobby" type="checkbox" value="音乐"
                                   style="vertical-align:middle;margin-left:5px;" checked="&#39;checked&#39;"><label
                                for="Hobby1" style="cursor:pointer;">音乐</label>&nbsp;&nbsp;
                            <input id="Hobby2" name="Hobby" type="checkbox" value="电影" style="vertical-align:middle;"
                                   checked="&#39;checked&#39;"><label for="Hobby2" style="cursor:pointer;">电影</label>&nbsp;&nbsp;
                            <input id="Hobby3" name="Hobby" type="checkbox" value="读书" style="vertical-align:middle;"
                                   checked="&#39;checked&#39;"><label for="Hobby3" style="cursor:pointer;">读书</label>&nbsp;&nbsp;
                            <input id="Hobby4" name="Hobby" type="checkbox" value="旅游" style="vertical-align:middle;"
                                   checked="&#39;checked&#39;"><label for="Hobby4" style="cursor:pointer;">旅游</label>&nbsp;&nbsp;
                            <input id="Hobby5" name="Hobby" type="checkbox" value="运动" style="vertical-align:middle;"
                                   checked="&#39;checked&#39;"><label for="Hobby5" style="cursor:pointer;">运动</label>&nbsp;&nbsp;
                            <input id="Hobby6" name="Hobby" type="checkbox" value="其他" style="vertical-align:middle;"
                                   onclick="showHobbyOther()"><label for="Hobby6" style="cursor:pointer;"
                                                                     onclick="showHobbyOther()">其他</label>&nbsp;&nbsp;
                            <input id="HobbyOther" type="text" class="uinfoinput" maxlength="50" style="display:none;">
                        </td>
                    </tr>
                    <tr>
                        <td height="30" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">个人介绍：</td>
                        <td height="30" align="left" valign="middle" class="uinfotd">
                            <div style="float:left;">
                                <div>
                                    <textarea id="Profile" class="uinfotextarea"
                                              style="margin-left:5px;border:1px solid #dcdcdc;resize: none; height:80px;"
                                              onchange="$(&#39;#msg_Profile&#39;).hide();">暂不介绍</textarea>
                                    <span id="msg_Profile" class="aRed" style="display:none;"></span>
                                </div>
                                <div style="float:left; color:#f4650a; margin-left:5px;">温馨提示：可输入200字</div>
                            </div>
                            <div class="clear"></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="" align="right" valign="middle" bgcolor="#f5f5f5" class="uinfotd">个人头像：</td>
                        <td height="" align="left" valign="middle" class="uinfotd">
                            <div style="float:left;">
                                <div>
                                    <!--用来存放item-->
                                    <div id="fileList" class="uploader-list" style="float:left;padding:5px;">

                                    </div>
                                    <div id="filePicker" style="float:left;margin-top:15px;margin-left:-5px;"
                                         class="webuploader-container">
                                        <div class="webuploader-pick">选择图片</div>
                                        <div id="rt_rt_1cfmmatut1evn1ume50eet01cgi1"
                                             style="position: absolute; top: 0px; left: 0px; width: 78px; height: 60px; overflow: hidden; bottom: auto; right: auto;">
                                            <input type="file" name="file" class="webuploader-element-invisible"
                                                   multiple="multiple" accept="image/*"><label
                                                style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
                                        </div>
                                    </div>
                                </div>
                                <div style="float:left; color:#f4650a; margin-left:5px;">
                                    温馨提示：请上传1MB以内正方形.jpg格式图片，可上传1张。
                                </div>
                            </div>
                            <div class="clear"></div>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </form>
            <style>
                .userinfo_tijiao {
                    border-radius: 2px;
                    font-size: 16px;
                    width: 133px;
                    height: 36px;
                    line-height: 36px;
                    background-color: #FF5C2E;
                    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
                    display: inline-block;
                    text-align: center;
                    cursor: pointer;
                    color: #fff;
                    margin-top: 30px;
                    margin-bottom: 30px;
                }
            </style>
            <div style="text-align:center;">
                <a id="Submit" class="userinfo_tijiao">保存设置</a>
            </div>
        </div>

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
                <p>北京爱游易科技有限公司</p>
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
<!--document.write(unescape("%3Cscript src='https://webim3.muniao.com/webim2/?action=boot&utype=2' type='text/javascript'%3E%3C/script%3E"));-->
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
<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js(1).下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>