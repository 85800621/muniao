<!DOCTYPE html>
<!-- saved from url=(0061)https://www.muniao.com/Home/Pay?ordernum=20180608202507394168 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#assign basePath=request.contextPath />
    <script charset="utf-8" src="${staticRoot}/images/v.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mv.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mba.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mvl.js.下载"></script>

    <title>Pay First</title>
    <meta name="keywords">
    <meta name="description">
    <meta name="viewport" content="width=1400, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta property="wb:webmaster" content="xfwy">
    <meta property="qc:admins" content="329429240">
    <link rel="shortcut icon" href="https://assets.muniao.com/assets2/pc/favicon.ico">
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


    <script src="${staticRoot}/images/UserLoginCallback"></script>
</head>
<body>
<span>${oid}</span>
<img src="http://47.106.168.123:8080/muniao/payment/image">
<script>
    $(function(){
        var id = ${oid};
        setInterval(function(){check()} , 1000);
        function check(){
            alert("123213")
            $.post(
                    "http://47.106.168.123:8080/muniao/payment/ifSuccess",{"id":id},function (data) {
                        if(data==true){
                            window.location.href = 'http://47.106.168.123:8080/muniao/payment/gotosuccess';
                        }
                    }
            );
        }
        <#--setInterval(function () {judgetime()},1)-->
        <#--function judgetime() {-->
            <#--$.post("${basePath}/judgetime",{"orderId":id}),function (data) {-->
                <#--if(data.equals("已超时!"))-->
                    <#--alert(data);-->
            <#--}-->

        <#--}-->
    })
</script>
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
<!--href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#close"-->
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
<!--href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#"><img-->
<!--width="50" height="50" defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"-->
<!--class="ui-corner-all"-->
<!--src="${staticRoot}/images/d590d8e4b87c4c65922d653c3812d4a620180604093556672.jpg_150_150.jpg"></a>-->
<!--<div class="webim-user-show"><h4><a id=":userShowTrigger"-->
<!--href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#show"><strong-->
<!--id=":userNick">嘉利学府</strong><span id=":userShow"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</span><em-->
<!--class="ui-icon ui-icon-triangle-1-s">show_status_list</em></a>-->
<!--</h4>-->
<!--<p id=":userShowList" class="ui-state-active ui-corner-all"-->
<!--style="display: none;">-->
<!--<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#available"-->
<!--class="webim-user-show-available"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</a>-->
<!--<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#dnd"-->
<!--class="webim-user-show-dnd"><em-->
<!--class="webim-icon webim-icon-dnd">忙碌</em>忙碌</a>-->
<!--<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#away"-->
<!--class="webim-user-show-away"><em-->
<!--class="webim-icon webim-icon-away">离开</em>离开</a>-->
<!--<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#invisible"-->
<!--class="webim-user-show-invisible"><em-->
<!--class="webim-icon webim-icon-invisible">隐身</em>隐身</a>-->
<!--<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#unavailable"-->
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
<!--href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#url"-->
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
<!--href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168#close"-->
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
        <li><a href="${basePath}/index" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/featureslist" target="_self">特色短租</a></li>
        <li><a href="https://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="https://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/images/give88.png"></i></a></li>
    </ul>
<#-- ###################################### ###### 顶部登录区域开始 ################################# ########### -->
<#if user.userType == 1>
    <div id="div_FangKe1" class="s_mn_release w_mR30">
        <a href="#" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style="display: block">
        <span>Hi,欢迎回来！</span>
        <a class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank" onmouseover="$('#div_FangKe').show(); $('#div_FangDong').show();">${user.userName}</a>
        <!--房客弹出框-->
        <div id="div_FangDong" class="w_user_xl" style="display:none;border-radius: 3px;opacity:0.8;background-color:rgb(191, 82, 13);border:0;" onmouseover="$('#div_FangDong').show();" onmouseout="$('#div_FangDong').hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;">
                    <a href="www.baidu.com" rel="nofollow" target="_blank" style="font-family:微软雅黑;color:#fff;">房客中心</a>
                </div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="${basePath}/lodgerorder/${user.userId}" style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="https://www.muniao.com/mobile.html" style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;">
                    <a href="${basePath}/logout" onclick="logout()" style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a>
                </div>
            </div>
        </div>
    </div>
<#elseif user.userType == 2>
    <div id="div_User" class="s_mn_userbox" style="display: block">
        <a href="${basePath}/preadd" class="free-publishBtn">免费发布房源</a>
        <span>Hi,欢迎回来！</span>
        <a class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank" onmouseover="$('#div_FangKe').show(); $('#div_FangDong').show();">${user.userName}</a>
        <!--房东弹出框-->
        <div id="div_FangDong" class="w_user_xl" style="display:none;border-radius: 3px;opacity:0.8;background-color:rgb(191, 82, 13);border:0;" onmouseover="$('#div_FangDong').show();" onmouseout="$('#div_FangDong').hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font" style="text-align:left;">
                    <a href="${basePath}/Room/index" rel="nofollow" target="_blank" style="font-family:微软雅黑;color:#fff;">房东中心</a>
                </div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="${basePath}/preadd" style="font-size:12px;font-family:微软雅黑;color:#fff;">发布房间</a></li>
                    <li><a href="${basePath}/lodgerorder/${user.userId}" style="font-size:12px;font-family:微软雅黑;color:#fff;">订单管理</a></li>
                    <li><a href="${basePath}/Room/index" style="font-size:12px;font-family:微软雅黑;color:#fff;">房源管理</a></li>
                    <li><a href="#" style="font-size:12px;font-family:微软雅黑;color:#fff;">房东助手</a></li>
                </ul>
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;">
                    <a href="www.baidu.com" rel="nofollow" target="_blank" style="font-family:微软雅黑;color:#fff;">房客中心</a>
                </div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="${basePath}/lodgerorder/${user.userId}" style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="https://www.muniao.com/mobile.html" style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;">
                    <a href="${basePath}/logout" onclick="logout()" style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a>
                </div>
            </div>
        </div>
    </div>
</#if>
<#if user == null>
    <div id="div_Login" class="s_mn_loginbox w_mR30">
        <a href="javascript:void(0);" id="Login1" class="free-publishBtn">免费发布房源</a>
        <div class="s_mn_login">
            <a href="javascript:void(0);" id="Login1" class="s_mn_loginbutt1" rel="nofollow">登录</a>&middot;
            <a href="${basePath}/register" class="s_mn_loginbutt" rel="nofollow">注册</a>
        </div>
    </div>
</#if>
</div>
<#-- ############################################  顶部登录区域开始 ############################################  -->

<script src="${staticRoot}/images/base-validator.js.下载"></script>
<link href="${staticRoot}/images/LoginDiv.css" rel="stylesheet">

<script>
    function toLogin(tp) {
        if (tp == 0) {
            //手机号为空验证
            if ($('#login_Tel_M').val().trim() == '') {
                $('#login_Tel_M').focus();
                $('.newa_tips_text').html('请输入手机号码');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
                return false;
            }
            //手机号是否正确
            if (!isMobile($('#login_Tel_M').val().trim())) {
                $('#login_Tel_M').focus();
                $('.newa_tips_text').html('手机号格式错误');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
                return false;
            }
            //验证图形验证码空判断
            if ($('#login_ValidCode').val().trim() == '') {
                $('#login_ValidCode').focus();
                $('.newa_tips_text').html('请输入图形验证码');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 126 }).addClass("newa_tips_show");
                return false;
            }
            //验证短信验证码空判断
            if ($('#login_MsgCode').val().trim() == '') {
                $('#login_MsgCode').focus();
                $('.newa_tips_text').html('请输入短信验证码');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                return false;
            }
            //登录
            $.post("CheckLoginFast", {
                Tel_M: $('#login_Tel_M').val().trim(),
                ValidCode: $('#login_ValidCode').val().trim(),
                MsgCode: $('#login_MsgCode').val().trim(),
            }, function (data) {
                //   var j = JSON.parse(data);
                if (data.code == -1) {//图形验证码错误
                    getImageCode($("#ValidImg"));
                    $('#login_ValidCode').focus();
                    $('.newa_tips_text').html('图形验证码错误');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 126 }).addClass("newa_tips_show");
                    return false;
                }
                else if (data.code == -2) {//短信验证码错误
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('短信验证码错误');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                } else if (data.code ==-22) {
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('验证码已经失效，请重新获取验证码！');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                }
                else if (data.code == 1) {
                    location.href = 'http://www.muniao.com';
                }
                else if (data.code == 3) {
                    alert(j.mgs);
                }
            });

        }
        else {
            //手机号为空验证
            if ($('#Login_Email_Tel_M').val().trim() == '') {
                $('#Login_Email_Tel_M').focus();
                $('.newa_tips_text').html('请输入手机号码');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
                return false;
            }
            //手机号是否正确
            if (!isMobile($('#Login_Email_Tel_M').val().trim())) {
                $('#Login_Email_Tel_M').focus();
                $('.newa_tips_text').html('手机号格式错误');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
                return false;
            }
            //密码为空验证
            if ($('#Login_Pwd').val().trim() == '') {
                $('#Login_Pwd').focus();
                $('.newa_tips_text').html('请输入密码');
                $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 126 }).addClass("newa_tips_show");
                return false;
            }
            //普通登录 ---$('#newa_auto_l').val().trim()
            $.post("checkLogin", {
                tel: $('#Login_Email_Tel_M').val().trim(),
                password: $('#Login_Pwd').val().trim(),
                rememberMe: "false"
            }, function (data) {
                // var j = JSON.parse(data);
                alert(data.code)
                if (data.code == 1) {
                    location.href = 'user/lodgerinfo';
                }
                else if (data.code == -1) {
                    alert("您还不是木鸟用户，请先注册")
                    $('#Login_Email_Tel_M').focus();
                    $('.newa_tips_text').html('您还不是木鸟用户，请注册!');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                }
                else if (data.code == -2) {
                    $('#Login_Email_Tel_M').focus();
                    $('.newa_tips_text').html('账号已锁定');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                }
                else if (data.code == -3) {
                    alert("密码错误")
                    $('#Login_Pwd').focus();
                    $('.newa_tips_text').html('登录密码错误');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
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
            $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
            return false;
        }
        //手机号是否正确
        if (!isMobile($('#login_Tel_M').val().trim())) {
            $('#login_Tel_M').focus();
            $('.newa_tips_text').html('手机号格式错误');
            $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 66 }).addClass("newa_tips_show");
            return false;
        }
        //验证图形验证码空判断
        if ($('#login_ValidCode').val().trim() == '') {
            $('#login_ValidCode').focus();
            $('.newa_tips_text').html('请输入图形验证码');
            $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 126 }).addClass("newa_tips_show");
            return false;
        }
        /*发送短信*/
        $.ajaxSettings.async = false;
        $.ajaxSetup({ cache: false });
        $.get('getCode', {
                    tel: $('#login_Tel_M').val(),
                    ValidCode: $('#login_ValidCode').val().trim() },
                function (data) {
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
    function getImageCode() {
        document.getElementById("ValidImg").src = "pic?random=" + Math.random();
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
    <input type="hidden" name="displayreurl" id="reurl">
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


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>等待房东确认-订单提交-木鸟短租</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="${staticRoot}/images/stylep.css" rel="stylesheet">
<style>
    .order_num {
        font-size: 12px;
    }

    .order_wait {
        background: #FFFFFF;
        border: 1px solid #DDDDDD;
        width: 1200px;
        margin: 0 auto 40px;
    }

    .tj_ok_t i {
        display: inline-block;
        width: 40px;
        height: 44px;
        background: url(${staticRoot}/images/tj_ok_t.png) no-repeat;
        vertical-align: text-bottom;
        margin-right: 20px;
    }

    .order_wait_c {
        color: #CCCCCC;
        margin-top: 40px;
        border-top: 1px solid #EEEEEE;
        border-bottom: 0;
        padding-top: 20px;
    }

    .order_wait_c p {
        font-size: 14px;
        line-height: 34px;
    }

    .call_fd {
        margin-left: 40px;
    }

    .call_fd i {
        display: inline-block;
        width: 20px;
        height: 18px;
        background: url(${staticRoot}/images/order_call.png) no-repeat;
        margin-right: 5px;
        vertical-align: middle;
    }

    .fd_name span {
        color: #69a9f8;
    }

    .f5_order {
        background: #4b9bfd;
        color: #FFFFFF;
    }

    .order_l {
        background: #dddddd;
        color: #AAAAAA;
        margin-left: 20px;
    }

    .order_share a {
        display: inline-block;
        width: 32px;
        height: 32px;
        line-height: 32px;
        margin-left: 10px;
    }

    .wx_s {
        background: url(//assets.muniao.com/assets2/pc/Content/images/webchat.png) no-repeat;
    }

    .kj_s {
        background: url(//assets.muniao.com/assets2/pc/Content/images/q-zone.png) no-repeat;
    }

    .wb_s {
        background: url(//assets.muniao.com/assets2/pc/Content/images/weibo.png) no-repeat;
    }

    .on_line {
        border: none;
    }

    .order_payborder {
        border-bottom: 1px solid #ddd;
    }

    .pay_choicelabel {
        width: 126px;
    }

    .order_paybox {
        width: 1132px;
        margin: 0 auto 40px;
    }

    .order_paydetailbox {
        width: 100%;
        height: 60px;
        line-height: 60px;
        border-bottom: 1px solid #eee;
    }

    .order_paydetail {
        float: left;
        color: #888;
        margin-left: 20px;
    }

    .order_payfk {
        float: left;
        color: #666;
    }

    .order_paycontent {
        width: 100%;
    }

    .order_paycontentleft {
        width: 115px;
        float: left;
        color: #666;
    }

    .order_payzb {
        width: 1017px;
        margin-left: 115px;
        border-bottom: 1px solid #ddd;
    }

    .order_paystyle {
        width: 1017px;
        margin-left: 115px;
    }

    .mL10 {
        margin-left: 10px;
    }

    .tj_a {
        margin-left: 20px;
    }

    .tj_a a {
        display: inline;
        color: #888;
    }

    .qr_pay {
        float: left;
        font-size: 18px;
        color: #FFFFFF;
        width: 172px;
        height: 48px;
        display: inline-block;
        background: #59aefd;
        text-align: center;
        line-height: 48px;
        border-radius: 3px;
    }

    .tj_ok_t {
        font-size: 26px;
        font-weight: normal;
        padding-left: 40px;
    }

    .order_w_content {
        width: 550px;
        margin-left: 40px;
        padding: 0;
    }

    .pay {
        margin: 27px 0;
        overflow: hidden;
    }

    .order_tj_bot {
        margin-top: 20px;
        width: 820px;
    }

    .order_gopay {
        background: #ff9286;
        color: #fff;
        margin-left: 14px;
        display: inline-block;
        width: 89px;
        height: 33px;
        line-height: 33px;
        text-align: center;
        border-radius: 3px;
    }

    .shuaxin {
        width: 18px;
        height: 18px;
        display: inline-block;
        margin-right: 4px;
        margin-top: 2px;
        float: left;
    }

    .order_class {
        border-bottom: 1px solid #DDDDDD;
        padding-bottom: 24px;
    }

    .order_class_title {
        font-size: 20px;
        color: #666;
        line-height: 20px;
        margin-bottom: 34px;
        font-weight: normal;
    }

    .order_date {
        width: 892px;
    }

    .order_date li {
        width: 223px;
        float: left;
        position: relative;
    }

    .order_main {
        width: 1200px;
        margin: 0 auto 50px;
    }

    .order_content {
        width: 870px;
        float: left;
        padding-bottom: 100px;
    }

    .order_head {
        height: 110px;
        border-bottom: 1px solid #DDDDDD;
    }

    .order_head_left {
        width: 140px;
    }

    .order_head_left h2 {
        font-size: 26px;
        color: #666666;
        font-weight: normal;
        margin-top: 20px;
    }

    .order_head_left p {
        font-size: 12px;
        line-height: 18px;
        color: #afb4b9;
    }

    .clear {
        zoom: 1;
    }

    .w_mT30 {
        margin-top: 30px;
    }

    .fl {
        float: left;
    }

    .pay_detai {
        width: 240px;
        margin-left: 20px;
        text-align: right;
        float: right;
    }

    .fr {
        float: right;
    }

    .clear:after {
        content: "";
        display: block;
        clear: both;
    }

    .pay_detai {
        width: 240px;
        margin-left: 20px;
        text-align: right;
        float: right;
    }

    .pay_pirce {
        font-size: 26px;
    }

    .pay_name {
        font-size: 14px;
    }

    .see_or {
        display: inline-block;
        width: 60px;
        height: 19px;
        line-height: 19px;
        text-align: center;
        background: #d1d5d8;
        color: #FFFFFF;
        font-size: 12px;
        border-radius: 3px;
    }

    .pay_content {
        width: 1158px;
        padding: 0 20px;
        background: #FFFFFF;
        border: 1px solid #CCCCCC;
        margin-top: 50px;
    }

    .w_color {
        color: #ff9286;
    }

    .on_line {
        height: 40px;
        padding: 12px 0;
        line-height: 40px;
        border-bottom: 1px solid #DDDDDD;
    }

    .on_pay_title, .wy_pay_title {
        width: 100px;
        min-height: 30px;
        float: left;
        font-size: 12px;
    }

    .on_pay_title span {
        display: inline-block;
        width: 66px;
        height: 28px;
        line-height: 28px;
        font-size: 13px;
        background: #55c7f5;
        color: #FFFFFF;
        border-radius: 3px;
        text-align: center;
    }

    .wy_pay_title span {
        display: inline-block;
        width: 66px;
        height: 28px;
        line-height: 28px;
        font-size: 13px;
        background: #55c7f5;
        color: #FFFFFF;
        border-radius: 3px;
        text-align: center;
    }

    .on_line {
        border: none;
    }

    .on_line_choice input {
        vertical-align: middle;
    }

    .on_line_choice label {
        display: inline-block;
        width: 160px;
        padding-left: 20px;
        cursor: pointer;
        vertical-align: middle;
    }

    .on_line_choice label.zub {
        width: 120px;
    }

    .on_line_choice label img {
        vertical-align: top;
    }
</style>

<script>
    $(document).ready(function () {
        var zubi = $("#zubihid").val();
        var yhj = $("#yhjhid").val();
        if (zubi != '0.00') {
            $("#zubishow").show();
        }
        if (yhj != '0.00') {
            $("#yhjishow").show();
        }
        $(".see_or").click(function () {
            if ($(".order_infor_w").css("display") == "none") {
                $(".order_infor_w").show();
            }
            else {
                $(".order_infor_w").hide();
            }
            var hei = $(window).height() - 200;
            if (hei < 200) hei = 200;
            $(".order_infor").css({
                "height": hei,
                "margin-top": -($(window).height() - 200) / 2
            });
            $("body").css("overflow", "hidden");
        });
        $(".close_order").click(function () {
            $(".order_infor_w").hide();
            $("body").css("overflow", "visible");
        });

        //重新选择支付类型
        function onrechoose() {
            var paytype = $("input[name='paytype']:checked").val();
            var hb_fq_num = $("input[name='hb_fq_num']").val();
            $(".alipay_hbDetail li.active").size();
            if (paytype == "1001") {
                $(".alipay_hbDetail").show()
                if (hb_fq_num) {

                }
                else {
                    $(".alipay_hbDetail li").removeClass("active");
                    //默认选择第一种分期
                    $(".alipay_hbDetail li").eq(0).addClass("active");
                    $("input[name='hb_fq_num']").val($(".alipay_hbDetail li").eq(0).attr("splitnum"));
                }
            }
            else {
                $(".alipay_hbDetail").hide()
                $(".alipay_hbDetail li").removeClass("active");
                $("input[name='hb_fq_num']").val("");
            }
            var hb_fq_num = $("input[name='hb_fq_num']").val();
        }

        $(".on_line_choice input[name='paytype'],.on_line_choice label").click(onrechoose);
        $(".qr_pay").click(function () {
            var paytype = $("input[name='paytype']:checked").val();
            var hb_fq_num = $("input[name='hb_fq_num']").val();
            if (paytype == "1001") {
                if (!hb_fq_num) {
                    //alert("至少选择一直花呗分期方案！");
                    return;
                }
            }
            $('#orderpay_form').submit();
        });
        $(".alipay_hbDetail").on("click", "li", function () {
            $(this).addClass("active").siblings().removeClass("active");
            $("input[name=hb_fq_num]").val($(this).attr("splitnum") || "");
        });
        onrechoose();
        $(".hbDetail-mainTop .mainTop-left").eq(2).addClass("doubleNum");
    });
</script>


<div id="order_content" class="order_main">

    <input type="hidden" name="zubijilu" value="0.00" id="zubihid">
    <input type="hidden" name="yhjjl" value="0.00" id="yhjhid">
    <!---订单详情弹出层---->
    <div class="order_infor_w" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; display: none">
        <a class="close_order" href="javascript:;">
            <img src="${staticRoot}/images/close_date.png" style="width: 24px;">
        </a>
        <div class="order_bg"></div>
        <div class="order_infor" style="height: 281px; margin-top: -140.5px;">
            <div class="infor_content">
                <h2>金沙滩海丰海景公寓四居室</h2>


                <p class="order_id">订单编号：20180608202507394168</p>
                <div class="order_p_infor">
                    <p>
                        <span>人数：</span>
                        1 人
                    </p>
                    <p>
                        <span>房源数：</span>
                        1 套&nbsp;&nbsp;2室1厅
                    </p>
                    <p><span>入住时间：</span>2018-07-28 至 2018-07-29 &nbsp;&nbsp;共1 晚</p>
                </div>
                <div class="order_p_infor">
                    <p><span>预订人姓名：</span>嘉利学府</p>
                    <p><span>预订人电话：</span>18792074922</p>
                </div>
                <div class="infor_pirce">
                    <h3>总房款：<span>￥500.00</span></h3>
                    <ul class="clear">
                        <li><span>入住时间</span></li>
                        <li><span>数量</span></li>
                        <li>
                            <span>小计</span>
                        </li>
                    </ul>
                    <div class="rent">

                        <ul class="clear">
                            <li>
                                2018-07-28
                            </li>
                            <li>
                                        <span>
                                            1
                                        </span>套
                            </li>
                            <li>
                                ￥<label>
                                500.00
                            </label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="infor_pirce">
                    <h3>保险：<span>￥0.00 </span></h3>
                    <ul class="bx clear">
                        <li>入住人姓名</li>
                        <li class="sf_id">身份证号</li>
                        <li>身份信息验证</li>
                        <li>住宿意外险</li>
                        <li>费用</li>
                    </ul>
                    <div class="tb_infor">
                        <ul class="bx clear">
                            <li>史国纲</li>
                            <li class="sf_id">342401199704104510</li>
                            <li>验证通过</li>
                            <li>投保成功</li>
                            <li>免费</li>
                        </ul>
                    </div>

                </div>
                <div class="infor_pirce" id="zubishow" style="display:none;">
                    <h3>租币：<span>￥-0.00 </span></h3>
                </div>
                <div class="infor_pirce" id="yhjishow" style="display:none;">
                    <h3>优惠劵：<span>￥-0.00 </span></h3>
                </div>
                <div class="infor_bottom">
                    <p class="all_pirce">订单总额：<span class="w_color">￥500.00</span></p>
                    <p class="l_pirce"><span class="w_mR30">预付订金：￥500.00</span><span>到店支付：￥0.00</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="order_head w_mT30 clear" style="padding-top:10px;">
        <div class="order_head_left fl" style="float:left;">
            <h2 style="margin-bottom:0;">支付房款</h2>
            <p>入住申请已提交<br>等待房客支付房东确认</p>
        </div>
        <div class="pay_detai">
            <p class="pay_name w_fColora">精品一居室</p>
            <p class="order_num w_color">20180608202507394168</p>
            <p><a class="see_or" href="javascript:;">订单详情</a></p>
        </div>
        <div class="order_head_right fr">
            <img src="${staticRoot}/images/order_paytt.png">
        </div>
    </div>
    <div class="order_wait">
        <h2 class="tj_ok_t w_color"><i></i>提交成功！您可以选择继续支付或等待房东确认。</h2>
        <div class="order_w_content">
            <div class="order_wait_c">
                <p class="fd_name w_fColor8">
                    房东：<span>金沙滩海丰海景公寓四居室</span>
                    <a class="call_fd webim-chatbtn" href="javascript:void(0)" data-id="73127" data-title="张雪艳"
                       data-image="http://assets.muniao.com/UploadFiles/image/20180401/45da02ee0b8a4ccf9f58ff7ddd10657620180401193028296.jpg"
                       title="在线联系房东" target="_self" id="webim-chatid-56599">
                        <i></i>联系房东
                    </a>
                </p>
                <p class="fd_tishi w_fColor8">您可以选择继续支付，或等待房东确认订单，房东确认后我们会发短信通知您进行支付。</p>
            </div>
        </div>
        <div style="border:0;" class="order_wait">
            <div class="order_paybox">
                <div class="order_paydetailbox">
                    <div class="order_payfk"><span class="f16">线上应付金额：</span><span
                            class="f20 red payment_price">￥500.00</span></div>
                    <div class="order_paydetail f12">人数:<label style="color:#ff6c5c;font-weight:bolder;font-size:16px;">1</label>
                        人<span class="mL10">房源数:</span><label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">1</label> 套&nbsp;<label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">3</label>室<label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">1</label>厅<span class="mL10">入住时间: </span><label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">2018-7-28</label> 至 <label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">2018-7-29</label>&nbsp;共 <label
                                style="color:#ff6c5c;font-weight:bolder;font-size:16px;">1</label> 晚
                    </div>
                </div>
                <form name="orderpay_form" id="orderpay_form" action="https://www.muniao.com/Home/ToPay" target="_blank"
                      method="post">
                    <div style="display:none;">
                        <input type="hidden" name="orderid" value="381792">
                        <input type="hidden" name="order_num" value="20180608202507394168">
                        <input type="hidden" name="hb_fq_num" value="">
                        <!--支付宝-->
                        <!--微信支付-->
                        <!--网银在线开始-->
                    </div>
                    <div class="order_paycontent">
                        <div class="on_line">
                            <div class="order_paycontentleft">
                                <span class="f16">选择支付方式：</span>
                            </div>
                            <div class="on_line_choice">
                                <input id="alipay" type="radio" name="paytype" value="1" checked="checked">
                                <label style="width:126px;" for="alipay"><img src="${staticRoot}/images/zfb2.jpg" alt="支付宝"
                                                                              title="支付宝"></label>
                                <input id="weixin" type="radio" name="paytype" value="2">
                                <label style="width:126px;" for="weixin"><img width="126" height="40"
                                                                              src="${staticRoot}/images/wxzf2.jpg" alt="微信支付"
                                                                              title="微信支付"></label>
                                <input id="alipayhb" type="radio" name="paytype" value="1001">
                                <label style="width:126px;" for="alipayhb"><img src="${staticRoot}/images/alipay_hb.jpg" alt="蚂蚁花呗"
                                                                                title="蚂蚁花呗"></label> <input
                                    id="jingdong" type="radio" name="paytype" value="5">
                                <label style="width:126px;" for="jingdong"><img width="126" height="40"
                                                                                src="${staticRoot}/images/jdpay.jpg" alt="京东支付"
                                                                                title="京东支付"></label>
                                <input id="yinlian" type="radio" name="paytype" value="3">
                                <label style="width:126px;" for="yinlian"><img src="${staticRoot}/images/ylkjzf.jpg" alt="银联快捷支付"
                                                                               title="银联快捷支付"></label>
                            </div>
                        </div>
                        <!--花呗分期-->
                        <ul class="alipay_hbDetail" style="display:none;">
                            <li splitnum="3">
                                <div class="hbDetail-mainTop">
                                    <span class="mainTop-left">3</span>
                                    <div class="mainTop-right">
                                        <h6>分期价</h6>
                                        <p class="hb-splitPrice">￥<span>170.49</span> x 3 </p>
                                        <p>3.83元/期</p>
                                    </div>
                                </div>
                                <p class="order-totalPrice">总计￥511.50</p>
                            </li>
                            <li splitnum="6">
                                <div class="hbDetail-mainTop">
                                    <span class="mainTop-left">6</span>
                                    <div class="mainTop-right">
                                        <h6>分期价</h6>
                                        <p class="hb-splitPrice">￥<span>87.08</span> x 6 </p>
                                        <p>3.75元/期</p>
                                    </div>
                                </div>
                                <p class="order-totalPrice">总计￥522.50</p>
                            </li>
                            <li splitnum="12">
                                <div class="hbDetail-mainTop">
                                    <span class="mainTop-left doubleNum">12</span>
                                    <div class="mainTop-right">
                                        <h6>分期价</h6>
                                        <p class="hb-splitPrice">￥<span>44.79</span> x 12 </p>
                                        <p>3.13元/期</p>
                                    </div>
                                </div>
                                <p class="order-totalPrice">总计￥537.50</p>
                            </li>
                        </ul>
                        <div class="pay">
                            <div class="order_paycontentleft">&nbsp;</div>
                            <a class="qr_pay" href="javascript:;">去支付</a>
                            <div class="order_tj_bot clear" style="float:left;">
                                <div class="order_share bdsharebuttonbox fr">
                                    <a class="bds_more" href="javascript:void(0)" data-cmd="more">&nbsp;</a>

                                </div>
                                <div class="tj_a fl">
                                    <a class="f5_order" style="background:none;" href="javascript:location.reload();"><i
                                            class="shuaxin"><img src="${staticRoot}/images/icon-shuaxin.png"
                                                                 style="width:18px; margin-right:4px"></i>刷新订单</a><a
                                        class="order_gopay" style="display:none;"
                                        href="https://www.muniao.com/order_pay.asp?orderid=159566">去付款</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.write(unescape("%3Cscript src='https://webim3.muniao.com/webim2/?action=boot&utype=2' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="${staticRoot}/images/saved_resource" type="text/javascript"></script>
<link href="${staticRoot}/images/webim.min.css" media="all" type="text/css" rel="stylesheet">
<link href="${staticRoot}/images/jquery.ui.theme.css" media="all" type="text/css" rel="stylesheet">
<script src="${staticRoot}/images/web_socket.min.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim.min.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim-zh-CN.js.下载" charset="utf-8" type="text/javascript"></script>
<script src="${staticRoot}/images/webim.php5.min.js.下载" charset="utf-8" type="text/javascript"></script>

<!-- 20160224 add/chen -->

<!-- 20160224 end -->
<div style="display:none;">
    <script type="text/javascript">
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1000373664'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/z_stat.php%3Fid%3D1000373664' type='text/javascript'%3E%3C/script%3E"));
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F59c4ac1df66ae9bdb2ce804f09084ea1' type='text/javascript'%3E%3C/script%3E"));
        //(function(){
        //    var bp = document.createElement('script');
        //    bp.src = '//push.zhanzhang.baidu.com/push.js';
        //    var s = document.getElementsByTagName("script")[0];
        //    s.parentNode.insertBefore(bp, s);
        //})();
        var _mvq = window._mvq || [];
        window._mvq = _mvq;
        _mvq.push(['$setAccount', 'm-104553-0']);
        _mvq.push(['$logConversion']);
        (function () {
            var mvl = document.createElement('script');
            mvl.type = 'text/javascript';
            mvl.async = true;
            mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(mvl, s);
        })();
    </script>
    <span id="cnzz_stat_icon_1000373664"><a href="http://www.cnzz.com/stat/website.php?web_id=1000373664"
                                            target="_blank" title="站长统计">站长统计</a></span>
    <script src="${staticRoot}/images/z_stat.php" type="text/javascript"></script>
    <script src="${staticRoot}/images/core.php" charset="utf-8" type="text/javascript"></script>
    <script src="${staticRoot}/images/h.js.下载" type="text/javascript"></script>
    <a href="http://tongji.baidu.com/hm-web/welcome/ico?s=59c4ac1df66ae9bdb2ce804f09084ea1" target="_blank"><img
            border="0" src="${staticRoot}/images/21.gif" width="20" height="20"></a>

</div>


<div class="s_mn_footerbox" id="s_mn_footerbox">
    <div class="s_mn_footer_center">
        <div class="s_mn_footer_nav">
            <a href="https://www.muniao.com/Help/AboutUs" rel="nofollow" target="_blank" title="关于我们">关于我们</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Help/Index" rel="nofollow" target="_blank"
                                        title="">联系我们</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Help/Law" rel="nofollow" target="_blank"
                                        title="法律声明">法律声明</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Help/Guide" rel="nofollow" target="_blank"
                                        title="新手指南">新手指南</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Help/Center" rel="nofollow" target="_blank"
                                        title="帮助中心">帮助中心</a>

            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Article/News" target="_blank" rel="nofollow"
                                        title="新闻资讯">新闻资讯</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168"
                                        target="_blank" title="网站地图">网站地图</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;<a href="https://www.muniao.com/Home/Pay?ordernum=20180608202507394168"
                                        target="_blank" title="地标找短租房">地标找短租房</a>
        </div>
        <div class="s_mn_footer_information">
            <div class="s_mn_copyright">
                <p>客服电话：4000560055&nbsp;客户服务：service@muniao.com&nbsp;意见反馈：feedback@muniao.com</p>
                <p>版权所有&nbsp;木鸟短租&nbsp;网站备案/许可证号：京ICP备12043553号-3</p>
                <p>北京爱游易科技有限公司</p>
            </div>
            <div class="s_mn_security">
                <style>.s_mn_security_list img {
                    border-radius: 3px;
                }</style>
                <ul class="s_mn_security_list">
                    <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心"
                           target="_blank"><img src="${staticRoot}/images/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109"
                                                height="50"></a></li>
                    <li><a href="http://www.cyberpolice.cn/" rel="nofollow" title="网络110" target="_blank"><img
                            src="${staticRoot}/images/pic2.jpg" alt="网络110" title="网络110" width="109" height="50"></a></li>
                    <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img
                            src="${staticRoot}/images/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109" height="50"></a></li>
                    <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测"
                           target="_blank"><img src="${staticRoot}/images/pic6.jpg" alt="安全检测" title="安全检测" width="109" height="50"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="${staticRoot}/images/lat"></script>
<script type="text/javascript" src="${staticRoot}/images/lt"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>