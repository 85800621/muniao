<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://user2.muniao.com/Order/Index?utp=2&type=8 -->
<html xmlns="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/html" lang="en">
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
            background: url(/content/images/centerClose.png);
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
<!--href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#close"-->
<!--style="display: none;"><em class="ui-icon ui-icon-close">关闭</em></a>-->
<!--<div id=":tabCount" class="webim-window-tab-count">-->
<!--0-->
<!--</div>-->
<!--<em id=":tabIcon" class="webim-icon webim-icon-buddy"></em>-->
<!--<h4 id=":tabTitle">联系人[1/1]</h4>-->
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
<!--联系人[1/1]</h4>-->
<!--<div id=":subHeader" class="webim-window-subheader">-->
<!--<div style="display: block;">-->
<!--<div id=":user" class="webim-user">-->
<!--<a id=":userPic" class="webim-user-pic ui-corner-all ui-state-active"-->
<!--href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#"><img-->
<!--width="50" height="50" defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"-->
<!--class="ui-corner-all"-->
<!--src="${staticRoot}/images/d590d8e4b87c4c65922d653c3812d4a620180604093556672.jpg_150_150.jpg"></a>-->
<!--<div class="webim-user-show"><h4><a id=":userShowTrigger"-->
<!--href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#show"><strong-->
<!--id=":userNick">嘉利学府</strong><span id=":userShow"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</span><em-->
<!--class="ui-icon ui-icon-triangle-1-s">show_status_list</em></a>-->
<!--</h4>-->
<!--<p id=":userShowList" class="ui-state-active ui-corner-all"-->
<!--style="display: none;">-->
<!--<a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#available"-->
<!--class="webim-user-show-available"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</a>-->
<!--<a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#dnd"-->
<!--class="webim-user-show-dnd"><em-->
<!--class="webim-icon webim-icon-dnd">忙碌</em>忙碌</a>-->
<!--<a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#away"-->
<!--class="webim-user-show-away"><em-->
<!--class="webim-icon webim-icon-away">离开</em>离开</a>-->
<!--<a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#invisible"-->
<!--class="webim-user-show-invisible"><em-->
<!--class="webim-icon webim-icon-invisible">隐身</em>隐身</a>-->
<!--<a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#unavailable"-->
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
<!--class="ui-icon ui-icon-triangle-1-s"></em><span>好友[1/1]</span>-->
<!--</h4>-->
<!--<hr class="webim-line ui-state-default">-->
<!--<ul>-->
<!--<li title="" class="webim-buddy-available"><a-->
<!--href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#url"-->
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
<!--href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#close"-->
<!--style="display: none;"><em class="ui-icon ui-icon-close">关闭</em></a>-->
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
        src="/Content/images/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox"
   style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img
        src="/Content/images/firefox_Icon.jpg"/></a>
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
            <a class="newa_sina" href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8#"></a>
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
                <li id="li3" class="usidebarlibg1"><img src="${staticRoot}/images/folders.gif" width="18" height="18"
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
                <li id="li13" class="usidebarlibg"><img src="${staticRoot}/images/user_edit.gif" width="18" height="18"
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


        <script src="${staticRoot}/images/Comm.js.下载"></script>
        <script type="text/javascript">
            //左侧菜单选中样式
            $('#li3').attr('class', 'usidebarlibg1');
        </script>
        <script type="text/javascript">
            $(function () {
                refuse_order();
            });

            //拒绝订单原因
            function refuse_order() {
                $.post("/Order/refuse_order", function (json) {
                    var refuse = JSON.parse(json).data;
                    if (refuse.length > 0) {
                        for (var i = 0; i < refuse.length; i++) {
                            $("#isdeal_select").append("<option value='" + refuse[i].type + "'>" + refuse[i].title + "</option>");
                        }
                    }
                });
            }

            /*********************/
            function pageWidth() {
                return window.innerWidth != null ? window.innerWidth : document.documentElement && document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body != null ? document.body.clientWidth : null;
            }

            // calculate the current window height //
            function pageHeight() {
                return window.innerHeight != null ? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null ? document.body.clientHeight : null;
            }

            // calculate the current window vertical offset //
            function topPosition() {
                return typeof window.pageYOffset != 'undefined' ? window.pageYOffset : document.documentElement && document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop ? document.body.scrollTop : 0;
            }

            // calculate the position starting at the left of the window //
            function leftPosition() {
                return typeof window.pageXOffset != 'undefined' ? window.pageXOffset : document.documentElement && document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft ? document.body.scrollLeft : 0;
            }

            function dialog_postion() {
                var _s = {}, dialog = S("cal_dialog").obj;
                if (!dialog) {
                    return false;
                }
                if (dialog.style.display != "block") {
                    return false;
                }
                _s.width = pageWidth();
                _s.height = pageHeight();
                _s.left = leftPosition();
                _s.top = topPosition();
                _s.dialogwidth = dialog.offsetWidth;
                _s.dialogheight = dialog.offsetHeight;
                if (_s.height > _s.dialogheight) {
                    _s.topposition = _s.top + (_s.height) / 2 - (_s.dialogheight) / 2;
                }
                else {
                    _s.topposition = _s.top;
                }
                if (_s.width > _s.dialogwidth) {
                    _s.leftposition = _s.left + (_s.width) / 2 - (_s.dialogwidth) / 2;
                }
                else {
                    _s.leftposition = _s.left;
                }
                _s.topposition1 = _s.top + (_s.height / 3) - (_s.dialogheight / 2);
                _s.leftposition1 = _s.left + (_s.width / 2) - (_s.dialogwidth / 2);
                dialog.style.top = _s.topposition + "px";
                dialog.style.left = _s.leftposition + "px";
            }

            //拒绝订单
            function ordercanpay_jujue(a) {
                if (!a) {
                    return false;
                }
                var orderid = $(a).data("orderid") || "";
                var ordernum = $(a).data("ordernum") || "";
                if (!ordernum || !orderid) {
                    return false;
                }
                //var isdeal_op = $("#isdeal_select").tagname("option");
                //for (var i = 0; i < isdeal_op.length; i++) {
                //    S(isdeal_op[i]).attr("selected", "");
                //    if (i == 0) { $(isdeal_op[i]).attr("selected", true); }
                //}
                $("#isdeal_ordernum").html(ordernum);
                $("#isdeal_orderid").val(orderid);
                $("#cal_dialog").show();
                $("#isdeal_dislog").show();
                dialog_postion();
            }

            $("body").ready(function () {
                //拒绝订单
                var jujues = $("a[name=jujue]");
                for (var i = 0; i < jujues.length; i++) {
                    $(jujues[i]).on("click", function (e) {
                        e = e || window.event;
                        var a = e.target || e.srcElement;
                        ordercanpay_jujue(a);
                    })
                }
                $(window).on("scroll", function () {
                    dialog_postion();
                });
                $(window).on("resize", function () {
                    dialog_postion();
                });
                //确定拒绝的点击事件
                $("#isdeal_submit").on("click", function (e) {
                    var isdeal_ordernum = $("#isdeal_ordernum").html() || '';
                    var isdeal_orderid = $("#isdeal_orderid").val() || '';
                    var isdeal_select = $("#isdeal_select").val() || "";
                    if (isdeal_orderid == '' || isdeal_ordernum == '' || isdeal_ordernum == '0') {
                        $("#isdeal_dislog").hide();
                        $("#cal_dialog").hide();
                        return false;
                    }
                    var select = $('#isdeal_select option:selected').val();
                    if (select == null || select == "") {
                        alert("请选择拒绝原因");
                        $("#isdeal_select").focus();
                        return false;
                    }
                    //location.href = "/Order/RejectOrder?orderid=" + isdeal_orderid + "&isdeal=" + isdeal_select + "";
                    //AjaxJson("/Order/RejectOrder?orderid=" + isdeal_orderid + "&isdeal=" + isdeal_select + "");
                    $.post("/Order/refuse_order_save", {
                        order_id: isdeal_orderid,
                        reason: "",
                        reason_type: isdeal_select
                    }, function (json) {
                        if (json.status > 0) {
                            alert(json.message);
                            return false;
                        } else {
                            $("#isdeal_dislog").hide();
                            $("#cal_dialog").hide();
                            location.reload();
                        }
                    });

                });
                $(".close-Register").on("click", function () {
                    $("#cal_dialog").hide();
                });
                S("body").on("click", function (e) {
                    e = e || window.event;
                    var a = e.target || e.srcElement;
                    var noeve = false;
                    for (var i = 0; i < 10; i++) {
                        if (a == null) {
                            break;
                        }
                        //console.log(a);
                        if ($(a).get(0).className && /(.)*(noeve(.)*)$/.test(S(a).className())) {
                            noeve = true;
                            break;
                        }
                        if (a == document.body) {
                            break;
                        }
                        a = a.parentNode;
                    }
                    if (noeve == false) {
                        S("starttime").hide();
                        S("cal_dialog").hide();
                    }
                });
                $(".user_banner_radius li").on("mouseover", function () {
                    $('#user_banner_pic').animate({
                        "left": -$(this).index() * pic_list.width()
                    });
                    $(this).addClass("active").siblings().removeClass("active");
                    clearInterval(timer);
                });
                //$(".cancelbooking").click(function () {
                //    var id = $(this).attr("data-id");
                //    $.ajax({
                //        "url": "api_2016.asp?act=cancelbooking&orderid=" + id + "&_=" + Math.random() + "",
                //        "type": "get",
                //        "dataType": "json",
                //        "data": "",
                //        "success": function (json) {
                //            if (json.status == 0) {
                //                alert(json.message);
                //            }
                //            else {
                //                var content = json.content || json.content500 || json.message || "";
                //                if (json.content || json.content500) {
                //                    //alert(json.content||json.content500)
                //                }
                //                alert(content);
                //            }
                //        },
                //        "error": function (e) {
                //            alert("error");
                //        }
                //    });

                //});
            });
            /*********************/
        </script>
        <style>
            html > body .myordertd {
                border-right: 1px solid #f0f0f0;
                border-bottom: 1px solid #f0f0f0;
            }
        </style>
        <link href="${staticRoot}/images/OrderIndex.css" rel="stylesheet">
        <div class="myorder">
            <div class="userR">
                <div class="myordercon">
                    <ul>
                        <li><a href="http://user2.muniao.com/Order/Index?act=order&amp;type=8&amp;utp=2">全部订单</a></li>
                        <li><a href="http://user2.muniao.com/Order/Index?act=order&amp;type=1&amp;utp=2">已付款</a></li>
                        <li><a href="http://user2.muniao.com/Order/Index?act=order&amp;type=6&amp;utp=2">待入住</a></li>
                        <li><a href="waitcommitorder/4/2">未付款</a></li>
                        <li><a href="http://user2.muniao.com/Order/Index?act=order&amp;type=3&amp;utp=2">退款</a></li>
                        <!--<li><a href="?act=order&type=4">收取订金</a></li>-->
                        <li><a href="waitcommitorder/6/2">等待确认</a></li>
                        <li><a href="http://user2.muniao.com/Order/Index?act=order&amp;type=5&amp;utp=2">取消订单</a></li>
                        <div class="clear"></div>
                    </ul>
                    <table width="756" border="0" cellspacing="0" cellpadding="0" style="border-left: 1px solid #ddd;">
                        <tbody>
                        <tr>
                            <td width="202" height="30" align="center" valign="middle" class="myordertd1">房间</td>
                            <td width="140" height="30" align="center" valign="middle" class="myordertd1">订单编号</td>
                            <td width="141" height="30" align="center" valign="middle" class="myordertd1">房款</td>
                            <td width="111" height="30" align="center" valign="middle" class="myordertd1">时间</td>
                            <td width="84" height="30" align="center" valign="middle" class="myordertd1">状态</td>
                            <td width="84" height="30" align="center" valign="middle" class="myordertd1">房东/房客电话</td>
                            <td width="77" height="30" align="center" valign="middle" class="myordertd2">操作</td>
                        </tr>
                        <tr>
                            <#list orders as orders>
                            <td height="205" align="center" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd;">
                                <a href="http://www.muniao.com/home/detail?id=108419" target="_blank"><img
                                        src="${staticRoot}/images/91b99e01a5194868be377831142e687420170519164942639.jpg_275_173.jpg"
                                        width="175" height="128" class="myorderimgbg"></a>
                                <p>房间编号：${orders.orderDetail.room.roomid}</p>
                                <p>
                                    <a href="http://www.muniao.com/home/detail?id=108419" target="_blank" class="aBlue">${orders.orderDetail.room.title}
                                       </a>
                                </p>
                            </td>
                            <td height="205" align="center" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd;">
                                ${orders.orderId}
                            </td>
                            <td width="151" height="205" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; padding: 10px; padding-top: 0px; padding-bottom: 0px;">
                                <p>总房款：￥${orders.orderDetail.totalPrice}</p>
                                <p>总订金：￥${orders.orderDetail.totalDeposit}</p>
                                <p>实付：￥${orders.orderDetail.actuallyPaid}</p>
                                <p>需到店支付：￥${orders.orderDetail.toShopPayment}</p>
                            </td>
                            <td width="111" height="205" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; padding: 10px; padding-top: 0px; padding-bottom: 0px;">
                                <p>入住时间：</p>
                                <p>${orders.orderDetail.checkInTime?date}</p>
                                <p>退房时间：</p>
                                <p>${orders.orderDetail.departureTime?date}</p>
                            </td>
                            <td height="205" align="center" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd;"><span
                                    class="aGreen">

                                   <#switch orders.orderStatus>
                                       <#case "1">
                                            已完成
                                            <#break>
                                       <#case "4-6">
                                            未付款<br>
                                            未确认
                                            <#break>
                                       <#case "3">
                                            待入住
                                            <#break>
                                       <#case "2-6">
                                            已付款<br>
                                            未确认
                                            <#break>
                                       <#case "4">
                                            未付款<br>
                                            已确认
                                           <#break>
                                       <#case "7">
                                            已取消
                                            <#break>
                                   </#switch>
                                <br></span></td>
                            <td height="205" align="center" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd;"></td>
                            <td width="77" height="205" align="center" valign="middle"
                                style="border-right: 1px solid #ddd; border-bottom: 1px solid #ddd;">
                            <#if orders.orderBuyerId == currentUserId>
                                <#if orders.orderStatus?contains("4")>
                                    <a href="payment/test/${orders.orderDetail.room.title}/${orders.orderId}"
                                            class="aBlue" >付款</a><br><br>
                                </#if>
                            </#if>
                                <a href="http://www.muniao.com/home/detail?id=108419" class="aBlue"
                                   target="_blank">再次预订</a><br><br>
                            <#if orders.orderSellerId== currentUserId>
                                <#if orders.orderStatus?contains("6")>
                                <a href="landlordcommit/1/4-6/2" class="aBlue">确认</a><br><br>
                                </#if>
                            </#if>
                                <a onclick="orderdelete(&#39;381521&#39;)" class="aBlue">删除订单</a><br><br>
                                <a href="orderdetail/${orders.orderDetail.orderDetailId}" class="aBlue">详情&gt;&gt;</a>
                                <br><br>
                            </td>
                            </#list>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="upage666">
                    <!--分页开始-->
                    <link href="${staticRoot}/images/jqPaginator.css" rel="stylesheet">
                    <script src="${staticRoot}/images/jqPaginator.js.下载"></script>
                    <style>                .arrow2 {
                        border-left: 5px dashed transparent;
                        border-bottom: 5px dashed transparent;
                        border-top: 5px dashed transparent;
                        border-right: 5px solid #ccc;
                    }            </style>
                    <script>                var key = false;
                    $(function () {
                        $("#demo1").jqPaginator({
                            totalPages: 1,
                            visiblePages: 1,
                            currentPage: 1,
                            first: '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
                            prev: '<li class="prev"><a href="javascript:void(0);"><i class="arrow arrow2"></i>上一页</a></li>',
                            next: '<li class="next"><a href="javascript:void(0);">下一页<i class="arrow arrow3"></i></a></li>',
                            last: '<li class="last"><a href="javascript:void(0);">末页</a></li>',
                            page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
                            onPageChange: function (n) {
                                if (key) location.href = '/Order/index?type=8&rows=5&utp=2&page=' + n;
                                if (!key) key = true;
                            }
                        });
                    })            </script>
                    <div style="text-align:center;">
                        <ul id="demo1" class="pagination">
                            <li class="first disabled" jp-role="first" jp-data="1"><a href="javascript:void(0);">第一页</a>
                            </li>
                            <li class="prev disabled" jp-role="prev" jp-data="0"><a href="javascript:void(0);"><i
                                    class="arrow arrow2"></i>上一页</a></li>
                            <li class="page active" jp-role="page" jp-data="1"><a href="javascript:void(0);">1</a></li>
                            <li class="next disabled" jp-role="next" jp-data="2"><a href="javascript:void(0);">下一页<i
                                    class="arrow arrow3"></i></a></li>
                            <li class="last disabled" jp-role="last" jp-data="1"><a href="javascript:void(0);">末页</a>
                            </li>
                        </ul>
                    </div>
                    <!--分页结束-->
                    <div class="clear"></div>
                </div>
                <style>
                    .w_usersqtkbox {
                        width: 580px;
                        border: 1px solid #ccc;
                        background-color: #fff;
                        position: absolute;
                        color: #333;
                        left: 33%;
                        top: 10%;
                        display: none;
                    }

                    .w_usersqtkbox .fleft {
                        float: left;
                    }

                    .w_usersqtkbox .fright {
                        float: right;
                        margin-top: 7px;
                    }

                    .w_usersqtkbox .ml40 {
                        margin-left: 145px;
                    }

                    .w_usersqtkbox .ml10 {
                        margin-left: 10px;
                    }

                    .w_usersqtkbox .mt20 {
                        margin-top: 20px;
                    }

                    .w_usersqtkfont14 {
                        font: 14px/24px "microsoft yahei";
                    }

                    .w_usersqtkfont16 {
                        font: 16px/28px "microsoft yahei";
                    }

                    .w_usersqtktt {
                        width: 560px;
                        height: 35px;
                        background-color: #f2f2f2;
                        padding: 0 10px;
                        line-height: 35px;
                        font-weight: bold;
                    }

                    .w_usersqtktt img {
                        width: 20px;
                        height: 20px;
                        vertical-align: middle;
                    }

                    .w_usersqtknr {
                        width: 520px;
                        padding: 20px 30px;
                    }

                    .w_usersqtknrtt {
                        width: 100%;
                        margin-bottom: 30px;
                    }

                    .w_usersqtkline {
                        width: 100%;
                        margin-bottom: 10px;
                    }

                    .w_usersqtkblock {
                        width: 500px;
                        background-color: #ffeae5;
                        padding: 10px;
                        margin-top: 20px;
                    }

                    .w_usersqtkblock ul {
                        width: 100%;
                        list-style: none;
                    }

                    .w_usersqtkblock ul li {
                        width: 100%;
                        margin: 10px 0;
                    }

                    .w_usersqtkblock ul li span {
                        float: right;
                        color: red;
                    }

                    .w_usersqtkblock ul li p {
                        color: #666;
                        font-size: 12px;
                    }

                    .w_usersqtkblock ul hr {
                        border: 0;
                        border-bottom: 1px solid #f0d5ce;
                    }

                    .w_usersqtkbutt {
                        width: 80px;
                        height: 35px;
                        -moz-border-radius: 3px;
                        -o-border-radius: 3px;
                        -webkit-border-radius: 3px;
                        border-radius: 3px;
                        text-align: center;
                        color: #fff;
                        line-height: 35px;
                        background-color: #f30;
                        margin: 20px 0 30px 0;
                        display: block;
                        text-decoration: none;
                    }

                    .w_usersqtkbutt2 {
                        background-color: #888;
                    }

                    .w_usersqtkbutt:hover {
                        background-color: red;
                    }

                    .close-Register {
                        float: right;
                        display: inline;
                        width: 16px;
                        height: 16px;
                        background: url(/Content/fangdong/image/register_dialogclose.png) no-repeat left top;
                        margin: 19px -18px 0 0;
                    }
                </style>
                <script>
                    $(document).ready(function () {//$(".w_usersqtkbox").offset().top;
                        var menuYloc = $(".w_usersqtkbox").height(),
                                ksheight = $(window).height();
                        var offsetTop = (ksheight / 2) - (menuYloc / 2) + $(window).scrollTop() + "px";
                        $(".w_usersqtkbox").animate({top: offsetTop}, {duration: 600, queue: false});
                        $(window).scroll(function () {
                            var menuYloc = $(".w_usersqtkbox").height(),
                                    ksheight = $(window).height();
                            var offsetTop = (ksheight / 2) - (menuYloc / 2) + $(window).scrollTop() + "px";
                            $(".w_usersqtkbox").animate({top: offsetTop}, {duration: 600, queue: false});
                        });
                        $(".drawback_hide").click(function () {
                            $("#drawback_orderid").val("");
                            $("#order_refundtype").val("");
                            $(".w_usersqtkbox").hide();
                        });
                        $("#drawback_submit").click(function () {
                            var orderid = $("#drawback_orderid").val(),
                                    drawback_reason = $("#drawback_reason").val(),
                                    refund_way = $("#refund_way").val();
                            if (!orderid) {
                                $(".w_usersqtkbox").hide();
                                return;
                            }
                            if (order_refundtype.value == "5" || order_refundtype.value == "6") {
                                if (!drawback_reason) {
                                    alert("请选择退款原因！");
                                    return;
                                }
                                if (!refund_way) {
                                    alert("请选择退款方式！");
                                    return;
                                }
                            }
                            else {

                            }
                            $.getJSON("/order/orderbackpay?orderid=" + orderid + "&tentative=0&refund_way=" + refund_way + "&drawbackreason=" + drawback_reason + "&_r=" + (new Date().getTime()), function (json) {
                                if (json.Code == "1") {
                                    $("#drawback_orderid").val("");
                                    $("#order_refundtype").val("");
                                    $(".w_usersqtkbox").hide();
                                    alert(json.Message);
                                    location.reload();
                                } else {
                                    alert(json.Message || "");
                                }
                            });
                        });

                        function load_drawback(json) {
                            var refund_way = $("#refund_way").val()
                            var _html = '<ul>';
                            //<li>退款金额<span>￥'+json.drawback_obj.drawback_total+'</span></li><hr><li>退款明细<span>￥12.0</span>
                            if (json.drawback_penalty != "0.00") {
                                _html += "<li>违约金<span>￥" + json.drawback_penalty + "</span></li><hr>";
                            }
                            if (json.drawback_insurance != "0.00") {
                                _html += "<li>可退保险费<span>￥" + json.drawback_insurance + "</span></li><hr>";
                            }
                            _html += '<li>退还房客金额<span>￥' + json.drawback_total + '</span>';
                            _html += '<p class="w_usersqtkfont14">';
                            if (json.drawback_integral != "0.00") {
                                _html += "可退积分：" + Math.round(Number(json.drawback_integral) * 100) + "个";
                            }
                            if (refund_way == "1") {
                                if (json.drawback_accounts_amount != "0.00") {
                                    _html += "可退租币：￥" + json.drawback_accounts_amount + "";
                                }
                            }
                            else {
                                if (json.drawback_accounts != "0.00") {
                                    _html += "可退租币：￥" + json.drawback_accounts + "";
                                }
                                if (json.drawback_amount != "0.00") {
                                    _html += "可退现金：￥" + json.drawback_amount + "";
                                }
                            }
                            _html += '</p>';
                            _html += '</li>';
                            _html += "</p></li></ul>";
                            $("#drawback_des").html(_html);
                        }

                        function reload_drawback() {
                            var drawback_json_val = $("#drawback_json").val(), drawback_json = null;
                            if (drawback_json_val) {
                                try {
                                    drawback_json = JSON.parse(drawback_json_val)
                                }
                                catch (e) {
                                }
                            }
                            if (drawback_json && drawback_json.status == 1) {
                                load_drawback(drawback_json);
                            }
                        }

                        reload_drawback();
                        $("#refund_way").on("change", reload_drawback);
                        $(".drawback_b").click(function (e) {
                            var orderid = $(this).data("orderid"),
                                    refundtype = $(this).data("refundtype"),
                                    drawback_reason = $("#drawback_reason").val(),
                                    refund_way = $("#refund_way").val();
                            console.log(refundtype);
                            $("#drawback_orderid").val(orderid);
                            $("#order_refundtype").val(refundtype);
                            $("#drawback_way").hide();
                            $("#drawback_Reason").hide();
                            $(".w_usersqtkbox").show();
                            //if (refundtype == "5" || refundtype == "6") {
                            //    $(".w_usersqtkbox").show();
                            //    $.getJSON("/api_2016.asp?act=drawback&id=" + orderid + "&tentative=1&refund_way=" + refund_way + "&reason=" + drawback_reason + "&_r=" + (new Date().getTime()), function (json) {
                            //        $("#drawback_json").val(JSON.stringify(json));
                            //        if (json.status == 1) {
                            //            $("#drawback_orderid").val(orderid);
                            //            $("#order_refundtype").val(refundtype);
                            //            $("#drawback_way").show();
                            //            $("#drawback_Reason").show();
                            //            load_drawback(json);
                            //            $(".w_usersqtkbox").show();
                            //        }
                            //        else {
                            //            $("#drawback_way").show();
                            //            $("#drawback_Reason").show();
                            //            $(".w_usersqtkbox").hide();
                            //            alert(json.message || "该订单不支持退款！");
                            //        }
                            //        ;
                            //    })
                            //}
                            //else {
                            //    $("#drawback_orderid").val(orderid);
                            //    $("#order_refundtype").val(refundtype);
                            //    $("#drawback_way").hide();
                            //    $("#drawback_Reason").hide();
                            //    $(".w_usersqtkbox").show();
                            //}
                        });
                        //$("input[name='drawback_orderid']").val()
                    });
                </script>
            </div>
            <div class="uhint">
                <h4><img src="${staticRoot}/images/bghint.jpg" width="16" height="16" align="absmiddle" class="mR5">温馨提示：</h4>
                <div class="clear"></div>
                <p>当房客与房东确认有房，并且在线支付订金后，房东不得单方面无理由取消订单，否则给予房间下线的处理。特殊情况必须退房的，请给房客安排合适房间居住。</p>
            </div>
            <div class="w_usersqtkbox" style="display: none; top: 175px;">
                <div class="w_usersqtktt w_usersqtkfont14">申请退款<a href="javascript:void(0);"
                                                                  class="fright drawback_hide"><img
                        src="${staticRoot}/images/APP_06.png"></a></div>
                <div class="w_usersqtknr">
                    <div class="w_usersqtknrtt w_usersqtkfont16">您确定要申请退款吗？确定后订单不可恢复。</div>
                    <div style="color:#ff9180;width:100%;margin-bottom:10px;margin-top:-9px;display:none;">
                        尊敬的用户您好，现在正处于春节休假期间，您的退款订单将于2月22日开始处理，请您谅解！如有疑问请联系木鸟客服！祝您新年愉快！
                    </div>
                    <!--<form>-->
                    <div style="display:none;">
                        <input name="drawback_orderid" id="drawback_orderid" value=""><input name="order_refundtype"
                                                                                             id="order_refundtype"
                                                                                             value=""><input
                            name="drawback_json" id="drawback_json" value="">
                    </div>
                    <div class="w_usersqtkline w_usersqtkfont14" id="drawback_Reason">
                        退款原因：
                        <select name="drawback_reason" id="drawback_reason">
                            <option value="1">行程改变</option>
                            <option value="2">信息填写有误重新预订</option>
                            <option value="3">找到更好的房子</option>
                            <option value="4">房间实际情况与描述不符</option>
                            <option value="5">无法联系房东</option>
                            <option value="6">房东涨价</option>
                            <option value="7">房东服务态度差</option>
                            <option value="8">房东说没房了</option>
                            <option value="9">设施故障无法继续入住</option>
                            <option value="10">其他原因</option>
                        </select>
                    </div>
                    <div class="w_usersqtkline w_usersqtkfont14" id="drawback_way">
                        退款方式：
                        <select name="refund_way" id="refund_way">
                            <option value="1">全部退回租币</option>
                            <option value="2">原路返回</option>
                        </select>
                    </div>
                    <div class="w_usersqtkblock w_usersqtkfont16" id="drawback_des">
                        <ul></ul>
                    </div>
                    <div class="w_usersqtkline">
                        <a class="w_usersqtkbutt w_usersqtkfont16 ml40 fleft" id="drawback_submit"
                           href="javascript:void(0);">确认</a>
                        <a class="w_usersqtkbutt w_usersqtkbutt2 w_usersqtkfont16 ml10 fleft drawback_hide"
                           href="javascript:void(0);">取消</a>
                    </div>
                    <!--</form>-->
                </div>
            </div>
            <div id="cal_dialog" class="cal_dialog noeve display"
                 style="position: absolute; top: 783.5px; left: 560px; width: 320px; height: auto;">
                <a class="close-Register" href="javascript:;"></a>
                <div id="isdeal_dislog" class="date">
                    <h4>拒绝订单</h4>
                    <ul>
                        <li>订单编号：<span id="isdeal_ordernum" class="aRed">2014070250363812</span>
                            <div class="display"><input name="isdeal_orderid" id="isdeal_orderid" type="hidden"
                                                        value=""></div>
                        </li>
                        <li>
                            原&nbsp;&nbsp;&nbsp;&nbsp;因：<select name="isdeal_select" id="isdeal_select" class="Dtext1"
                                                               style="width:120px;">
                            <option value="">请选择拒绝原因</option>

                            <option value="1">没有房间了</option>
                            <option value="2">价格有变化</option>
                            <option value="3">预订日期太远</option>
                            <option value="4">预订天数太少</option>
                            <option value="5">其他</option>
                        </select>
                        </li>
                    </ul>
                    <div id="isdeal_submit" class="datebtn"><a href="javascript:void(0)">确认拒绝</a></div>
                </div>
            </div>
        </div>
        <div id="cancel-dialog">
            <!--[if IE 8]>
            <div class="background-mask"></div><![endif]-->
            <div class="cancel-dialog">
                <div class="cancel-orderTitle">
                    <h3><span>取消订单原因</span></h3>
                    <a href="javascript:;" class="canceldialog-close"></a>
                    <input type="hidden" id="ordernum" value="">
                </div>
                <ul class="cancel-reasonList">
                    <li>
                        <span>行程改变</span>
                        <input type="radio" name="cancelReason" value="1" id="cancel-reason1">
                        <label for="cancel-reason1"></label>
                    </li>
                    <li>
                        <span>房东说没房了</span>
                        <input type="radio" name="cancelReason" value="2" id="cancel-reason2">
                        <label for="cancel-reason2"></label>
                    </li>
                    <li>
                        <span>重新预订</span>
                        <input type="radio" name="cancelReason" value="3" id="cancel-reason3">
                        <label for="cancel-reason3"></label>
                    </li>
                    <li>
                        <span>房东一直不回复消息</span>
                        <input type="radio" name="cancelReason" value="4" id="cancel-reason4">
                        <label for="cancel-reason4"></label>
                    </li>
                    <li>
                        <span>找到更好的房子了</span>
                        <input type="radio" name="cancelReason" value="5" id="cancel-reason5">
                        <label for="cancel-reason5"></label>
                    </li>
                    <li>
                        <span>房东涨价了</span>
                        <input type="radio" name="cancelReason" value="6" id="cancel-reason6">
                        <label for="cancel-reason6"></label>
                    </li>
                    <li>
                        <span>其它</span>
                        <textarea placeholder="请填写其他原因（在100字以内）" maxlength="100"></textarea>
                        <input type="radio" name="cancelReason" value="-1" id="cancel-reason-1">
                        <label for="cancel-reason-1"></label>
                    </li>

                </ul>
                <a href="javascript:;" class="cancel-submit">提交</a>
            </div>
        </div>
        <script type="text/javascript">
            function quxiao(a) {
                $("#ordernum").val(a);
                $("#cancel-dialog").show();
            };
            $(".canceldialog-close").click(function () {
                $("#cancel-dialog").hide();
            });
            $(".cancel-reasonList label").click(function () {
                $(this).attr("for") == "cancel-reason-1" ? $(this).parent().find("textarea").show() : $(this).parents("ul").find("textarea").hide();
            });
            $(".cancel-submit").click(function () {
                var reasonId = $("input:checked").val(), otherReason = $(".cancel-reasonList textarea").val(),
                        orderid = $("#ordernum").val();
                if (true) {//confirm('取消订单吗?')
                    if (reasonId == -1 && otherReason.length <= 0) {
                        alert("请您填写其他原因！");
                        return false;
                    }
                    if (orderid == "") {
                        alert("您的订单号丢失请您刷新！");
                        return false;
                    }
                    $.ajax({
                        type: "post",
                        async: false,
                        url: "https://api.muniao.com/v1_0?op=set_cancel_reason",
                        dataType: "json",
                        data: {
                            uid: "1353193",
                            zend: "6C940A3B40B050D830AB1E6A856023CD4918C04A5B78877576E77B308B14655629F2B9556EAF9E1043C43D6435982C2F",
                            code: reasonId,
                            orderid: orderid,
                            other_reason: otherReason
                        },
                        success: function (json) {
                            if (json.code == 0) {
                                alert(json.message);
                                location.reload();
                            }
                            else {
                                if (j) {
                                    alert(json.message);
                                    location.reload();
                                }
                            }
                        },
                        error: function () {
                            //alert('fail');
                        }
                    });
                }
            })

            //删除订单 2018-3-9
            function orderdelete(id) {
                if (!id) {
                    alert('没有选择订单！');
                    return;
                }
                var msg = "注意：删除后该订单将不再显示！";
                if (confirm(msg) != true) {
                    return;
                }
                //var postData = { "orderid": id };
                //var datastr = JSON.stringify(postData);
                $.ajax({
                    url: "/Order/OrderDelete?orderid=" + id,
                    type: "get",
                    data: null,
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        if (data.Success) {
                            alert(data.Message);
                            location.reload();
                        }
                    },
                    error: function (data) {
                        alert("操作异常！");
                    }
                });
            }
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
<script src="${staticRoot}/images/saved_resource" type="text/javascript"></script>
<link href="${staticRoot}/images/webim.min.css" media="all" type="text/css" rel="stylesheet">
<link href="${staticRoot}/images/jquery.ui.theme.css" media="all" type="text/css" rel="stylesheet">
<script src="${staticRoot}/images/web_socket.min.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim.min.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim-zh-CN.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim.php5.min.js.下载" charset="utf-8" type="text/javascript"></script>


<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>