<!DOCTYPE html>
<!-- saved from url=(0041)http://user2.muniao.com/Room/Step3/203026 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script src="${staticRoot}/add/jquery-1.10.2.min.js.下载"></script>
    <script src="${staticRoot}/add/city_info.js.下载"></script>
    <script src="${staticRoot}/add/city_cn2en.js.下载"></script>
    <script src="${staticRoot}/add/checkbrowser.js.下载"></script>
    <link href="${staticRoot}/add/jquery.datetimepicker.css" rel="stylesheet">
    <link href="${staticRoot}/add/reset.css" rel="stylesheet">
    <link href="${staticRoot}/add/style_single.css" rel="stylesheet">
    <link href="${staticRoot}/add/style.css" rel="stylesheet" type="text/css">
    <link href="${staticRoot}/add/webuploader.css" rel="stylesheet" type="text/css">
    <script>
        function html2Escape(sHtml) {
            return sHtml.replace(/[<>&"]/g, function (c) { return { '<': '&lt;', '>': '&gt;', '&': '&amp;', '"': '&quot;' }[c]; });
        }
        //转意符换成普通字符
        function escape2Html(str) {
            var arrEntities = { 'lt': '<', 'gt': '>', 'nbsp': ' ', 'amp': '&', 'quot': '"' };
            return str.replace(/&(lt|gt|nbsp|amp|quot);/ig, function (all, t) { return arrEntities[t]; });
        }
        //日期天数加n天 方法 d为日期
        function addDateDay(d, n) {
            var d = new Date(d);
            //当前日期的毫秒数 + 天数 * 一天的毫秒数
            var n = d.getTime() + n * 24 * 60 * 60 * 1000;
            var result = new Date(n);
            var newdate = result.getFullYear() + "-" + (result.getMonth() + 1) + "-" + result.getDate();
            return new Date(newdate.replace(/\-/g, "\/"));
        }
    </script>
    <script>
        function isPositiveNum(s) {//是否为正整数
            var re = /^[0-9]*[1-9][0-9]*$/;
            return re.test(s)
        }
        $(function () {
            //金额正整数判断
            $('#priceday').keyup(function () {
                var flg = isPositiveNum($('#priceday').val());
                if (!flg) {
                    $('#priceday').val('');
                }
            });
            $('#depositmoney').keyup(function () {
                var flg = isPositiveNum($('#depositmoney').val());
                if (!flg) {
                    $('#depositmoney').val('');
                }
            });
            $('#pricemonth').keyup(function () {
                var flg = isPositiveNum($('#pricemonth').val());
                if (!flg) {
                    $('#pricemonth').val('');
                }
            });
            $('.setWeekPrice input,.setLongPrice input').keyup(function () {
                var flg = isPositiveNum($(this).val());
                if ($(this).prop("name") == "longdepositmoney" && Number($(this).val()) >= 0) {
                    return false;
                }
                if (!flg) {
                    $(this).val('');
                }


            })
        })
    </script>
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
<div style="background:#ff6180;  width:100%; height:50px; line-height:50px; text-align:center; font-size:14px; color:#fff; font-family:"微软雅黑";>
温馨提示：您目前的浏览器版本过低，网站部分功能无法正常使用，建议尽快升级：
<a href="http://www.chromeliulanqi.com/" target="_blank" name="升级谷歌浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="/Content/images/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="/Content/images/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"> <a href="http://www.muniao.com/"><img src="${staticRoot}/add/mn_logo.png" width="80" height="40"></a> </h2>
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/add/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活"></div>
    <ul class="s_mn_nav">
        <li><a href="http://www.muniao.com/">首页</a></li>
        <li><a href="http://www.muniao.com/features.html" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img src="${staticRoot}/add/give88.png"></i></a></li>
    </ul>
    <div id="div_FangKe1" class="s_mn_release w_mR30" style="display:none;">
        <a href="http://user2.muniao.com/Index/MoveHouse?utp=1" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style="">
        <a href="http://user2.muniao.com/Index/MoveHouse?utp=1" class="free-publishBtn">免费发布房源</a>

        <span>Hi,欢迎回来！</span>
        <a class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank" onmouseover="$(&#39;#div_FangKe&#39;).show(); $(&#39;#div_FangDong&#39;).show();">嘉利学府</a>
        <!--房东弹出框-->
        <div id="div_FangDong" class="w_user_xl" style="border-radius: 3px; opacity: 0.8; background-color: rgb(191, 82, 13); border: 0px; display: none;" onmouseover="$(&#39;#div_FangDong&#39;).show();" onmouseout="$(&#39;#div_FangDong&#39;).hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font" style="text-align:left;"><a href="http://user2.muniao.com/SystemMsg/Index?utp=1" rel="nofollow" target="_blank" style="font-family:微软雅黑;color:#fff;">房东中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Index/MoveHouse?utp=1" style="font-size:12px;font-family:微软雅黑;color:#fff;">发布房间</a></li>
                    <li><a href="http://user2.muniao.com/Order/Index?utp=1&amp;type=8" style="font-size:12px;font-family:微软雅黑;color:#fff;">订单管理</a></li>
                    <li><a href="http://user2.muniao.com/Room/Index?utp=1&amp;c=3" style="font-size:12px;font-family:微软雅黑;color:#fff;">房源管理</a></li>
                    <li><a href="http://www.muniao.com/fd_mobile.html" style="font-size:12px;font-family:微软雅黑;color:#fff;">房东助手</a></li>
                </ul>
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;"><a href="http://user2.muniao.com/SystemMsg/Index?utp=2" rel="nofollow" target="_blank" style="font-family:微软雅黑;color:#fff;">房客中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8" style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="http://www.muniao.com/mobile.html?utp=2" style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;"><a href="javascript:void(0);" onclick="logout()" style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a></div>
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
        -moz-transform: scaleY(0.5) scaleX(0.5);
    ;
        -ms-transform: scaleY(0.5) scaleX(0.5);
    ;
        -o-transform: scaleY(0.5) scaleX(0.5);
    ;
        transform: scaleY(0.5) scaleX(0.5);
    ;
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
        box-shadow: 0 0 8px 1px rgba(0,0,0,.24);
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
        background: url("../../Content/images/newa_close.png") no-repeat;
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
        background: url("../../Content/images/login_icon.png") no-repeat 0 -53px;
    }

    .newa_l_password_icon {
        background: url("../../Content/images/login_icon.png") no-repeat -18px -53px;
    }

    .newa_login_input li i.newa_kj_icon {
        background: url("../../Content/images/login_icon.png") no-repeat 0 -74px;
        width: 14px;
        height: 18px;
    }

    .newa_login_input li i.newa_piccode_icon {
        background: url("../../Content/images/login_icon.png") no-repeat 0 -97px;
        top: 15px;
        width: 17px;
        height: 14px;
    }

    .newa_login_input li i.newa_code_icon {
        background: url("../../Content/images/login_icon.png") no-repeat 0 -116px;
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
        background: url("../../Content/images/login_btn.png")no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("../../Content/images/login_btn.png")no-repeat -310px 0;
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
        background: url("../../Content/images/login_icon.png") no-repeat 0 -25px;
    }

    .newa_coop .newa_qq {
        width: 18px;
        height: 20px;
        background: url("../../Content/images/login_icon.png") no-repeat -1px 0;
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
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 126 }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -2) {//短信验证码错误
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('短信验证码错误');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                } else if (j.state==-22) {
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('验证码已经失效，请重新获取验证码！');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
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
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -2) {
                    $('#Login_Email_Tel_M').focus();
                    $('.newa_tips_text').html('账号已锁定');
                    $(".newa_tips").css({ "margin-left": -(newa_len * 12 + 82) / 2, "top": 186 }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == -3) {
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
        $.get('/Login/SendValidCode', { mob: $('#login_Tel_M').val(), ValidCode: $('#login_ValidCode').val().trim() }, function (data) {
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
    function getImageCode(obj)
    {
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

                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg" src="${staticRoot}/add/VerifyCode" onclick="getImageCode(this);"></a>
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
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a> </p>
        <div class="newa_coop">
            <a class="newa_sina" href="https://api.weibo.com/oauth2/authorize?state=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;client_id=3437054643&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2FHome%2FCallBack%3Fchannel%3Dweibo"></a>
            <a class="newa_qq" href="https://graph.qq.com/oauth2.0/authorize?state=Login&amp;client_id=101214959&amp;response_type=code&amp;redirect_uri=http://www.muniao.com/home/callback?channel=qq&amp;fromurl=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;scope=get_user_info,get_fanslist,get_idollist,add_idol"></a>
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
            <div class="icheckbox_flat-red" style="position: relative;"><input id="newa_auto_l" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
            <label for="newa_auto_l">下次自动登录</label>
        </div>
        <a class="newa_login_btn newa_ordinary" href="javascript:void(0);" onclick="toLogin(1)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a> </p>
        <div class="newa_coop">
            <a class="newa_sina" href="http://user2.muniao.com/Room/Step3/203026#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Room/Step3/203026#"></a>
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



<!--end of header-->
<!--内容部分start-->
<input type="hidden" id="roomid" value="203026">
<div class="release">
    <h3 class="r-address-title">还有2步就能发布您的房源啦</h3>
    <p class="r-title">
        <span style="cursor:pointer;" onclick="location.href=&#39;/Room/Step1/203026&#39;;">位置信息</span>|
        <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step2/203026&#39;;">基本信息</span>|
        <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step3/203026&#39;;" class="c-red">价格规则</span>|
        <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step4/203026&#39;;">配套设施</span>|
        <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step5/203026&#39;;">房源描述</span>
    </p>
    <div class="r-content esse-content">
        <h2 class="esse-infor">为您的房源设置一个基础日单价及交易规则</h2>
        <div class="esse-list">
            <div class="esse-list-t centerBox">短租价格设置</div>
            <div class="esse-list-con clear">
                <div class="day-unit esse-input publish-priceArea">
                    <span>短租日价（每晚）</span>
                    <i class="dollar-icon">￥</i>
                    <input id="priceday" type="text" value="0" maxlength="5" placeholder="请输入金额">
                </div>
                <div class="price-coverDate">
                    <span>是否覆盖日历上单独设置的价格</span>
                    <div class="iradio_flat-red checked" style="position: relative;"><input type="radio" name="over" value="0" id="cover" checked="checked" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label for="cover">不覆盖</label>
                    <div class="iradio_flat-red" style="position: relative;"><input type="radio" name="over" id="no-cover" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label for="no-cover">覆盖</label>
                </div>
                <p class="publish-priceInfo">服务费规定：日价的10%将作为服务费，请斟酌考虑。</p>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t centerBox">短租押金设置</div>
            <div class="esse-list-con clear">
                <div class="day-unit esse-input publish-priceArea">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="deposit" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="deposit">是否收取押金</label>
                    <div class="price-depositBox" style="visibility: hidden;">
                        <i class="dollar-icon">￥</i>
                        <input id="depositmoney" type="text" maxlength="5" placeholder="请输入押金">
                    </div>
                </div>
                <p class="publish-priceInfo">押金收取规则：押金不计入线上房款的收取，线下到店收取！</p>
            </div>
        </div>
        <div class="esse-list">
            <div class="free-depositList">
                <div class="esse-list-t">芝麻信用免押</div>
                <div class="esse-list-con clear">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="alipay-free" type="checkbox" value="0" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="alipay-free">是否开启</label>
                    <span class="free-info">（芝麻信用达到600及以上免押金）</span>
                    <span class="free-tipsIcon"></span>
                    <p class="tips-content">木鸟使用芝麻信用衡量用户信用水平，打造更真实的短租环境，用心维护人与人之间的信任。获得芝麻信用标识的用户，即为身份真实的实名用户。芝麻信用分为5个等级：350~550为较差；550~600为中等；600~650为良好；650~700为优秀；700~950为极好。</p>
                </div>
            </div>
            <div class="free-depositList jd-free">
                <div class="esse-list-t">小白信用免押</div>
                <div class="esse-list-con clear">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="jd-free" type="checkbox" value="0" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="jd-free">是否开启</label>
                    <span class="free-info">（小白信用90及以上免押金）</span>
                    <span class="free-tipsIcon"></span>
                    <p class="tips-content">用户授权木鸟短租获得小白信用信息，小白信用90及以上的用户可以享受海量房源免押入住特权。小白信用用户均为京东金融实名用户，可以增加房客和房东之间的信任，更有利于打造真实、安全、有效的租房环境；小白信用分为5个等级： 0~60为一般；60~70为中等；70~80为良好；80~90为优秀；90以上为极好。</p>
                </div>
            </div>
            <p class="publish-priceInfo info-padding">（注：开启芝麻信用免押或小白信用免押需要您严格遵守免押服务，如产生大量投诉或举报，系统将会关闭免押信息。）</p>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">星期特殊价格</div>
            <div class="esse-list-con clear">
                <div class="day-unit esse-input publish-priceArea">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="week-price" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="week-price">是否设置星期特殊价</label>
                </div>
                <div class="week-priceMain">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input id="start_date_discount" type="text" readonly="readonly" value="" placeholder="请选择日期" othername="请选择开始时间！">
                            <span class="date-title">特殊价开始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input id="end_date_discount" type="text" readonly="readonly" value="" placeholder="请选择日期" othername="请选择结束时间！">
                            <span class="date-title">特殊价结束时间</span>
                        </div>
                    </div>
                    <!--每周特殊价格日-->
                    <div class="week-offersDay">
                        <span class="offersDay-title">每周特殊价格日</span>
                        <ul class="week-dayList">
                            <li data-week="1">周一</li>
                            <li data-week="2">周二</li>
                            <li data-week="3">周三</li>
                            <li data-week="4">周四</li>
                            <li data-week="5">周五</li>
                            <li data-week="6">周六</li>
                            <li class="last" data-week="0">周日</li>
                        </ul>
                    </div>
                    <!--set price-->
                    <div class="setWeekPrice">
                        <span>设置特殊价格</span>
                        <input type="text" id="weekprice" maxlength="4" name="weekprice" placeholder="请输入价格">
                        <span>元</span>
                    </div>
                </div>
                <div class="week-priceMain disabled">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价开始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价结束时间</span>
                        </div>
                    </div>
                    <!--每周特殊价格日-->
                    <div class="week-offersDay">
                        <span class="offersDay-title">每周特殊价格日</span>
                        <ul class="week-dayList">
                            <li>周一</li>
                            <li>周二</li>
                            <li>周三</li>
                            <li>周四</li>
                            <li>周五</li>
                            <li>周六</li>
                            <li class="last">周日</li>
                        </ul>
                    </div>
                    <!--set price-->
                    <div class="setWeekPrice">
                        <span>设置特殊价格</span>
                        <input type="text" readonly="" value="请输入价格">
                        <span>元</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">周月折扣</div>
            <div class="esse-list-con clear">
                <div class="day-unit esse-input publish-priceArea">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="weekMonth-zhe" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="weekMonth-zhe">是否设置周月折扣</label>
                </div>
                <div class="week-priceMain">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input id="start_date_zhe" type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价开始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input id="end_date_zhe" type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价结束时间</span>
                        </div>
                    </div>
                    <!--set zhe-->
                    <div class="setZhe week-zhe">
                        <span>周折扣设置</span>
                        <input type="text" id="weekzhe" name="weekzhe" disabled="" placeholder="请输入周折扣">
                        <span>折</span>
                        <span class="setZhe-info">（满入住7天  折扣设置区间5.0折~9.9折）</span>
                    </div>
                    <div class="setZhe month-zhe">
                        <span>月折扣设置</span>
                        <input type="text" name="monthzhe" id="monthzhe" disabled="" placeholder="请输入月折扣">
                        <span>折</span>
                        <span class="setZhe-info">（满入住30天  折扣设置区间5.0折~9.9折）</span>
                    </div>
                </div>
                <div class="week-priceMain disabled">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价开始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">特殊价结束时间</span>
                        </div>
                    </div>
                    <!--set zhe-->
                    <div class="setZhe week-zhe">
                        <span>周折扣设置</span>
                        <input type="text" readonly="readonly" placeholder="请输入周折扣">
                        <span>折</span>
                        <span class="setZhe-info">（满入住7天  折扣设置区间5.0折~9.9折）</span>
                    </div>
                    <div class="setZhe month-zhe">
                        <span>月折扣设置</span>
                        <input type="text" readonly="readonly" placeholder="请输入月折扣">
                        <span>折</span>
                        <span class="setZhe-info">（满入住30天  折扣设置区间5.0折~9.9折）</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">长租设置</div>
            <div class="esse-list-con clear">
                <div class="day-unit esse-input publish-priceArea">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="long-stay" type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="long-stay">是否设置长租</label>
                </div>
                <span class="long-stayTipIcon"></span>
                <p class="tips-content long-stayTips">
                    1.日期：至少选择30天方可开启长租。<br>
                    2.押金：押金为到店收取，具体金额与房客协商。<br>
                    3.服务费：所有长租订单，只收取订单金额的5%作为佣金。<br>
                    4.交易规则：<br>
                    入住日前五天中午12:00之前申请退款，扣订金总额的10%作为违约金；<br>
                    入住日前五天中午12:00至入住日当天12:00之前申请退款，扣订金总额的30%作为违约金；<br>
                    入住之后提前退房，订金不予退还，作为违约金。<br>
                    申请时间和提前退房时间以木鸟短租系统记录的时间为准
                </p>
                <div class="week-priceMain">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input id="start_date_long" type="text" readonly="" value="" placeholder="请选择日期" othername="请选择开始时间！">
                            <span class="date-title">起始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input id="end_date_long" type="text" readonly="" value="" placeholder="请选择日期" othername="请选择结束时间！">
                            <span class="date-title">结束时间</span>
                        </div>
                    </div>
                    <!--set price-->
                    <div class="setLongPrice">
                        <span>设置长租金额</span>
                        <input type="text" name="longprice" maxlength="5" id="longprice" disabled="" placeholder="请输入价格">
                        <span>元/月</span><br>
                        <span>设置长租押金</span>
                        <input type="text" name="longdepositmoney" maxlength="5" id="longdepositmoney" disabled="" placeholder="请输入押金">
                        <span>元/月</span>
                    </div>
                </div>
                <div class="week-priceMain disabled">
                    <!--时间-->
                    <div class="week-priceDate clear">
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">起始时间</span>
                        </div>
                        <span class="date-split"></span>
                        <div class="date-box">
                            <input type="text" readonly="readonly" value="" placeholder="请选择日期">
                            <span class="date-title">结束时间</span>
                        </div>
                    </div>
                    <!--set price-->
                    <div class="setLongPrice">
                        <span>设置长租金额</span>
                        <input type="text" readonly="" value="请输入价格">
                        <span>元/月</span><br>
                        <span>设置长租押金</span>
                        <input type="text" readonly="" value="请输入押金">
                        <span>元/月</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">交易规则</div>
            <div class="esse-list-con" id="xieyi"><div class="refund-agreement"><div class="refund-fp"><div class="icheckbox_flat-red" style="position: relative;"><input type="checkbox" name="refund-checkbox" id="is_invoice" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-check" for="is_invoice">我可开具发票</label></div> <h3 class="refund-title"><span class="c-red">退款协议</span><div class="iradio_flat-red" style="position: relative;"><input type="radio" name="refundtype" id="refund2" value="2" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-radio" for="refund2">灵活</label><div class="iradio_flat-red checked" style="position: relative;"><input type="radio" checked="" name="refundtype" id="refund0" value="0" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-radio" for="refund0">中等</label><div class="iradio_flat-red" style="position: relative;"><input type="radio" name="refundtype" id="refund1" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-radio" for="refund1">严格</label><div class="iradio_flat-red" style="position: relative;"><input type="radio" name="refundtype" id="refund7" value="7" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-radio" for="refund7">极严</label><div class="iradio_flat-red" style="position: relative;"><input type="radio" name="refundtype" id="refund8" value="8" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><label class="refund-radio" for="refund8">极严15天</label></h3><div class="refund-con" style="display: none;"><h3>房客违约责任</h3><pre style="font-family:microsoft yahei;white-space:pre-line">●    入住当天12:00，如申请退款，订金全额退。<br><br>●    如提前退房，扣除已入住天数房款总额，再扣除未入住天数房款总额的50%。<br><br>●    中午12:00之后默认当天已经入住，申请退款时间和退房时间以木鸟短租系统记录时间为准。</pre></div><div class="refund-con" style="display: block;"><h3>房客违约责任</h3><pre style="font-family:microsoft yahei;white-space:pre-line">●    入住前一天12:00，如申请退款，订金全额退。<br><br>●    入住当天12:00，如申请退款，扣除50%订金。<br><br>●    如提前退房，扣除已入住天数房款总额，再扣除未入住天数房款总额的50%。<br><br>●    中午12:00之后默认当天已经入住，申请退款时间和退房时间以木鸟短租系统记录时间为准。</pre></div><div class="refund-con" style="display: none;"><h3>房客违约责任</h3><pre style="font-family:microsoft yahei;white-space:pre-line">●    入住前三天12:00，如申请退款，订金全额退。<br><br>●    入住当天12:00，如申请退款，扣除50%订金。<br><br>●    如提前退房，扣除已入住天数房款总额，再扣除未入住天数房款总额的50%。<br><br>●    中午12:00之后默认当天已经入住，申请退款时间和退房时间以木鸟短租系统记录时间为准。</pre></div><div class="refund-con" style="display: none;"><h3>房客违约责任</h3><pre style="font-family:microsoft yahei;white-space:pre-line">●    入住前七天12:00，如申请退款，订金全额退。<br><br>●    入住当天12:00，如申请退款，扣除50%订金。<br><br>●    如提前退房，扣除已入住天数房款总额，再扣除未入住天数房款总额的50%。<br><br>●    中午12:00之后默认当天已经入住，申请退款时间和退房时间以木鸟短租系统记录时间为准。</pre></div><div class="refund-con" style="display: none;"><h3>房客违约责任</h3><pre style="font-family:microsoft yahei;white-space:pre-line">●    入住前十五天12:00，如申请退款，订金全额退。<br><br>●    入住当天12:00，如申请退款，扣除50%订金。<br><br>●    如提前退房，扣除已入住天数房款总额，再扣除未入住天数房款总额的50%。<br><br>●    中午12:00之后默认当天已经入住，申请退款时间和退房时间以木鸟短租系统记录时间为准。</pre></div></div></div>
        </div>
        <!---入住规则--->
        <div class="esse-list">
            <div class="esse-list-t">入住规则</div>
            <div class="esse-list-con clear">
                <div class="check-rule esse-input">
                    <span>最少入住天数</span>
                    <input id="minNights" type="text" value="1" maxlength="2" placeholder="最少入住天数">
                </div>
                <div class="check-rule esse-input more-day">
                    <em class="moreday-tips c-red">不限制则为0</em>
                    <span>最多入住天数</span>
                    <input id="maxNights" type="text" value="0" maxlength="2">
                </div>
                <div class="check-rule esse-input more-day">
                    <em class="moreday-tips c-red">请选时间</em>
                    <span>最早入住时间</span>
                    <input id="checkin_time" type="text" value="14" maxlength="2" readonly="readonly">
                    <ul id="checkin_time_list" class="ddlStyle" style="height:200px; overflow:scroll;">
                        <li accesskey="0">0点前</li>
                        <li accesskey="1">1点前</li>
                        <li accesskey="2">2点前</li>
                        <li accesskey="3">3点前</li>
                        <li accesskey="4">4点前</li>
                        <li accesskey="5">5点前</li>
                        <li accesskey="6">6点前</li>
                        <li accesskey="7">7点前</li>
                        <li accesskey="8">8点前</li>
                        <li accesskey="9">9点前</li>
                        <li accesskey="10">10点前</li>
                        <li accesskey="11">11点前</li>
                        <li accesskey="12">12点前</li>
                        <li accesskey="13">13点前</li>
                        <li accesskey="14">14点前</li>
                        <li accesskey="15">15点前</li>
                        <li accesskey="16">16点前</li>
                        <li accesskey="17">17点前</li>
                        <li accesskey="18">18点前</li>
                        <li accesskey="19">19点前</li>
                        <li accesskey="20">20点前</li>
                        <li accesskey="21">21点前</li>
                        <li accesskey="22">22点前</li>
                        <li accesskey="23">23点前</li>

                    </ul>
                    <script>
                        var ddl = $();//下拉框列表容器
                        $("#checkin_time").focus(function () {
                            $("#checkin_time_list").show();
                        });
                        $("#checkin_time_list li").each(function (a, b) {
                            $(b).click(function () {
                                $("#checkin_time").val($(this).attr("accesskey"));
                                $("#checkin_time_list").hide();
                            })
                        });
                        $(document).click(function (e) {
                            if (e.target.id != "checkin_time")
                                $("#checkin_time_list").hide();
                        });
                    </script>
                </div>
                <div class="check-rule esse-input more-day">
                    <em class="moreday-tips c-red">请选时间</em>
                    <span>最晚退房时间</span>
                    <input id="checkout_time" type="text" value="12" maxlength="2" readonly="readonly">
                    <ul id="checkout_time_list" class="ddlStyle" style="height:200px; overflow:scroll;">
                        <li accesskey="0">0点前</li>
                        <li accesskey="1">1点前</li>
                        <li accesskey="2">2点前</li>
                        <li accesskey="3">3点前</li>
                        <li accesskey="4">4点前</li>
                        <li accesskey="5">5点前</li>
                        <li accesskey="6">6点前</li>
                        <li accesskey="7">7点前</li>
                        <li accesskey="8">8点前</li>
                        <li accesskey="9">9点前</li>
                        <li accesskey="10">10点前</li>
                        <li accesskey="11">11点前</li>
                        <li accesskey="12">12点前</li>
                        <li accesskey="13">13点前</li>
                        <li accesskey="14">14点前</li>
                        <li accesskey="15">15点前</li>
                        <li accesskey="16">16点前</li>
                        <li accesskey="17">17点前</li>
                        <li accesskey="18">18点前</li>
                        <li accesskey="19">19点前</li>
                        <li accesskey="20">20点前</li>
                        <li accesskey="21">21点前</li>
                        <li accesskey="22">22点前</li>
                        <li accesskey="23">23点前</li>
                    </ul>
                    <script>
                        var ddl = $();//下拉框列表容器
                        $("#checkout_time").focus(function () {
                            $("#checkout_time_list").show();
                        });
                        $("#checkout_time_list li").each(function (a, b) {
                            $(b).click(function () {
                                $("#checkout_time").val($(this).attr("accesskey"));
                                $("#checkout_time_list").hide();
                            })
                        });
                        $(document).click(function (e) {
                            if (e.target.id != "checkout_time")
                                $("#checkout_time_list").hide();
                        });
                    </script>
                </div>
                <span class="layout-tips">请输入数字</span>
            </div>
        </div>
        <div class="esse-list">
            <div class="esse-list-t">房东要求</div>
            <div class="esse-list-con">
                <textarea id="Disc_rzyq" maxlength="2000" rows="4" placeholder="建议：房客使用您的房间需遵守的规则（如 年龄段、性别、接待时间等）合理的要求可使您避免沟通上的不必要的麻烦。1.需要带好身份证办理入住。2.有什么需要可以跟我们说，我们会尽最大努力满足。3.离店的时候，请带好自己的随身物品 如果有什么遗落，请随时联系我。4.外出请关闭电灯和空调，节约环保，一起保护地球。5.外出与夜晚就寝时，请锁好房门，注意防火防盗。6.请大家爱护房间设施， 房间不要开大party，邻居喜静!"></textarea>
                <div class="owner-request">
                    <a href="javascript:;" class="look-eg">查看示例</a>
                    <span class="text-num"><span class="ready-num">0</span>/<span class="total-num">2000</span></span>
                    <div class="eg-dialog">
                        <p>建议：房客使用您的房间需遵守的规则（如 年龄段、性别、接待时间等）合理的要求可使您避免沟通上的不必要的麻烦。</p>
                        <p>1.需要带好身份证办理入住。</p>
                        <p>2.有什么需要可以跟我们说，我们会尽最大努力满足。</p>
                        <p>3.离店的时候，请带好自己的随身物品 如果有什么遗落，请随时联系我。  </p>
                        <p>4.外出请关闭电灯和空调，节约环保，一起保护地球。 </p>
                        <p>5.外出与夜晚就寝时，请锁好房门，注意防火防盗。</p>
                        <p>6.请大家爱护房间设施， 房间不要开大party，邻居喜静!</p>
                        <a href="javascript:;" class="close-dialog">确定</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="javascript:void(0);" class="releasebtn two-input" onclick="submit()">
        <span class="preser">保存并继续</span>
        还剩2步完成发布
    </a>
</div>
<script src="${staticRoot}/add/release.js.下载"></script>
<script src="${staticRoot}/add/icheck.min.js.下载"></script>
<script src="${staticRoot}/add/jquery.datetimepicker.full.js.下载"></script>
<script>
    Date.prototype.format = function (format) {
        var o = {
            "M+": this.getMonth() + 1, //month
            "d+": this.getDate(), //day
            "h+": this.getHours(), //hour
            "m+": this.getMinutes(), //minute
            "s+": this.getSeconds(), //second
            "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
            "S": this.getMilliseconds() //millisecond
        }

        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }

        for (var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
            }
        }
        return format;
    };
    /*add dateArray--2017/12/11*/
    $.datetimepicker.setLocale('ch');//设置中文
    var dateInit = (function () {
        var initDate = function (startDateTimeId, endDateTimeId, monthnum) {
            var startDate;
            var endDate;
            startDateTimeId = "#" + startDateTimeId;
            endDateTimeId = "#" + endDateTimeId;
            $(startDateTimeId).datetimepicker({
                onGenerate: function (ct) {
                    $(this).find('.xdsoft_disabled').removeClass('xdsoft_disabled');
                },
                format: 'Y/m/d',
                formatDate: 'Y/m/d',
                minDate: '-1970/01/2',
                maxDate: '+1970/01/2',
                yearStart: '2016',
                lang: "ch",
                scrollMonth: false,
                scrollTime: false,
                scrollInput: false,
                onSelectDate: function (t) {
                    if (t.format("yyyy/MM/dd") < new Date().format("yyyy/MM/dd")) {
                        alert('提示：日期不小于今天');
                        $(startDateTimeId).val(new Date().format("yyyy/MM/dd"));
                    }
                    var end = new Date(getMonthBeforeFormatAndDay(monthnum)).format("yyyy/MM/dd");
                    if (t.format("yyyy/MM/dd") > end) {
                        alert('提示：您目前结束日期最大限度到' + end);
                        $(startDateTimeId).val(new Date().format("yyyy/MM/dd"));
                    }
                    if ($(endDateTimeId).val() && new Date($(endDateTimeId).val()).format("yyyy/MM/dd") < t.format("yyyy/MM/dd")) {
                        $(endDateTimeId).val(t.format("yyyy/MM/dd"));
                    }
                    //if (t.format("yyyy/MM/dd") >= new Date($('#end_date_discount').val()).format("yyyy/MM/dd")) {
                    //    alert('提示：日期段选择错误');
                    //    $('#start_date_discount').val('');
                    //}
                    var time_interval = (new Date($(endDateTimeId).val()) - new Date($(startDateTimeId).val())) / 1000 / 60 / 60 / 24;
                    if (startDateTimeId == "#start_date_zhe") {
                        if (time_interval < 7) {
                            $("input[name=weekzhe]").prop("disabled", true);
                            $("input[name=monthzhe]").prop("disabled", true);
                        } else if (time_interval >= 7 && time_interval < 30) {
                            $("input[name=weekzhe]").prop("disabled", false);
                            $("input[name=monthzhe]").prop("disabled", true);
                        } else if (time_interval >= 30) {
                            $("input[name=weekzhe]").prop("disabled", false);
                            $("input[name=monthzhe]").prop("disabled", false);
                        }
                    } else if (startDateTimeId == "#start_date_long") {
                        if (time_interval < 30) {
                            $("input[name=longprice]").prop("disabled", true);
                            $("input[name=longdepositmoney]").prop("disabled", true);
                        } else if (time_interval >= 30) {
                            $("input[name=longprice]").prop("disabled", false);
                            $("input[name=longdepositmoney]").prop("disabled", false);
                        }
                    }
                    $(endDateTimeId).focus();

                },
                onChangeDateTime: function (dp, $input) {
                    startDate = $(startDateTimeId).val();
                },
                timepicker: false
            });
            $(endDateTimeId).datetimepicker({
                onGenerate: function (ct) {
                    $(this).find('.xdsoft_disabled').removeClass('xdsoft_disabled');
                },
                format: 'Y/m/d',
                formatDate: 'Y/m/d',
                minDate: '-1970/01/2',
                maxDate: '+1970/01/2',
                yearStart: '2016',
                lang: "ch",
                scrollMonth: false,
                scrollTime: false,
                scrollInput: false,
                onSelectDate: function (t) {
                    if (t.format("yyyy/MM/dd") < new Date().format("yyyy/MM/dd")) {
                        alert('提示：日期不小于今天');
                        $(endDateTimeId).val(new Date().format("yyyy/MM/dd"));
                        return false;
                    }
                    var end = new Date(getMonthBeforeFormatAndDay(monthnum)).format("yyyy/MM/dd");
                    if (t.format("yyyy/MM/dd") > end) {
                        alert('提示：您目前结束日期最大限度到' + end);
                        $(endDateTimeId).val(end);
                    }
                    //if (t.format("yyyy/MM/dd") <= new Date($('#start_date_discount').val()).format("yyyy/MM/dd")) {
                    //    alert('提示：日期段选择错误');
                    //    $('#start_date_discount').val('');
                    //    return false;
                    //}
                    if ($(startDateTimeId).val() && $(startDateTimeId).val() != $(startDateTimeId).attr("placeholder") && new Date($(startDateTimeId).val()).format("yyyy/MM/dd") > t.format("yyyy/MM/dd")) {
                        alert("结束时间必须大于开始时间");
                        $(endDateTimeId).val(new Date($(startDateTimeId).val()).format("yyyy/MM/dd"));
                        return false;
                    }
                    var time_interval = (new Date($(endDateTimeId).val()) - new Date($(startDateTimeId).val())) / 1000 / 60 / 60 / 24;
                    if (startDateTimeId == "#start_date_zhe") {
                        if (time_interval < 7) {
                            $("input[name=weekzhe]").prop("disabled", true);
                            $("input[name=monthzhe]").prop("disabled", true);
                        } else if (time_interval >= 7 && time_interval < 30) {
                            $("input[name=weekzhe]").prop("disabled", false);
                            $("input[name=monthzhe]").prop("disabled", true);
                        } else {
                            $("input[name=weekzhe]").prop("disabled", false);
                            $("input[name=monthzhe]").prop("disabled", false);
                        }
                    } else if (startDateTimeId == "#start_date_long") {
                        if (time_interval < 30) {
                            $("input[name=longprice]").prop("disabled", true);
                            $("input[name=longdepositmoney]").prop("disabled", true);
                        } else {
                            $("input[name=longprice]").prop("disabled", false);
                            $("input[name=longdepositmoney]").prop("disabled", false);
                        }
                    }
                    endDate = $(endDateTimeId).val();
                },
                timepicker: false
            });
        };
        return {
            initDate: initDate
        };
    })();
    $.datetimepicker.setLocale('ch');//设置中文
    //初始化日期控件
    dateInit.initDate("start_date_discount", "end_date_discount", 6);//特殊价格
    dateInit.initDate("start_date_zhe", "end_date_zhe", 6);//周月折扣
    dateInit.initDate("start_date_long", "end_date_long", 12);//长租
    //求自然月日期
    function getMonthBeforeFormatAndDay(num) {
        var date = new Date();
        var days = date.getDate();
        date.setMonth(date.getMonth() + (num * 1), 1);
        //读取日期自动会减一，所以要加一
        var mo = date.getMonth();
        console.log(mo);
        //小月
        if (mo == 4 || mo == 6 || mo == 9 || mo == 11) {
            if (days > 30) {
                days = 30
            } else { days = 30 }
        }
        //2月
        else if (mo == 2) {
            if (isLeapYear(date.getFullYear())) {
                if (days > 29) {
                    days = 29
                } else {
                    days = 28
                }
            }
            if (days > 28) {
                days = 28
            } else { days = 28 }
        }
        //大月
        else {
            if (days > 31) {
                days = 31
            } else { days = 31 }
        }
        console.log(date);
        retureValue = date.getFullYear() + "/" + mo + '/' + days;
        return retureValue;
    }
    //JS判断闰年代码
    function isLeapYear(Year) {
        if (((Year % 4) == 0) && ((Year % 100) != 0) || ((Year % 400) == 0)) {
            return (true);
        } else { return (false); }
    }
</script><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div><div class="xdsoft_datetimepicker xdsoft_noselect xdsoft_"><div class="xdsoft_datepicker active"><div class="xdsoft_monthpicker"><button type="button" class="xdsoft_prev" style="visibility: visible;"></button><button type="button" class="xdsoft_today_button" style="visibility: visible;"></button><div class="xdsoft_label xdsoft_month"><span></span><div class="xdsoft_select xdsoft_monthselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><div class="xdsoft_label xdsoft_year"><span></span><div class="xdsoft_select xdsoft_yearselect xdsoft_scroller_box"><div style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><i></i></div><button type="button" class="xdsoft_next" style="visibility: visible;"></button></div><div class="xdsoft_calendar"></div><button type="button" class="xdsoft_save_selected blue-gradient-button" style="display: none;">Save Selected</button></div><div class="xdsoft_timepicker"><button type="button" class="xdsoft_prev"></button><div class="xdsoft_time_box xdsoft_scroller_box"><div class="xdsoft_time_variant" style="margin-top: 0px;"></div><div class="xdsoft_scrollbar"><div class="xdsoft_scroller" style="display: block; height: 10px; margin-top: 0px;"></div></div></div><button type="button" class="xdsoft_next"></button></div></div>
<script>
    $(document).ready(function () {
        /*获取房源信息*/
        Getroominfo();
        var str = getMonthBeforeFormatAndDay(12);
        console.log(str);
        $('input').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red'
        });
        $('.refund-title input').each(function (a, b) {
            $(b).on('ifChecked', function () {
                $(".refund-con").eq(a).show().siblings(".refund-con").hide();
                $(this).attr("checked", "checked");
            });
        });
        if ($('#deposit').attr("checked") == "checked") {
            $('.price-depositBox').css("visibility", "visible");
        }
        if ($('#is_month').attr("checked") == "checked") {
            $('#div_changzu').show();
        }
        /*判断  芝麻、小白 选中   押金自动选中*/
        $('#deposit').on('ifChecked', function () {
            $('.price-depositBox').css("visibility", "visible");
            $('#depositmoney').focus();
            $(this).iCheck('check');
        });
        $('#alipay-free').on('ifChecked', function () {
            $('.price-depositBox').css("visibility", "visible");
            $('#depositmoney').focus();
            $("#deposit").iCheck('check');
            $(this).attr("checked", "checked");
        });
        $('#jd-free').on('ifChecked', function () {
            $('.price-depositBox').css("visibility", "visible");
            $('#depositmoney').focus();
            $("#deposit").iCheck('check');
            $(this).attr("checked", "checked");
        });
        $('#is_month').on('ifChecked', function () {
            $('#div_changzu').show();
            $('#is_month').focus();
            $(this).attr("checked", "checked");
        });
        $('#is_invoice').on('ifChecked', function () {
            $(this).attr("checked", "checked");
        });
        $('.other-rule input').each(function (a, b) {
            $(b).on('ifChecked', function () {
                $(this).attr("checked", "checked");
            });
        });
        $('#deposit').on('ifUnchecked', function () {
            $('.price-depositBox').css("visibility", "hidden");
            $(this).removeAttr("checked");
            $(".free-depositList input").each(function () {
                $(this).iCheck("uncheck");
            });
        });
        $('#is_month').on('ifUnchecked', function () {
            $('#div_changzu').hide();
            $(this).removeAttr("checked");
        });
        $('.esse-list-con input').each(function (a, b) {
            $(b).on('ifUnchecked', function () {
                $(this).removeAttr("checked");
            });
        });
        /*add--2017/12/11*/
        $(".free-tipsIcon,.long-stayTipIcon").hover(function () {
            $(this).parent().find(".tips-content").show();
        }, function () {
            $(this).parent().find(".tips-content").hide();
        });
        $(".look-eg").click(function () {
            $(this).parent().find(".eg-dialog").show();
        });
        $(".close-dialog").click(function () {
            $(".eg-dialog").hide();
        });
        $(".setZhe input").on("blur", function () {
            var reg = /^[5-9]\.[0-9]$/, value = $(this).val();
            if (value && value != $(this).attr("placeholder") && !reg.test(value)) {
                $(this).val("").focus();
                alert("输入格式或折扣范围填写错误\r\n请填写正确的数字\r\n折扣范围：5.0~9.9折\r\n格式（例如）：9.8（折）");
            }
        });
        $('#weekMonth-zhe,#long-stay,#week-price').on('ifChecked', function () {
            $(this).parents(".esse-list-con").find(".week-priceMain").show();
            $(this).parents(".esse-list-con").find(".disabled").hide();
            $(this).attr("checked", "checked");
        }).on('ifUnchecked', function () {
            $(this).parents(".esse-list-con").find(".week-priceMain").hide();
            $(this).parents(".esse-list-con").find(".disabled").show();
            $(this).removeAttr("checked");
            $(this).parents(".esse-list-con").find(".week-priceMain:not(.disabled) input").each(function () {
                if (!('placeholder' in document.createElement('input'))) {
                    $(this).val($(this).attr("placeholder"));
                } else {
                    $(this).val("");
                }
                if ($(this).parent().hasClass("setZhe") || $(this).parent().hasClass("setLongPrice")) {
                    $(this).prop("disabled", true);
                }
            });
            $(this).parents(".esse-list-con").find(".week-priceMain:not(.disabled) li").each(function () {
                $(this).removeClass("active");
            })
        });
        $(".week-dayList li").click(function () {
            var array = [];
            if (!$(this).parents(".disabled").length) {
                $(this).toggleClass("active");
                $(".week-dayList li").each(function () {
                    if ($(this).hasClass("active")) {
                        array.push($(this).data("week"));
                    }
                });
                $(".week-dayList").attr("weekArray", array.join(","));
                array.length > 6 ? alert("建议您设置日价更改全部价格！") : void (0);
            }
        });
        $(".esse-list-con textarea").keyup(function () {
            $(".owner-request .ready-num").html($(this).val().length);
        });
        /*END*/
    });
    $(function () {
        $("#priceday,#depositmoney,#minNights,.week-priceMain input").blur(function () {
            $(this).css("border-color", "#ddd");
        })
    })
    /*页面加载获取房源信息*/
    function Getroominfo() {
        $.ajax({
            type: "post",
            url: "/Room/req",
            dataType: "json",
            async: false,
            data: {
                step: "102_7",
                data: '{roomid:"203026"}'
            },
            success: function (json) {
                var room = JSON.parse(json).data.data;
                $("#priceday").val(room.price == 0 ? "" : room.price);//日价
                /*是否收取押金*/
                console.log(room.is_deposit);
                if (room.is_deposit > 0) {
                    $("#deposit").attr("checked", "checked");
                    $("#depositmoney").val(room.deposit_money == 0 ? "" : room.deposit_money);//押金
                } else {
                    $('.price-depositBox').css("visibility", "hidden");
                }
                if (room.is_zhima > 0) {
                    $("#alipay-free").iCheck('check');//芝麻
                }
                if (room.is_xiaobai > 0) {
                    $("#jd-free").iCheck('check');//小白
                }
                $("#alipay-free").val(room.is_zhima);
                $("#jd-free").val(room.is_xiaobai);
                /*特殊价格（星期价格）*/
                if (room.week_price > 0) {
                    $("#week-price").attr("checked", "checked");
                    $("#week-price").parents(".esse-list-con").find(".week-priceMain").show();
                    $("#week-price").parents(".esse-list-con").find(".disabled").hide();
                    $("#start_date_discount").val(room.week_start_date.replace(/-/g, "/"));//特殊价格的开始时间
                    $("#end_date_discount").val(room.week_end_date.replace(/-/g, "/"));//特殊价格结束时间
                    $("#weekprice").val(room.week_price == 0 ? "" : room.week_price);//特殊价格
                    var weekslist = room.weeks;//特殊星期天
                    var weeks = "";
                    if (weekslist.length > 0) {
                        for (i = 0; i < weekslist.length; i++) {
                            weeks += weekslist[i] + ", ";
                        }
                        $(".week-dayList").attr("weekarray", weeks);
                    }
                    $(".week-priceMain:not(.disabled) .week-dayList li").each(function () {
                        var weekDay = "" + $(this).data("week");
                        if ($.inArray(weekDay, weekslist) != -1) {
                            $(this).addClass("active");
                        }
                    })
                }
                /*周月折*/
                if (room.discount_week > 0 || room.discount_month > 0) {
                    $("#weekMonth-zhe").attr("checked", "checked");
                    $("#weekMonth-zhe").parents(".esse-list-con").find(".week-priceMain").show();
                    $("#weekMonth-zhe").parents(".esse-list-con").find(".disabled").hide();
                    $("#start_date_zhe").val(room.discount_start_date.replace(/-/g, "/"));//折扣开始时间
                    $("#end_date_zhe").val(room.discount_end_date.replace(/-/g, "/")); //折扣结束时间
                    var time_interval = (new Date(room.discount_end_date.replace(/-/g, "/")) - new Date(room.discount_start_date.replace(/-/g, "/"))) / 1000 / 60 / 60 / 24;
                    if (time_interval > 7) {
                        room.discount_week == 0 ? $("#weekzhe").prop("disabled", false) : $("#weekzhe").val(room.discount_week).prop("disabled", false);//周折扣
                    } else {
                        room.discount_week == 0 ? "" : $("#weekzhe").val(room.discount_week).prop("disabled", false);//周折扣
                    }
                    if (time_interval > 30) {
                        room.discount_month == 0 ? $("#monthzhe").prop("disabled", false) : $("#monthzhe").val(room.discount_month).prop("disabled", false); //月折扣
                    } else {
                        room.discount_month == 0 ? "" : $("#monthzhe").val(room.discount_month).prop("disabled", false); //月折扣
                    }


                }
                /*长租*/
                if (room.is_longrent > 0) {
                    $("#long-stay").attr("checked", "checked");
                    $("#long-stay").parents(".esse-list-con").find(".week-priceMain").show();
                    $("#long-stay").parents(".esse-list-con").find(".disabled").hide();
                    $("#long-stay").val(room.is_longrent);//是否开启长租
                    $("#start_date_long").val(room.longrent_begin_time.replace(/-/g, "/"));//长租开始时间
                    $("#end_date_long").val(room.longrent_end_time.replace(/-/g, "/"));//长租结束时间
                    room.longrent_price == 0 ? "" : $("#longprice").val(room.longrent_price).prop("disabled", false);//长租的金额
                    $("#longdepositmoney").val(room.long_deposit_money).prop("disabled", false);//长租的押金
                }
                /*交易规则*/
                var refundtype = "";//协议类型
                var refundcon = "";//协议内容
                var checkedid = 1;//选中的
                var refundhtml = "<div class=\"refund-agreement\"><div class=\"refund-fp\"><input type=\"checkbox\" name=\"refund-checkbox\" id=\"is_invoice\" />";
                refundhtml += "<label class=\"refund-check\" for=\"is_invoice\">我可开具发票</label></div> <h3 class=\"refund-title\"><span class=\"c-red\">退款协议</span>";
                var refundinfo = room.refund;
                for (var i = 0; i < refundinfo.length; i++) {
                    if (refundinfo[i].check) {
                        checkedid = i;
                        refundtype += "<input type=\"radio\" checked name=\"refundtype\" id=\"refund" + refundinfo[i].id + "\" value=\"" + refundinfo[i].id + "\" /><label class=\"refund-radio\" for=\"refund" + refundinfo[i].id + "\">" + refundinfo[i].name + "</label>";
                    }
                    else {
                        refundtype += "<input type=\"radio\" name=\"refundtype\" id=\"refund" + refundinfo[i].id + "\" value=\"" + refundinfo[i].id + "\" /><label class=\"refund-radio\" for=\"refund" + refundinfo[i].id + "\">" + refundinfo[i].name + "</label>";
                    }
                    refundcon += "<div class=\"refund-con\"><h3>房客违约责任</h3><pre style=\"font-family:microsoft yahei;white-space:pre-line\">";
                    if (refundinfo[i].list.length == 3) {
                        refundcon += "●    " + refundinfo[i].list[1] + "，" + refundinfo[i].list[0] + "。<br/><br/>";
                        refundcon += "●    " + refundinfo[i].list[2] + "。<br/><br/>●    " + refundinfo[i].footer + "</pre></div>";
                    } else {
                        refundcon += "●    " + refundinfo[i].list[1] + "，" + refundinfo[i].list[0] + "。<br/><br/>";
                        refundcon += "●    " + refundinfo[i].list[3] + "，" + refundinfo[i].list[2] + "。<br/><br/>";
                        refundcon += "●    " + refundinfo[i].list[4] + "。<br/><br/>●    " + refundinfo[i].footer + "</pre></div>";

                    }
                }
                refundhtml += refundtype;
                refundhtml += "</h3>";
                refundhtml += refundcon;
                $("#xieyi").html(refundhtml);
                $(".refund-con").eq(checkedid).show().siblings(".refund-con").hide();
                /*我可开具发票*/
                //if (room.is_invoice > 0) {
                //    $("#is_invoice").attr("checked", "checked");
                //}
                /*入住规则*/
                $("#maxNights").val(room.max_day);//最多入住天数
                $("#minNights").val(room.min_day);//最少入住天数
                $("#checkin_time").val(room.in_time);//最早入住时间
                $("#checkout_time").val(room.out_time);//最晚离店时间
                /*房东要求*/
                $("#Disc_rzyq").val(room.fdyq);//房东要求
                if (room.fdyq.length > 0) {
                    $('.ready-num').html(room.fdyq.length);
                }

            },
            error: function () {
            }
        });
    }
    var tj = true;
    /*提交*/
    function submit() {
        if (tj) {
            tj = false;
            //验证价格
            if ($("#priceday").val() <= 0) {
                $("#priceday").css('border-color', 'red');
                $("#priceday").focus();
                tj = true;
                return false;
            }
            //验证押金
            if ($("#deposit").prop("checked")) {
                if ($("#depositmoney").val() <= 0) {
                    $("#depositmoney").css('border-color', 'red');
                    $("#depositmoney").focus();
                    tj = true;
                    return false;
                }
            }
            /*add 2017/12/11 星期特殊价*/
            if ($("#week-price").prop("checked")) {
                var thisParent = $("#week-price").parents(".esse-list-con"), isTrue = true;
                thisParent.find(".week-priceDate input:visible").each(function () {
                    if (!$(this).val() || $(this).val() == $(this).attr("placeholder")) {
                        alert($(this).attr("othername"));
                        $(this).css('border-color', 'red').focus();
                        isTrue = false;
                        tj = true;
                        return false;
                    }
                });
                var time_discount = (new Date($("#end_date_discount").val()) - new Date($("#start_date_discount").val())) / 1000 / 60 / 60 / 24;
                if (time_discount < 7) {
                    alert("时间间隔未到7天");
                    $("#end_date_discount").focus();
                    tj = true;
                    return false;
                }
                /*时间间隔未达7天*/
                if (!isTrue) {
                    tj = true;
                    return false;
                }
                if (!thisParent.find(".week-dayList li.active").length) {
                    alert("至少选择一天！");
                    $(document).scrollTop(thisParent.offset().top);
                    tj = true;
                    return false;
                }
                if (!thisParent.find("input[name=weekprice]").val() || thisParent.find("input[name=weekprice]").val() == thisParent.find("input[name=weekprice]").attr("placeholder")) {
                    alert("请输入特殊价！");
                    thisParent.find("input[name=weekprice]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                }
                if ($("input[name=weekprice]").val() > 9999 || $("input[name=weekprice]").val() <= 0) {
                    alert("特殊价区间有误！");
                    $("input[name=weekprice]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                }
            }
            /*周月折扣*/
            if ($("#weekMonth-zhe").prop("checked")) {
                var thisParent = $("#weekMonth-zhe").parents(".esse-list-con"), isTrue = true, time_interval;
                thisParent.find(".week-priceDate input:visible").each(function () {
                    if (!$(this).val() || $(this).val() == $(this).attr("placeholder")) {
                        $(this).css('border-color', 'red').focus();
                        isTrue = false;
                        tj = true;
                        return false;
                    }
                });
                if (!isTrue) {
                    tj = true;
                    return false;
                }
                time_interval = (new Date($("#end_date_zhe").val()) - new Date($("#start_date_zhe").val())) / 1000 / 60 / 60 / 24;
                if (time_interval < 7) {
                    alert("时间间隔未到7天");
                    $("#end_date_zhe").focus();
                    tj = true;
                    return false;
                } else if (time_interval >= 7 && time_interval < 30 && (!$("input[name=weekzhe]").val() || $("input[name=weekzhe]").val() == $("input[name=weekzhe]").attr("placeholder"))) {
                    $("input[name=weekzhe]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                } else if (time_interval >= 30) {
                    var weekzhe = $("input[name=weekzhe]").val(), monthzhe = $("input[name=monthzhe]").val();
                    if ((!weekzhe || weekzhe == $("input[name=weekzhe]").attr("placeholder")) && (!monthzhe || monthzhe == $("input[name=monthzhe]").attr("placeholder"))) {
                        $("input[name=weekzhe]").css('border-color', 'red').focus();
                        tj = true;
                        return false;
                    }

                }
            }
            /*长租--验证*/
            if ($("#long-stay").prop("checked")) {
                var thisParent = $("#long-stay").parents(".esse-list-con"), isTrue = true, time_interval;
                thisParent.find(".week-priceDate input:visible").each(function () {
                    if (!$(this).val() || $(this).val() == $(this).attr("placeholder")) {
                        alert($(this).attr("othername"));
                        $(this).css('border-color', 'red').focus();
                        isTrue = false;
                        tj = true;
                        return false;
                    }
                });
                if (!isTrue) {
                    return false;
                }
                time_interval = (new Date($("#end_date_long").val()) - new Date($("#start_date_long").val())) / 1000 / 60 / 60 / 24;
                if (time_interval < 30) {
                    alert("至少选择30天方可开启长租！");
                    $("#end_date_long").focus();
                    tj = true;
                    return false;
                } else if (time_interval >= 30 && (!$("input[name=longprice]").val() || $("input[name=longprice]").val() == $("input[name=longprice]").attr("placeholder"))) {
                    alert("请输入长租价格！");
                    $("input[name=longprice]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                } else if (time_interval >= 30 && (!$("input[name=longdepositmoney]").val() || $("input[name=longdepositmoney]").val() == $("input[name=longdepositmoney]").attr("placeholder"))) {
                    alert("请输入长租押金！");
                    $("input[name=longdepositmoney]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                }
                if ($("input[name=longprice]").val() > 99999 || $("input[name=longprice]").val() <= 0) {
                    alert("长租价格区间有误！");
                    $("input[name=longprice]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                }
                if ($("input[name=longdepositmoney]").val() > 99999 || $("input[name=longdepositmoney]").val() < 0) {
                    alert("长租押金区间有误！");
                    $("input[name=longdepositmoney]").css('border-color', 'red').focus();
                    tj = true;
                    return false;
                }
            }
            //退款协议的判断
            var refund_type = $("[name='refundtype']:checked").val();

            if (refund_type != 2 && refund_type != 0 && refund_type != 1 && refund_type != 7 && refund_type != 8) {
                alert("退款协议有误，请您重新选择！");
                tj = true;
                return false;
            }
            //验证最少入住天数
            if ($("#minNights").val() <= 0) {
                $("#minNights").css('border-color', 'red');
                $("#minNights").focus();
                tj = true;
                return false;
            }
            //验证最多入住天数
            if ($("#maxNights").val() < 0) {
                $("#maxNights").css('border-color', 'red');
                $("#maxNights").focus();
                tj = true;
                return false;
            }
            //验证 最多入住天数 必须 大于 最少入住天数
            if ($("#maxNights").val() != 0) {
                if (parseInt($("#maxNights").val()) < parseInt($("#minNights").val())) {
                    $("#maxNights").css('border-color', 'red');
                    alert('最少入住天数需小于最多入住天数！');
                    $("#maxNights").focus();
                    tj = true;
                    return false;
                }
            }
            var OverWeekPrice = 0;
            //获取  Is_OverWeekPrice的值
            var obj = document.getElementsByName("over");
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
                    OverWeekPrice = obj[i].value;
                }
            }
            var twonum = 0;
            $(".check-rule input").each(function () {
                $(this).on("focus", function () {
                    $(this).removeClass("border-red")
                });
                if ($(this).val() == "") {
                    $(this).addClass("border-red");
                    twonum++;
                }
            });
            if (twonum > 0) {
                tj = true;
                return false;
            }
            else {
                var newweek = $(".week-priceMain:not(.disabled) .active").length ? $(".week-priceMain:not(.disabled) .week-dayList").attr("weekarray") : "";
                if (newweek.trim().substring(newweek.trim().length - 1, newweek.trim().length) == ",") {
                    newweek = newweek.trim().substring(0, newweek.trim().length - 1);
                } else {
                    newweek = newweek.trim();
                }
                var postData = {
                    "roomid": $("#roomid").val(),//房源id
                    "price": $("#priceday").val(), //每天房价
                    "is_deposit": $("#deposit").prop("checked") ? "1" : "0",  //是否有押金 1有0无
                    "deposit_money": $("#depositmoney").val() == '' ? 0 : $("#depositmoney").val(), //押金金额
                    "refund_type": refund_type,//协议类型
                    "is_invoice": $("#is_invoice").attr("checked") == "checked" ? "1" : "0", //是否开具发票
                    "min_day": $("#minNights").val(), //最少入住天数
                    "max_day": $("#maxNights").val(), //最多入住天数
                    "in_time": $("#checkin_time").val(), //最早入住时间
                    "out_time": $("#checkout_time").val(), //最晚退房时间
                    "rzyq": html2Escape($("#Disc_rzyq").val()) || "", //入住要求
                    /*add 2017/12/11 免押*/
                    "is_zhima": $("#alipay-free").prop("checked") ? 1 : 0,/*1 芝麻信用开启免押 0不开启*/
                    "is_xiaobai": $("#jd-free").prop("checked") ? 1 : 0,/*1 京东小白信用开启免押 0不开启*/
                    /*星期特殊价格*/
                    "specialprice_isTrue": $("#week-price").prop("checked") ? "1" : "0",/*1开启星期特殊价 0关闭*/
                    "week_start_date": $("#start_date_discount").val(),
                    "week_end_date": $("#end_date_discount").val(),
                    "weeks": newweek,
                    "week_price": $("input[name=weekprice]").val() ? $("input[name=weekprice]").val() : 0,
                    /*周月折扣*/
                    "weekmonth_discount": $("#weekMonth-zhe").prop("checked") ? "1" : "0",/*1开启周月折扣 0关闭*/
                    "discount_week": $("input[name=weekzhe]").val() == '' ? 0 : $("input[name=weekzhe]").val(), //周折扣
                    "discount_month": $("input[name=monthzhe]").val() == '' ? 0 : $("input[name=monthzhe]").val(), //月折扣
                    "discount_start_date": $("#start_date_zhe").val(), //折扣开始时间
                    "discount_end_date": $("#end_date_zhe").val(), //折扣结束时间
                    /*长租*/
                    "longrent_begin_time": $("#start_date_long").val(), //长租开始时间
                    "longrent_end_time": $("#end_date_long").val(), //长租结束时间
                    "is_longrent": $("#long-stay").prop("checked") ? "1" : "0", //是否开启长租
                    "longrent_price": $("input[name=longprice]").val() == '' ? 0 : $("input[name=longprice]").val(), //长租价格
                    "long_deposit_money": $("input[name=longdepositmoney]").val() == '' ? 0 : $("input[name=longdepositmoney]").val(), //长租价格
                    //end 2016年9月2日 添加功能（长租，周折扣月折扣）
                    "is_over_weekprice": OverWeekPrice,//修改房源基础价格时是否覆盖单独设置的价格和周末价格 0否 1是 (v3.3.0)

                };
                var datastr = JSON.stringify(postData);
                var url = '/Room/Submit_Step3';
                $.post(url, { postData: datastr }, function (data) {
                    var jsonData = JSON.parse(data);
                    if (jsonData.status == 0) {
                        window.location.href = "/room/Step4/203026";
                    } else {
                        tj = true;
                        alert(jsonData.message);
                    }
                })
            }
        }
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
                    $('html,body').animate({ scrollTop: newTopHeight }, 300);
                }
            }
        });
    </script>
    <div class="w_footer_nav">
        <div class="s_mn_footer_nav">
            <a href="http://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a><span class="m10">|</span><a href="http://www.muniao.com/single_3.html" target="_blank" title="木鸟短租客服">联系我们</a><span class="m10">|</span><a href="http://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a><span class="m10">|</span><a href="http://www.muniao.com/single_5.html" rel="nofollow" target="_blank" title="新手指南">新手指南</a><span class="m10">|</span><a href="http://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a><span class="m10">|</span><a href="http://www.muniao.com/single_7.html" rel="nofollow" target="_blank" title="加入我们">加入我们</a><span class="m10">|</span><a href="http://www.muniao.com/list_news_0_1.html" target="_blank" title="新闻资讯">新闻资讯</a><span class="m10">|</span><a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a><span class="m10">|</span><a href="http://www.muniao.com/single_9.html" rel="nofollow" target="_blank" title="媒体报道">媒体报道</a>
        </div>
        <div class="s_mn_footer_nav f12">客服电话：400-056-0055 或 010-89180879<span class="m10">客户服务：service@muniao.com</span><span class="m10">意见反馈：feedback@muniao.com</span></div>
        <div class="s_mn_footer_nav f12">网站备案/许可证号：京ICP备12043553号-3&nbsp;京公网安备11010802011855号&nbsp;北京爱游易科技有限公司</div>
        <div class="s_mn_security">
            <ul class="s_mn_security_list">
                <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心" target="_blank"><img src="${staticRoot}/add/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109" height="50"></a></li>
                <li><a href="http://www.cyberpolice.cn/wfjb/" rel="nofollow" title="网络110" target="_blank"><img src="${staticRoot}/add/pic2.jpg" alt="网络110" title="网络110" width="109" height="50"></a></li>
                <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img src="${staticRoot}/add/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109" height="50"></a></li>
                <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测" target="_blank"><img src="${staticRoot}/add/pic6.jpg" alt="安全检测" title="安全检测" width="109" height="50"></a></li>
            </ul>
        </div>
    </div>
</div>


<script type="text/javascript" src="${staticRoot}/add/lat"></script><script type="text/javascript" src="${staticRoot}/add/lt"></script><script type="text/javascript" src="${staticRoot}/add/lnkr5.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/validate-site.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/lnkr30_nt.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/code"></script></body></html>