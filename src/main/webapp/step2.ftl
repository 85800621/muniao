<!DOCTYPE html>
<!-- saved from url=(0041)http://user2.muniao.com/Room/Step2/203026 -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign basePath=request.contextPath />
    <script src="${staticRoot}/add/jquery-1.10.2.min.js.下载"></script>
    <script src="${staticRoot}/add/city_info.js.下载"></script>
    <script src="${staticRoot}/add/city_cn2en.js.下载"></script>
    <script src="${staticRoot}/add/checkbrowser.js.下载"></script>
    <link href="${staticRoot}/add/reset.css" rel="stylesheet">
    <link href="${staticRoot}/add/style.css" rel="stylesheet" type="text/css">
    <link href="${staticRoot}/add/style_single.css" rel="stylesheet">
</head>
<body style="">

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
        src="${staticRoot}/add/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox"
   style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img
        src="${staticRoot}/add/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"><a href="http://www.muniao.com/"><img
            src="${staticRoot}/add/mn_logo.png" width="80" height="40"></a></h2>
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/add/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活">
    </div>
    <ul class="s_mn_nav">
        <li><a href="${basePath}/index" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/featureslist" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/add/give88.png"></i></a></li>
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
<script src="${staticRoot}/add/base-validator.js.下载"></script>
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
        background: url("${staticRoot}/add/newa_close.png") no-repeat;
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
        background: url("${staticRoot}/add/login_icon.png") no-repeat 0 -53px;
    }

    .newa_l_password_icon {
        background: url("${staticRoot}/add/login_icon.png") no-repeat -18px -53px;
    }

    .newa_login_input li i.newa_kj_icon {
        background: url("${staticRoot}/add/login_icon.png") no-repeat 0 -74px;
        width: 14px;
        height: 18px;
    }

    .newa_login_input li i.newa_piccode_icon {
        background: url("${staticRoot}/add/login_icon.png") no-repeat 0 -97px;
        top: 15px;
        width: 17px;
        height: 14px;
    }

    .newa_login_input li i.newa_code_icon {
        background: url("${staticRoot}/add/login_icon.png") no-repeat 0 -116px;
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
        background: url("${staticRoot}/add/login_btn.png") no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("${staticRoot}/add/login_btn.png") no-repeat -310px 0;
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
        background: url("${staticRoot}/add/login_icon.png") no-repeat 0 -25px;
    }

    .newa_coop .newa_qq {
        width: 18px;
        height: 20px;
        background: url("${staticRoot}/add/login_icon.png") no-repeat -1px 0;
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

                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg" src="${staticRoot}/add/VerifyCode"
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
            <div class="icheckbox_flat-red" style="position: relative;"><input id="newa_auto_l" type="checkbox"
                                                                               style="position: absolute; opacity: 0;">
                <ins class="iCheck-helper"
                     style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
            </div>
            <label for="newa_auto_l">下次自动登录</label>
        </div>
        <a class="newa_login_btn newa_ordinary" href="javascript:void(0);" onclick="toLogin(1)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a></p>
        <div class="newa_coop">
            <a class="newa_sina" href="http://user2.muniao.com/Room/Step2/203026#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Room/Step2/203026#"></a>
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


<script>
    var tj = true;

    //基本信息提交
    function step1_submit() {
        var beadNum, beadprice;
        if (tj) {
            tj = false;
            //验证标题
            if ($("#title").val().trim() == "") {
                $("#title").css('border-color', 'red');
                $("#title").focus();
                choice_type('请输入房源标题');
                tj = true;
                return false;
            }
            //验证卧室数量
            if ($("#woshi").val() <= 0) {
                $("#woshi").css('border-color', 'red');
                $("#woshi").focus();
                choice_type('卧室数应大于零');
                tj = true;
                return false;
            }
            //判断卫生间
            if ($("#bathroom_self").val() == '' && $("#bathroom_public").val() == '') {
                $("#bathroom_self").css('border-color', 'red');
                $("#bathroom_public").css('border-color', 'red');
                $("#bathroom_self").focus();
                choice_type('请填写卫生间数量');
                tj = true;
                return false;
            } else if ($("#bathroom_self").val() == 0 && $("#bathroom_public").val() == '') {
                $("#bathroom_public").css('border-color', 'red');
                $("#bathroom_self").focus();
                choice_type('请填写卫生间数量');
                tj = true;
                return false;
            } else if ($("#bathroom_self").val() == '' && $("#bathroom_public").val() == 0) {
                $("#bathroom_self").css('border-color', 'red');
                $("#bathroom_self").focus();
                choice_type('请填写卫生间数量');
                tj = true;
                return false;
            }
            ////判断卫生间类型
            //var bathroom_type = $('input:radio[name="bathroom-type"]:checked').val();
            //if (bathroom_type == null) {
            //    choice_type("请选择卫生间类型");
            //    return false;
            //}
            //判断出租类型
            var rent_type = $('input:radio[name="lease-type"]:checked').val();
            if (rent_type == null) {
                choice_type("请选择出租类型");
                tj = true;
                return false;
            }
            //房源类型
            var house_type = $('input:radio[name="room-type"]:checked').val();
            if (house_type == null) {
                choice_type("请选择房源类型");
                tj = true;
                return false;
            }
            //验证房源面积
            if ($("#useSize").val() <= 0) {
                $("#useSize").css('border-color', 'red');
                $("#useSize").focus();
                choice_type('请输入房源面积');
                tj = true;
                return false;
            } else if ($("#useSize").val() > 99999) {
                $("#useSize").css('border-color', 'red');
                $("#useSize").focus();
                choice_type('房源面积过大');
                tj = true;
                return false;
            }
            //验证房源套数
            if ($("#sameroom").val() <= 0) {
                $("#sameroom").css('border-color', 'red');
                $("#sameroom").focus();
                choice_type('请输入房源套数');
                tj = true;
                return false;
            }
            //标准入住人数
            if ($("#maxNum").val() <= 0) {
                $("#maxNum").focus();
                choice_type('请选择入住人数');
                tj = true;
                return false;
            }
            //验证床位数
            var flag = 1;
            $('#div_bedtypelist input').each(function () {
                if ($(this).val() == "") {
                    $(this).css('border-color', 'red');
                    $(this).focus();
                    flag = 0;
                    choice_type('请完善床位信息');
                    tj = true;
                    return false;
                }
                if ($(this).val() < 0) {
                    $(this).css('border-color', 'red');
                    $(this).focus();
                    flag = 0;
                    choice_type('床位信息应大于0！');
                    tj = true;
                    return false;
                }
            });
            if ($("#add-yes").prop("checked")) {
                $(".add-beadNum input").each(function () {
                    var value = $(this).val();
                    if (!value) {
                        $(this).focus();
                        flag = 0;
                        choice_type('请添加加床数与金额');
                        tj = true;
                        return false;
                    }
                });
                beadNum = $("input[name=beadnum]").val();
                beadprice = $("input[name=beadprice]").val();
            } else {
                beadNum = 0;
                beadprice = 0;
            }
            if (flag == 0) {
                tj = true;
                return false;
            }
            var postData = {
                "roomid": $("#roomid").val(),//房源id
                "title": $("#title").val().trim(),//标题
                "bedroom": $("#woshi").val(),//卧室数
                "livingroom": $("#keting").val() == "" ? 0 : $("#keting").val(),//客厅数
                "bathroom_self": $("#bathroom_self").val() == "" ? 0 : $("#bathroom_self").val(),//独立卫生间数
                "bathroom_public": $("#bathroom_public").val() == "" ? 0 : $("#bathroom_public").val(),//公共卫生间数
                "rent_type": rent_type,//出租类型
                "house_type": house_type,//房源类型
                "max_num": $("#maxNum").val(),//最多入住人数
                "size": $("#useSize").val(),//面积
                "sameroom": $("#sameroom").val(),//房源套数
                "subtitle": $("#subtitle").val().trim(),
                "isaddbed": $("#div_add_type input:checked").val(),
                "add_bed_num": beadNum,
                "add_bed_price": beadprice,
                "kitchenroom": $("#chufang").val(),//厨房数
            };
            var datastr = JSON.stringify(postData);
            //提交
            $.post("Room/Submit_Step2", {
                postData: datastr,
                JsonParams: getBedList(),
                roomid: 203026
            }, function (data) {
//                var jsonData = JSON.parse(data);
                var jsonData = data;
                if (jsonData.status == 0) {
                    window.location.href = "step3";
                } else {
                    alert(jsonData.message);
                    tj = true;
                }
            });
        }
    }

    //获取床型列表
    function getBedList() {
        var list = '';
        var idx = 0;
        $('#div_bedtypelist select,#div_bedtypelist input').each(function () {
            if (idx % 4 != 0) {
                if (list == '')
                    list += $(this).val();
                else
                    list += ',' + $(this).val();
            }
            else {
                if (idx != 0)
                    list += '|' + $(this).val();
                else
                    list += $(this).val();
            }
            idx++;
        });
        return list;
    }

</script>
<script>
    //-----添加床位 begin------//
    var bedTemp = '';
    $(function () {
        bedTemp = $('#bedTemplate').html();
    })

    function addBedType() {
        var flag = 1;
        $('#div_bedtypelist input').each(function () {
            if ($(this).val() == "") {
                $(this).css('border-color', 'red');
                $(this).focus();
                flag = 0;
                return false;
            }
        });
        if (flag == 1)
            $('#div_bedtypelist').append(bedTemp);
    }

    //-----添加床位 end------//
</script>
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
<!--end of header-->
<!--内容部分start-->
<input id="roomid" name="roomid" type="hidden" value="203026">
<div class="release">
    <h3 class="r-address-title">还有3步就能发布您的房源啦</h3>
    <p class="r-title">
        <span style="cursor:pointer;" onclick="location.href=&#39;/room/Step1/203026&#39;;">位置信息</span>|
        <span style="cursor:pointer;" onclick="location.href=&#39;/room/Step2/203026&#39;;" class="c-red">基本信息</span>|
        <span style="cursor:pointer;" onclick="location.href=&#39;/room/Step3/203026&#39;;">价格规则</span>|
        <span style="cursor:pointer;" onclick="location.href=&#39;/room/Step4/203026&#39;;">配套设施</span>|
        <span style="cursor:pointer;" onclick="location.href=&#39;/room/Step5/203026&#39;;">房源描述</span>
    </p>
    <div class="r-content esse-content">
        <h2 class="esse-infor">
            选择房屋的基本信息便于出租和分类
        </h2>
        <div class="esse-list">
            <div class="esse-list-t centerBox">房源标题（必填）</div>
            <div class="esse-list-con clear">
                <div class="esse-layout esse-input room-title" style="margin-bottom:0px;margin-right:0;">
                    <input id="title" placeholder="如：鸟巢附近欧式能做饭两居室" name="title" type="text" maxlength="40"
                           style="width:542px;padding-right:64px;"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);">
                    <span class="text-num"><span class="ready-num">0</span>/<span class="total-num">40</span></span>
                </div>
                <span class="name-titleInfo"></span>
                <p class="titleInfo-content">建议包括：房源位置、风格、特点、重要设施；<br>标题中禁止使用关键词包括：旅馆、宾馆、旅店、旅舍、酒店、酒店式、公寓、**店、客栈、特价、优惠、新开张、促销。
                </p>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t centerBox">房间别名（选填）</div>
            <div class="esse-list-con clear">
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right:0px;">
                    <input placeholder="请输入您的房间别名" id="subtitle" name="title" type="text" maxlength="30"
                           style="width:606px;">
                </div>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">房屋户型（必填）</div>
            <div class="esse-list-con clear">
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <em id="em1" style="display:none;color:#ff9180;" class="moreday-tips c-red">房源内卧室</em>
                    <span>卧室数量</span>
                    <input id="woshi" name="woshi" type="text" onfocus="$(&#39;#em1&#39;).show()"
                           onblur=" $(&#39;#em1&#39;).hide()" maxlength="3" placeholder="卧室数量"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);" value="1">
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <span>客厅数量</span>
                    <input id="keting" name="keting" type="text" maxlength="3" placeholder="请输入数量" value="0">
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <span>厨房数量</span>
                    <input id="chufang" name="chufang" type="text" maxlength="3" placeholder="请输入数量" value="0">
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <span>独立卫生间数量</span>
                    <input id="bathroom_self" name="bathroom_self" type="text" maxlength="2" placeholder="请输入数量"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);">
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <span>公共卫生间数量</span>
                    <input id="bathroom_public" name="bathroom_public" type="text" maxlength="2" placeholder="请输入数量"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);">
                </div>
            </div>
        </div>

        <div class="esse-list">
            <div class="esse-list-t">出租类型（必填）</div>
            <div id="div_rent_type" class="esse-list-con esse-radio">
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="lease-type" id="lease-1" value="1"
                           style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label style="margin-bottom:0" for="lease-1">整租</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="lease-type" id="lease-2" value="2"
                           style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label style="margin-bottom:0" for="lease-2">单间</label></div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">房源类型（必填）</div>
            <div id="div_room_type" class="esse-list-con esse-radio">
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-1" value="1" style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-1">民居</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-2" value="2" style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-2">客栈</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-4" value="4" style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-4">公寓</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-7" value="7" style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-7">独栋别墅</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-9" value="9" style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-9">四合院</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-12" value="12"
                           style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-12">农家院</label>
                <div class="iradio_flat-red" style="position: relative;">
                    <input type="radio" name="room-type" id="room-16" value="16"
                           style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="room-16">其它</label>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">房源使用（必填）</div>
            <div class="esse-list-con clear">
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <span>标准入住人数</span>
                    <select id="maxNum">
                        <option value="1" selected="selected">1人</option>
                        <option value="2">2人</option>
                        <option value="3">3人</option>
                        <option value="4">4人</option>
                        <option value="5">5人</option>
                        <option value="6">6人</option>
                        <option value="7">7人</option>
                        <option value="8">8人</option>
                        <option value="9">9人</option>
                        <option value="10">10人</option>
                        <option value="11">11人</option>
                        <option value="12">12人</option>
                        <option value="13">13人</option>
                        <option value="14">14人</option>
                        <option value="15">15人</option>
                        <option value="16">16人</option>
                        <option value="17">17人</option>
                        <option value="18">18人</option>
                        <option value="19">19人</option>
                        <option value="20">20人</option>
                        <option value="21">21人</option>
                        <option value="22">22人</option>
                        <option value="23">23人</option>
                        <option value="24">24人</option>
                        <option value="25">25人</option>
                        <option value="26">26人</option>
                        <option value="27">27人</option>
                        <option value="28">28人</option>
                        <option value="29">29人</option>
                        <option value="30">30人</option>
                        <option value="31">31人</option>
                        <option value="32">32人</option>
                        <option value="33">33人</option>
                        <option value="34">34人</option>
                        <option value="35">35人</option>
                        <option value="36">36人</option>
                        <option value="37">37人</option>
                        <option value="38">38人</option>
                        <option value="39">39人</option>
                        <option value="40">40人</option>
                        <option value="41">41人</option>
                        <option value="42">42人</option>
                        <option value="43">43人</option>
                        <option value="44">44人</option>
                        <option value="45">45人</option>
                        <option value="46">46人</option>
                        <option value="47">47人</option>
                        <option value="48">48人</option>
                        <option value="49">49人</option>
                        <option value="50">50人</option>
                    </select>
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <i class="dollar-icon1" style="top:30px;">m²</i><span>房源面积</span>
                    <input id="useSize" name="useSize" type="text" placeholder="输入面积" maxlength="5"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);">
                </div>
                <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                    <i class="dollar-icon1" style="top:30px;">套</i><span>相同房源数量</span>
                    <input id="sameroom" name="sameroom" type="text" placeholder="输入套数" value="1" maxlength="3"
                           onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;);">
                </div>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">床位信息（必填）</div>
            <div class="esse-list-con clear">
                <div id="div_bedtypelist">
                    <div style="float:left;margin: 0 0 10px 0;">
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <span>床型</span>
                            <select key="">
                                <option value="1">双人床</option>
                                <option value="2">单人床</option>
                                <option value="3">沙发床</option>
                                <option value="4">榻榻米</option>
                                <option value="5">其他</option>
                            </select>
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1" style="top:30px;">米</i>
                            <span>床长度</span>
                            <input key="" type="text" value="" placeholder="输入床长度" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;,&#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1" style="top:30px;">米</i>
                            <span>床宽度</span>
                            <input key="" type="text" value="" placeholder="输入床宽度" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1" style="top:30px;">张</i>
                            <span>床位数</span>
                            <input key="" name="bedobj" type="text" value="" placeholder="输入床位数" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;width:50px;">
                            <a class="delete-bed" href="javascript:void(0);"></a>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
                <p class="add-bed" onclick="addBedType()">继续添加床位</p>
                <div id="bedTemplate" style="display:none;">
                    <div style="float:left;margin: 0 0 10px 0;">
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <select key="">
                                <option value="1">双人床</option>
                                <option value="2">单人床</option>
                                <option value="3">沙发床</option>
                                <option value="4">榻榻米</option>
                                <option value="5">其他</option>
                            </select>
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1">米</i>
                            <input key="" type="text" value="" placeholder="输入床长度" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1">米</i>
                            <input key="" type="text" value="" placeholder="输入床宽度" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <i class="dollar-icon1">张</i>
                            <input key="" name="bedobj" type="text" value="" placeholder="输入床位数" maxlength="3"
                                   onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        </div>
                        <div class="esse-layout esse-input" style="margin-bottom:0px;margin-right: 15px;">
                            <a class="delete-bed" href="javascript:void(0);"
                               onclick="$(this).parent().parent().remove()">删除</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="esse-list last-list">
            <div class="esse-list-t add-bead">能否额外加床（选填）</div>
            <div id="div_add_type" class="esse-list-con esse-radio">
                <div class="iradio_flat-red" style="position: relative;"><input type="radio" name="bead_isAdd"
                                                                                id="add-no" value="1"
                                                                                style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="add-no">不能</label>
                <div class="iradio_flat-red" style="position: relative;"><input type="radio" name="bead_isAdd"
                                                                                id="add-yes" value="2"
                                                                                style="position: absolute; opacity: 0;">
                    <ins class="iCheck-helper"
                         style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                </div>
                <label for="add-yes">能</label>

            </div>
            <div class="add-beadBox clear">
                <div class="add-beadNum">
                    <div class="add-beadInputBox">
                        <span class="reduce-beadNum-btn">-</span>
                        <input type="text" id="beadnum" name="beadnum" placeholder="请输入加床数量" maxlength="2"
                               onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        <span class="add-beadNum-btn">+</span>
                    </div>
                    <p class="input-titleInfo">床数量</p>
                </div>
                <div class="add-beadPrice">
                    <div class="add-beadPrice">
                        <input type="text" id="beadprice" name="beadprice" placeholder="请输入加床金额" maxlength="4"
                               onkeydown="$(this).css(&#39;border-color&#39;, &#39;#dddddd&#39;)">
                        <span>元/床/晚</span>
                    </div>
                    <p class="input-titleInfo">床金额</p>
                </div>
            </div>
        </div>
    </div>
    <a href="javascript:void(0);" class="save-continue releasebtn" onclick="step1_submit()">
        <span class="choice-type"></span>
        <span class="preser">保存并继续</span>
        还剩3步完成发布
    </a>
</div>
<script src="${staticRoot}/add/release.js.下载"></script>
<script src="${staticRoot}/add/icheck.min.js.下载"></script>
<script>
    $(document).ready(function () {
        getroomdate();
        getbedsdate();
        $('input').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red'
        });
        $('.esse-content input').each(function (a, b) {
            $(b).on('ifChecked', function () {
                $(".refund-con").eq(a).show().siblings(".refund-con").hide();
                $(this).attr("checked", "checked");
            });
        });

        $('.other-rule input').each(function (a, b) {
            $(b).on('ifUnchecked', function () {
                $(this).removeAttr("checked");
            });
        });
        /*new add出租类型联动房屋类型样式*/
        $(".name-titleInfo").hover(function () {
            $(this).parent().find(".titleInfo-content").show();
        }, function () {
            $(this).parent().find(".titleInfo-content").hide();
        });
        $("#div_add_type label,#div_add_type ins").click(function () {
            if ($(this).attr("for") == "add-yes" || $(this).siblings("input").val() == 2) {
                $("#div_add_type").next().show();
                return false;
            }
            $("#div_add_type").next().hide();
        });
        $(".add-beadBox").on("keyup", "input", function () {
            var reg = /^\d+$/, value = $(this).val();
            if (value && !reg.test(value)) {
                $(this).val("");
                return false;
            }
            if (value && $(this).attr("name") == "beadnum") {
                if (value > 50) {
                    alert("最大加床数量为50，请重新输入");
                    $(this).val("");
                    return false;
                } else if (value < 1) {
                    alert("加床数量不能小于1");
                    $(this).val("");
                    return false;
                }
            }
            if (value && $(this).attr("name") == "beadprice") {
                if (value < 1) {
                    alert("加床金额不能小于1");
                    $(this).val("");
                    return false;
                }
            }
        });
        $(".add-beadInputBox span").click(function () {
            var obj = $(this).prev().length ? $(this).prev() : $(this).next(), value = obj.val();
            !value ? value = 0 : void (0);
            if ($(this).hasClass("add-beadNum-btn") && value < 50) {
                value++;
            } else if ($(this).hasClass("reduce-beadNum-btn") && value > 1) {
                value--;
            }
            obj.val(value);
        });
        $("#title").on("keyup", function () {
            if ($(this).val().length <= 40) {
                $(this).next().find(".ready-num").html($(this).val().length);
            }
        });
        //点击时
        $('#div_rent_type label').on('click', function () {
            if ($(this).html() == '整租') {
                $('#div_room_type div:eq(1)').css('display', 'none');
                $('#div_room_type label:eq(1)').css('display', 'none');
                $('#room-2').removeAttr('checked');
                $('#room-2').parent().attr('class', 'iradio_flat-red');
                setstyle1(1)
            }
            else if ($(this).html() == '单间') {
                $('#div_room_type div:eq(1)').show();
                $('#div_room_type label:eq(1)').show();
                setstyle1(2)
            }
            else if ($(this).html() == '床位') {
                $('#div_room_type div:eq(1)').show();
                $('#div_room_type label:eq(1)').show();
                setstyle1(3)
            }
        })
        $('#div_rent_type div ins').on('click', function () {
            if ($(this).siblings('input').val() == 1) {
                $('#div_room_type div:eq(1)').css('display', 'none');
                $('#div_room_type label:eq(1)').css('display', 'none');
                $('#room-2').removeAttr('checked');
                $('#room-2').parent().attr('class', 'iradio_flat-red');
                setstyle1(1)
            }
            else if ($(this).siblings('input').val() == 2) {
                $('#div_room_type div:eq(1)').show();
                $('#div_room_type label:eq(1)').show();
                setstyle1(2)
            }
            else if ($(this).siblings('input').val() == 3) {
                $('#div_room_type div:eq(1)').show();
                $('#div_room_type label:eq(1)').show();
                setstyle1(3)
            }
        })
    })

    function setstyle1(tp) {
        if (tp == 1) {
            $('#span_maxNum').html('标准入住人数');
            $('#span_sameroom').html('出租套数/含此房');
            $('#span_sign1').html('套');
        }
        else if (tp == 2) {
            $('#span_maxNum').html('标准入住人数');
            $('#span_sameroom').html('出租间数/含此间');
            $('#span_sign1').html('间');
        }
        else if (tp == 3) {
            $('#span_maxNum').html('床位容纳人数');
            $('#span_sameroom').html('出租床数/含此床');
            $('#span_sign1').html('位');
        }
    }

    //===============验证===============
    function isPositiveNum(s) {//是否为>1的正整数
        var re = /^[1-9]*[1-9][0-9]*$/;
        return re.test(s)
    }

    function isPositiveDouble(s) {//是否为>0的正实数
        var re = /^[0-9]*([0-9].[0-9]*)?$/;
        return re.test(s)
    }

    //验证使用面积>0
    $('#useSize').keyup(function () {
        var flg = isPositiveNum($('#useSize').val());
        if (!flg) {
            $('#useSize').val('');
        }
    });
    //验证房源套数>0
    $('#sameroom').keyup(function () {
        var flg = isPositiveNum($('#sameroom').val());
        if (!flg) {
            $('#sameroom').val('');
        }
    });
    //卧室
    $('#woshi').keyup(function () {
        var flg = isPositiveNum($('#woshi').val());
        if (!flg) {
            $('#woshi').val('');
        }
    });
    //客厅
    $('#keting').keyup(function () {
        var flg = isPositiveNum($('#keting').val());
        if (!flg) {
            $('#keting').val('');
        }
    });
    //卫生间数量
    $('#bathroom_self').keyup(function () {
        var flg = isPositiveNum($('#bathroom_self').val());
        if (!flg) {
            $('#bathroom_self').val('');
        }
    });
    $('#bathroom_public').keyup(function () {
        var flg = isPositiveNum($('#bathroom_public').val());
        if (!flg) {
            $('#bathroom_public').val('');
        }
    });
    //验证床位
    $('#div_bedtypelist input').keyup(function () {
        var flg = isPositiveDouble($(this).val());
        if (!flg) {
            $(this).val('');
        }
    });
    $('[name="bedobj"]').keyup(function () {
        var flg = isPositiveNum($(this).val());
        if (!flg) {
            $(this).val('');
        }
    });

    /*获取房源的基本信息*/
    function getroomdate() {
        $.ajax({
            type: "post",
            url: "/Room/req",
            dataType: "json",
            async: false,
            data: {
                step: "102_3",
                data: '{roomid:"203026"}'
            },
            success: function (json) {
                var room = JSON.parse(json).data.data;
                $('#title').val(room.title);//标题
                if (room.title.length > 0) {
                    $(".ready-num").html(room.title.length);
                }
                $('#subtitle').val(room.sub_title);//标题别名
                $('#woshi').val(room.bedroom);//卧室数量
                $('#keting').val(room.livingroom);//客厅数量
                $('#chufang').val(room.kitchenroom);//厨房数量
                $('#bathroom_self').val(room.bathroom_self == 0 ? "" : room.bathroom_self);//独立卫生间数量
                $('#bathroom_public').val(room.bathroom_public == 0 ? "" : room.bathroom_public);//公共卫生间数量
                $('#maxNum').val(room.max_num == 0 ? "1" : room.max_num);//入住人数
                $('#useSize').val(room.size == 0 ? "" : room.size);//房源面积
                $('#sameroom').val(room.sameroom);//相似房源数
                var rent_type = room.rent_type;
                var rent_typehtml = "";
                if (rent_type.length > 0) {
                    for (i = 0; i < rent_type.length; i++) {
                        if (rent_type[i].check) {
                            rent_typehtml += "<input type=\"radio\" checked name=\"lease-type\" id=\"lease-" + rent_type[i].id + "\" value=\"" + rent_type[i].id + "\" /><label style=\"margin-bottom:0\" for=\"lease-" + rent_type[i].id + "\">" + rent_type[i].name + "</label>";
                        } else {
                            rent_typehtml += "<input type=\"radio\"  name=\"lease-type\" id=\"lease-" + rent_type[i].id + "\" value=\"" + rent_type[i].id + "\" /><label style=\"margin-bottom:0\" for=\"lease-" + rent_type[i].id + "\">" + rent_type[i].name + "</label>";
                        }
                    }
                }
                $('#div_rent_type').html(rent_typehtml);//出租类型
                var house_type = room.house_type;
                var house_typehtml = "";
                if (house_type.length > 0) {
                    for (i = 0; i < house_type.length; i++) {
                        if (house_type[i].check) {
                            house_typehtml += ' <input type="radio" checked name="room-type" id="room-' + house_type[i].id + '" value="' + house_type[i].id + '" /><label for="room-' + house_type[i].id + '">' + house_type[i].name + '</label>';
                        } else {
                            house_typehtml += ' <input type="radio" name="room-type" id="room-' + house_type[i].id + '" value="' + house_type[i].id + '" /><label for="room-' + house_type[i].id + '">' + house_type[i].name + '</label>';
                        }

                    }
                }
                $('#div_room_type').html(house_typehtml);//房源类型
                var add_bed_num = room.add_bed_num;
                if (add_bed_num > 0) {
                    $('#add-yes').prop("checked", true);//能否额外加床
                    $(".add-beadBox").show();
                } else {
                    $('#add-no').prop("checked", true);//能否额外加床
                }
                $('#beadprice').val(room.add_bed_price == 0 ? "" : room.add_bed_price);//加床的金额
                $('#beadnum').val(room.add_bed_num == 0 ? "" : room.add_bed_num);//加床的数量

            },
            error: function () {
            }
        });
    }

    /*获取房源床的信息*/
    function getbedsdate() {
        $.ajax({
            type: "post",
            url: "/Room/req",
            dataType: "json",
            async: false,
            data: {
                step: "102_4",
                data: '{roomid:"203026"}'
            },
            success: function (json) {
                var roombeds = JSON.parse(json).data.data;
                var beds = roombeds.beds;
                var bedsinfo = roombeds.beds.have;//房源添加的床的信息
                var bedstype = roombeds.beds.temp;//床的类型
                var bedsinfohtml = "";
                var bedstypehtml = "";
                if (bedsinfo.length > 0) {
                    for (i = 0; i < bedsinfo.length; i++) {
                        if (i == 0) {
                            bedsinfohtml += "<div style=\"float:left;margin: 0 0 10px 0;\"><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><span>床型</span><select key>";
                        }
                        else {
                            bedsinfohtml += "<div style=\"float:left;margin: 0 0 10px 0;\"><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><select key>";
                        }
                        for (var z = 0; z < bedstype.length; z++) {
                            if (bedsinfo[i].name == bedstype[z].name) {
                                bedstypehtml += "<option selected=\"selected\" value=\"" + bedstype[z].id + "\">" + bedstype[z].name + "</option>";
                            } else {
                                bedstypehtml += "<option value=\"" + bedstype[z].id + "\">" + bedstype[z].name + "</option>";
                            }
                        }
                        bedsinfohtml += bedstypehtml;
                        if (i == 0) {
                            bedsinfohtml += "</select></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><i class=\"dollar-icon1\" style=\"top:30px;\">米</i><span>床长度</span><input key type=\"text\" value=\"" + bedsinfo[i].lenth + "\" placeholder=\"输入床长度\" maxlength=\"3\" onkeydown=\"$(this).css('border-color','#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"> <i class=\"dollar-icon1\" style=\"top:30px;\">米</i><span>床宽度</span><input key type=\"text\" value=\"" + bedsinfo[i].width + "\" placeholder=\"输入床宽度\" maxlength=\"3\" onkeydown=\"$(this).css('border-color', '#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><i class=\"dollar-icon1\" style=\"top:30px;\">张</i><span>床位数</span><input key name=\"bedobj\" type=\"text\" value=\"" + bedsinfo[i].num + "\" placeholder=\"输入床位数\" maxlength=\"3\" onkeydown=\"$(this).css('border-color', '#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;width:50px;\"><a class=\"delete-bed\" href=\"javascript:void(0);\"></a></div></div>";
                        }
                        else {
                            bedsinfohtml += "</select></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><i class=\"dollar-icon1\">米</i><input key type=\"text\" value=\"" + bedsinfo[i].lenth + "\" placeholder=\"输入床长度\" maxlength=\"3\" onkeydown=\"$(this).css('border-color', '#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><i class=\"dollar-icon1\">米</i><input key type=\"text\" value=\"" + bedsinfo[i].width + "\" placeholder=\"输入床宽度\" maxlength=\"3\" onkeydown=\"$(this).css('border-color', '#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><i class=\"dollar-icon1\">张</i><input key name=\"bedobj\" type=\"text\" value=\"" + bedsinfo[i].num + "\" placeholder=\"输入床位数\" maxlength=\"3\" onkeydown=\"$(this).css('border-color', '#dddddd')\" /></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"></div><div class=\"esse-layout esse-input\" style=\"margin-bottom:0px;margin-right: 15px;\"><a class=\"delete-bed\" href=\"javascript:void(0);\" onclick=\"$(this).parent().parent().remove()\">删除</a></div></div>";
                        }

                    }
                    $("#div_bedtypelist").html(bedsinfohtml);
                }
            },
            error: function () {
            }
        });
    }
</script>
<br><br>
<link href="${staticRoot}/add/w_style.css" rel="stylesheet" type="text/css">
<div class="w_footerbox" id="s_mn_footerbox">
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
            <a href="http://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a><span
                class="m10">|</span><a href="http://www.muniao.com/single_3.html" target="_blank"
                                       title="木鸟短租客服">联系我们</a><span class="m10">|</span><a
                href="http://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a><span
                class="m10">|</span><a href="http://www.muniao.com/single_5.html" rel="nofollow" target="_blank"
                                       title="新手指南">新手指南</a><span class="m10">|</span><a
                href="http://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a><span
                class="m10">|</span><a href="http://www.muniao.com/single_7.html" rel="nofollow" target="_blank"
                                       title="加入我们">加入我们</a><span class="m10">|</span><a
                href="http://www.muniao.com/list_news_0_1.html" target="_blank" title="新闻资讯">新闻资讯</a><span
                class="m10">|</span><a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a><span
                class="m10">|</span><a href="http://www.muniao.com/single_9.html" rel="nofollow" target="_blank"
                                       title="媒体报道">媒体报道</a>
        </div>
        <div class="s_mn_footer_nav f12">客服电话：400-056-0055 或 010-89180879<span
                class="m10">客户服务：service@muniao.com</span><span class="m10">意见反馈：feedback@muniao.com</span></div>
        <div class="s_mn_footer_nav f12">网站备案/许可证号：京ICP备12043553号-3&nbsp;京公网安备11010802011855号&nbsp;北京爱游易科技有限公司</div>
        <div class="s_mn_security">
            <ul class="s_mn_security_list">
                <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心" target="_blank"><img
                        src="${staticRoot}/add/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109" height="50"></a></li>
                <li><a href="http://www.cyberpolice.cn/wfjb/" rel="nofollow" title="网络110" target="_blank"><img
                        src="${staticRoot}/add/pic2.jpg" alt="网络110" title="网络110" width="109" height="50"></a></li>
                <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img
                        src="${staticRoot}/add/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109" height="50"></a></li>
                <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测"
                       target="_blank"><img src="${staticRoot}/add/pic6.jpg" alt="安全检测" title="安全检测" width="109" height="50"></a>
                </li>
            </ul>
        </div>
    </div>
</div>


<script type="text/javascript" src="${staticRoot}/add/lat"></script>
<script type="text/javascript" src="${staticRoot}/add/lt"></script>
<script type="text/javascript" src="${staticRoot}/add/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/add/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/add/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/add/code"></script>
</body>
</html>