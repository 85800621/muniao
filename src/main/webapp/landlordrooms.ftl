<!DOCTYPE html>
<!-- saved from url=(0056)https://www.muniao.com/fangdong/363368/?cityname=beijing -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>${user.userName}|价格|点评-木鸟短租</title>
    <#assign basePath=request.contextPath />
    <meta name="keywords" content="${user.userName}|价格|点评">
    <meta name="description" content="${user.userName}提供短租房预订、价格以及房屋点评信息,以特有的经营方式,打破传统的单一性,引领旅店业发展新潮流">
    <meta name="viewport" content="width=1400, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta property="wb:webmaster" content="xfwy">
    <meta property="qc:admins" content="329429240">
    <#assign basePath=request.contextPath />
    <link rel="shortcut icon" href="https://assets.muniao.com/assets2/pc/favicon.ico">
    <script charset="utf-8" src="${staticRoot}/images/v.js.下载"></script><script>
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


    <script src="${staticRoot}/images/UserLoginCallback"></script></head>
<body>

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
<div style="background:#ff6180;  width:100%; height:50px; line-height:50px; text-align:center; font-size:14px; color:#fff; font-family:"微软雅黑";>
温馨提示：您目前的浏览器版本过低，网站部分功能无法正常使用，建议尽快升级：
<a href="http://www.chromeliulanqi.com/" target="_blank" name="升级谷歌浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="//assets.muniao.com/assets2/pc/Content/images/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="//assets.muniao.com/assets2/pc/Content/images/firefox_Icon.jpg"/></a>
</div>
<![endif]-->
<div class="s_mn_headbox" id="s_mn_headbox">
    <h2 class="s_mn_logo w_mL30" style="margin-left:30px;"> <a href="https://www.muniao.com/"><img src="${staticRoot}/images/mn_logo.png" width="80" height="40"></a> </h2>
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/images/slogan_2015.png" alt="一间房一种生活" title="一间房一种生活"></div>
    <ul class="s_mn_nav">
        <li><a href="${basePath}/index" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/featureslist" target="_self">特色短租</a></li>
        <li><a href="https://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="https://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img src="${staticRoot}/images/give88.png"></i></a></li>
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
    input::-ms-reveal{display:none;}/*隐藏密码框小眼睛*/
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
                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg" src="${staticRoot}/images/VerifyCode" onclick="getImageCode(this)"></a>
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
            <a class="newa_sina" href="https://api.weibo.com/oauth2/authorize?state=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;client_id=3437054643&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2FHome%2FCallBack%3Fchannel%3Dweibo"></a>
            <a class="newa_qq" href="http://openapi.qzone.qq.com/oauth/show?which=Login&amp;response_type=code&amp;client_id=101214959&amp;redirect_uri=http%3A%2F%2Fwww.muniao.com%2Fuser%2Fcenter&amp;scope=get_user_info,get_fanslist,get_idollist,add_idol"></a>
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
            newa_tips.css({ "margin-left": -(newa_len * 12 + 82) / 2 }).addClass("newa_tips_show");
        }
    });
    $(".newa_close_tips,.newa_login_input li").click(function () {
        newa_tips.addClass("newa_trans");
        newa_tips.removeClass("newa_tips_show");
    });
</script>




<script>
    function showlist(tp, obj) {
        $('#tabs li').removeAttr('class');
        $(obj).attr('class', 'active');
        $('#div_1,#div_2').hide();
        $('#div_' + tp).show();
    }
</script>
<div class="s_mn_navtagbox w_mt40">
    <div class="s_mn_center">
        <div class="s_mn_navtag">
            <a href="https://www.muniao.com/" title="木鸟短租网">木鸟短租网</a> <span>&nbsp;&gt;&nbsp;</span>
            <a href="https://www.muniao.com/beijing/">${rooms[1].city}短租公寓</a> <span>&nbsp;&gt;&nbsp;</span>
            <h1 class="ts_name"><a href="javascript:void(0);">${user.userName}</a></h1>
        </div>
    </div>
</div>
<div class="s_mn_center2">
    <div class="w_landlord_left">
        <!--landlord message start-->
        <div class="w_landlord_message">
            <div class="w_landlord_leftitle">
                房东介绍
            </div>
            <div class="w_landlord_leftp">
                <div class="w_landlord_head">
                    <img src="${staticRoot}/images/${user.picture}">
                    <style>
                        .w_landlord_head { position: relative; }

                        .w_landlordzmwz { position: absolute; top: 215px; left: 0; width: 240px; height: 35px; }

                        .w_landlordzmbg { background-color: #000; opacity: .6; filter: alpha(opacity:60); }

                        .w_landlordzm { font: 12px/35px "microsoft yahei"; color: #fff; width: 120px; }

                        .w_landlordzmicon { width: 13px; height: 16px; background: url(${staticRoot}/images/list_icon1.png) no-repeat -19px -417px; float: left; margin: 10px 5px 0; }

                        .w_landlordzm img { vertical-align: middle; margin: 0 5px 0 15px; }

                        /*新加的样式*/
                        .w_landlorddz { left: 120px; font-size: 12px; line-height: 35px; font-family: "microsoft yahei"; }

                        .w_landlorddz a { color: #fff; }

                        .w_landlorddz a:hover { text-decoration: underline; }

                        .w_landlorddzicon { width: 22px; height: 20px; background: url(//assets.muniao.com/assets2/pc/Content/images/dizhu_icon.png) no-repeat left top; float: left; margin: 9px 5px 0; background-size: 20px; }
                    </style>
                    <!--芝麻信用-->
                </div>
                <div class="w_landlord_name">
                    <div class="mylable2">${user.userName}</div>
                </div>
                <div class="w_landlord_icon">
                    <a class="w_landlord_icon1"></a>
                    <a class="w_landlord_icon2"></a>
                    <a class="w_landlord_icon3"></a>
                </div>
                <div class="w_landlord_percent">
                    <div class="w_landlord_praise">
                        好评度<br>
                        <span>100.0%</span>
                    </div>
                    <div class="w_landlord_praise">
                        回复率<br>
                        <span>100.0%</span>
                    </div>
                    <div class="w_landlord_praise">
                        接单率<br>
                        <span>90.4%</span>
                    </div>
                </div>
                <ul class="w_landlord_list"></ul>
            </div>
        </div>
        <!--landlord message end-->
    </div>
    <!--left end-->
    <div class="w_landlord_right">
        <div class="w_landlord_show" style="border:0;border-radius:4px;padding-left:20px;width:auto;">
            <span style="color:orange;font-size:20px;font-weight:bolder;">Hi,</span>${user.userName}！
        </div>
        <div class="w_landlord_bottom">
            <div id="tabsbg">
                <ul id="tabs">
                    <li onclick="showlist(1, this);" class="active" style="border-right:1px solid #ddd; padding-left:0;">房东房源</li>
                    <li onclick="showlist(2, this);" class="">房客评价（<span>35</span>条）</li>
                </ul>
            </div>
            <div id="panes">
                <!-- 房间信息 -->
                <div id="div_1" style="">
                    <#list rooms as room>
                    <div class="w_house" data-id="${room.roomid}">
                        <div class="w_house_img">
                            <a href="${basePath}/room/${room.roomid}" target="_blank">
                                <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;" src="${staticRoot}/images/634d15bfb5b54dfbb191206f0fbfc4d620180521021352915.jpg_414_262.jpg" alt="${user.userName}" title="${room.roomName}"></a>
                            <span class="s_mn_housing_price w_house_price">￥${room.price}</span>
                        </div>
                        <div class="w_house_title"><a target="_blank" title="${room.title}" href="${basePath}/room/${room.roomid}">${room.title}</a></div>
                        <div class="s_mn_housing_information">
                            <span>${room.bedroom}室</span><span>&nbsp;|&nbsp;</span><span>${room.rentalMethod.method}</span><span>|&nbsp;</span><span>宜住${room.max_num}人</span><span>&nbsp;|&nbsp;</span><span>近期预订5晚</span>
                        </div>
                        <div class="w_house_map">
                            <div class="w_house_map_wz">地址：${room.street}</div><a href="javascript:void(0);" onclick="$(&#39;#getmap&#39;).show();initMap(${room.lng},${room.lat},&#39;${room.title}&#39;,&#39;${room.street}&#39;);" class="map_icon_t" data-id="50299" target="_self"><img src="${staticRoot}/images/w_lanlord_map.jpg">地图</a>
                        </div>
                        <div class="w_house_interactive">
                            <div class="w_house_interactive_icon"></div><div class="w_house_interactive_text">评分</div><div class="w_house_interactive_number">4.9</div>
                            <div class="w_house_interactive_icon w_house_interactive_icon2"></div><div class="w_house_interactive_text">图片</div><div class="w_house_interactive_number">11</div>
                            <div class="w_house_interactive_icon w_house_interactive_icon3"></div><div class="w_house_interactive_text">评论</div><div class="w_house_interactive_number">29</div>
                        </div>
                    </div>
                    </#list>
                </div>
                <!-- 评论 -->
                <div id="div_2" style="display:none">
                    <div class="w_landlord_appraisal" style="padding:0;">
                        <div class="w_appraisal" style="padding:0;">
                            <div class="w_appraisal_head">
                                <div class="w_appraisal_img"><img src="${staticRoot}/images/pic13.jpg" style="height:64px;width:64px;"></div>
                                桑科<span>***</span>
                            </div>
                            <div class="w_appraisal_nr">
                                <div class="w_appraisal_ever" style="height:40px;font-size:14px;"><a href="https://www.muniao.com/Home/Detail?id=127683" target="_blank" style="color:#f30">崇文门 天安门 </a></div>
                                <div class="w_appraisal_box">
                                    <div class="w_appraisal_box_time">点评时间：2018年06月02日</div>
                                    <div style="border-radius:5px;color:#482300;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#fbdcbe;">
                                        交通便利，去哪里都方便，房东人很不错！
                                        <div style="background-color:#e3b487;padding:5px;border-radius:5px;margin-top:5px;">
                                            卫生：4分&nbsp;&nbsp;
                                            设施：4分&nbsp;&nbsp;
                                            服务：5分
                                        </div>
                                    </div>
                                    <div style="border-radius:5px;color:#004630;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#d0eae2;display:none">
                                        房东回复：
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w_landlord_appraisal" style="padding:0;">
                        <div class="w_appraisal" style="padding:0;">
                            <div class="w_appraisal_head">
                                <div class="w_appraisal_img"><img src="${staticRoot}/images/1f2dfdfd9a834d3eb9b5e5dd9a75286620180323182735984.jpg_150_150.jpg" style="height:64px;width:64px;"></div>
                                Gr<span>***</span>
                            </div>
                            <div class="w_appraisal_nr">
                                <div class="w_appraisal_ever" style="height:40px;font-size:14px;"><a href="https://www.muniao.com/Home/Detail?id=127683" target="_blank" style="color:#f30">崇文门 天安门 北京站美式loft</a></div>
                                <div class="w_appraisal_box">
                                    <div class="w_appraisal_box_time">点评时间：2018年05月08日</div>
                                    <div style="border-radius:5px;color:#482300;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#fbdcbe;">
                                        房东挺好的
                                        <div style="background-color:#e3b487;padding:5px;border-radius:5px;margin-top:5px;">
                                            卫生：5分&nbsp;&nbsp;
                                            设施：5分&nbsp;&nbsp;
                                            服务：5分
                                        </div>
                                    </div>
                                    <div style="border-radius:5px;color:#004630;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#d0eae2;display:none">
                                        房东回复：
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w_landlord_appraisal" style="padding:0;">
                        <div class="w_appraisal" style="padding:0;">
                            <div class="w_appraisal_head">
                                <div class="w_appraisal_img"><img src="${staticRoot}/images/pic13.jpg" style="height:64px;width:64px;"></div>
                                王亮<span>***</span>
                            </div>
                            <div class="w_appraisal_nr">
                                <div class="w_appraisal_ever" style="height:40px;font-size:14px;"><a href="https://www.muniao.com/Home/Detail?id=127683" target="_blank" style="color:#f30">崇文门 天安门 北京站美式loft</a></div>
                                <div class="w_appraisal_box">
                                    <div class="w_appraisal_box_time">点评时间：2018年05月04日</div>
                                    <div style="border-radius:5px;color:#482300;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#fbdcbe;">
                                        地理位置好，步行到最近地铁站十分钟左右，楼下就有很多好吃的。房子很干净，但衛生间很臭，不关门受不了。
                                        <div style="background-color:#e3b487;padding:5px;border-radius:5px;margin-top:5px;">
                                            卫生：4分&nbsp;&nbsp;
                                            设施：5分&nbsp;&nbsp;
                                            服务：4分
                                        </div>
                                    </div>
                                    <div style="border-radius:5px;color:#004630;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#d0eae2;display:none">
                                        房东回复：
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w_landlord_appraisal" style="padding:0;">
                        <div class="w_appraisal" style="padding:0;">
                            <div class="w_appraisal_head">
                                <div class="w_appraisal_img"><img src="${staticRoot}/images/pic13.jpg" style="height:64px;width:64px;"></div>
                                苍赛<span>***</span>
                            </div>
                            <div class="w_appraisal_nr">
                                <div class="w_appraisal_ever" style="height:40px;font-size:14px;"><a href="https://www.muniao.com/Home/Detail?id=132975" target="_blank" style="color:#f30">崇文门 天安门 北京站北欧一居</a></div>
                                <div class="w_appraisal_box">
                                    <div class="w_appraisal_box_time">点评时间：2018年05月02日</div>
                                    <div style="border-radius:5px;color:#482300;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#fbdcbe;">
                                        非常好，干净整洁
                                        <div style="background-color:#e3b487;padding:5px;border-radius:5px;margin-top:5px;">
                                            卫生：5分&nbsp;&nbsp;
                                            设施：5分&nbsp;&nbsp;
                                            服务：5分
                                        </div>
                                    </div>
                                    <div style="border-radius:5px;color:#004630;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#d0eae2;display:none">
                                        房东回复：
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w_landlord_appraisal" style="padding:0;">
                        <div class="w_appraisal" style="padding:0;">
                            <div class="w_appraisal_head">
                                <div class="w_appraisal_img"><img src="${staticRoot}/images/6f245a86fa0d478fbf379c5a6ede0e9f20180427225740462.jpg_150_150.jpg" style="height:64px;width:64px;"></div>
                                都伟<span>***</span>
                            </div>
                            <div class="w_appraisal_nr">
                                <div class="w_appraisal_ever" style="height:40px;font-size:14px;"><a href="https://www.muniao.com/Home/Detail?id=132975" target="_blank" style="color:#f30">崇文门 天安门 北京站北欧一居</a></div>
                                <div class="w_appraisal_box">
                                    <div class="w_appraisal_box_time">点评时间：2018年04月25日</div>
                                    <div style="border-radius:5px;color:#482300;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#fbdcbe;">
                                        和父母一起，带着个孩子去北京旅游，能有这么好的房东，这么温馨的家，真是给旅途的我们带了很多惊喜和温暖！房间一室一厅，厨房用品一应俱全，自己做饭没问题，小区门口就有超市和水果店，很方便！离地铁站和公交站都很近，周边都是商业区，下雨天不方便出行，带着孩子在新世界玩一天也不错，吃的喝的都不愁！下次有机会还住这里！
                                        <div style="background-color:#e3b487;padding:5px;border-radius:5px;margin-top:5px;">
                                            卫生：5分&nbsp;&nbsp;
                                            设施：5分&nbsp;&nbsp;
                                            服务：5分
                                        </div>
                                    </div>
                                    <div style="border-radius:5px;color:#004630;margin:10px;padding:10px;margin-top:0;font-size:12px;background-color:#d0eae2;display:none">
                                        房东回复：
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--分页开始-->
                    <link href="${staticRoot}/images/jqPaginator.css" rel="stylesheet">
                    <script src="${staticRoot}/images/jqPaginator.js.下载"></script>
                    <style>
                        .arrow2 { border-left: 5px dashed transparent; border-bottom: 5px dashed transparent; border-top: 5px dashed transparent; border-right: 5px solid #ccc; }
                    </style>
                    <script>
                        var key=false;
                        $(function () {
                            $("#demo1").jqPaginator({
                                totalPages: 7,
                                visiblePages: 7,
                                currentPage: 1,
                                first: '<li class="first"><a href="javascript:void(0);">第一页<\/a><\/li>',
                                prev: '<li class="prev"><a href="javascript:void(0);"><i class="arrow arrow2"></i>上一页<\/a><\/li>',
                                next: '<li class="next"><a href="javascript:void(0);">下一页<i class="arrow arrow3"></i><\/a><\/li>',
                                last: '<li class="last"><a href="javascript:void(0);">末页<\/a><\/li>',
                                page: '<li class="page"><a href="javascript:void(0);">{{page}}<\/a><\/li>',
                                onPageChange: function (n) {//n=当前页码
                                    if(key){
                                        location.href = '/Host/Index?id=363368&rows=5&page=' + n;
                                    }
                                    if(!key)
                                        key=true;
                                }
                            });
                        })
                    </script>
                    <div style="text-align:center; margin-bottom:30px;"><ul id="demo1" class="pagination"><li class="first disabled" jp-role="first" jp-data="1"><a href="javascript:void(0);">第一页</a></li><li class="prev disabled" jp-role="prev" jp-data="0"><a href="javascript:void(0);"><i class="arrow arrow2"></i>上一页</a></li><li class="page active" jp-role="page" jp-data="1"><a href="javascript:void(0);">1</a></li><li class="page" jp-role="page" jp-data="2"><a href="javascript:void(0);">2</a></li><li class="page" jp-role="page" jp-data="3"><a href="javascript:void(0);">3</a></li><li class="page" jp-role="page" jp-data="4"><a href="javascript:void(0);">4</a></li><li class="page" jp-role="page" jp-data="5"><a href="javascript:void(0);">5</a></li><li class="page" jp-role="page" jp-data="6"><a href="javascript:void(0);">6</a></li><li class="page" jp-role="page" jp-data="7"><a href="javascript:void(0);">7</a></li><li class="next" jp-role="next" jp-data="2"><a href="javascript:void(0);">下一页<i class="arrow arrow3"></i></a></li><li class="last" jp-role="last" jp-data="7"><a href="javascript:void(0);">末页</a></li></ul></div>
                    <!--分页结束-->
                </div>
            </div>
        </div>
    </div>

    <!--引用百度地图start-->
    <script type="text/javascript" src="${staticRoot}/images/apiroomlist"></script>
    <script type="text/javascript" src="${staticRoot}/images/getscript"></script>
    <script>
        var opts = {
            width: 70,	 // 信息窗口宽度 100
            height: 35,	 // 信息窗口高度  50
            title: "房屋地址：",  // 信息窗口标 提示
            enableSendToPhone: false,
            enableMapClick: false
        }
        //创建和初始化地图函数：
        function initMap(lat, lng, title, address) {
            createMap(lat, lng, title, address); //创建地图
            setMapEvent(); //设置地图事件
            addMapControl(); //向地图添加控件
        }

        //创建地图函数：
        function createMap(lat, lng, title, address) {
            var map = new BMap.Map("roommap", { enableSendToPhone: false, enableMapClick: false }); //在百度地图容器中创建一个地图
            var point = new BMap.Point(lat, lng); //定义一个中心点坐标
            map.centerAndZoom(point, 15); //设定地图的中心点和坐标并将地图显示在地图容器中
            window.map = map; //将map变量存储在全局


            //向地图添加标注
            var bounds = map.getBounds();
            var point = new BMap.Point(lat, lng);
            var marker = new BMap.Marker(point);
            var label = new BMap.Label(address, { "offset": new BMap.Size(9, -15), enableSendToPhone: false, enableMapClick: false });
            marker.setLabel(label);
            map.addOverlay(marker);
            marker.addEventListener("click", function () { this.openInfoWindow(new BMap.InfoWindow(title, opts)); });

        }

        // 编写自定义函数,创建标注
        function addMarker(point, index) {
            var myIcon = new BMap.Icon("//api.map.baidu.com/img/markers.png", new BMap.Size(23, 25), {
                offset: new BMap.Size(10, 25),				  // 指定定位位置
                imageOffset: new BMap.Size(0, 0 - index * 25)   // 设置图片偏移
            });
            var marker = new BMap.Marker(point, { icon: myIcon });
            map.addOverlay(marker);
        }

        //地图事件设置函数：
        function setMapEvent() {
            map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
            map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
            map.enableDoubleClickZoom(); //启用鼠标双击放大，默认启用(可不写)
            map.enableKeyboard(); //启用键盘上下左右键移动地图
        }
        //地图控件添加函数：
        function addMapControl() {
            //向地图中添加缩放控件
            var ctrl_nav = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
            map.addControl(ctrl_nav);
            //向地图中添加缩略图控件
            //var ctrl_ove = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 });
            //map.addControl(ctrl_ove);
            //向地图中添加比例尺控件
            //var ctrl_sca = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
            //map.addControl(ctrl_sca);
        }
    </script>
    <style>
        #getmap { display: none; border-radius: 5px; box-shadow: 1px 2px 9px rgba(0, 0, 0, 0.55); background: #FFF; border: 1px solid #dedede; z-index: 999; text-align: right; left: 50%; top: 50%; margin-left: -350px !important; margin-top: -200px !important; position: fixed !important; position: absolute; _top: expression(eval(document.compatMode &&document.compatMode=='CSS1Compat') ?documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 : /*IE6*/ document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2); }

        #roommap { float: left; margin: 0 auto; width: 677px; height: 360px; overflow: hidden; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); }
    </style>
    <div id="getmap"><div style="cursor:pointer;" onclick="$(&#39;#getmap&#39;).hide();map.clearOverlays();">关闭</div><div id="roommap"></div></div>
    <!--引用百度地图end-->


</div>
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
                    <a href="https://www.muniao.com/beijing/" title="北京短租" target="_blank">北京短租房</a><a href="https://www.muniao.com/shanghai/" title="上海短租" target="_blank">上海短租</a><a href="https://www.muniao.com/chongqing/" title="重庆短租" target="_blank">重庆短租房</a><a href="https://www.muniao.com/tianjin/" title="天津短租" target="_blank">天津短租房</a><a href="https://www.muniao.com/qingdao/" title="青岛短租" target="_blank">青岛短租房</a><a href="https://www.muniao.com/qinhuangdao/" title="秦皇岛短租" target="_blank">秦皇岛短租房</a><a href="https://www.muniao.com/sanya/" title="三亚短租" target="_blank">三亚短租房</a><a href="https://www.muniao.com/dalian/" title="大连短租" target="_blank">大连短租房</a><a href="https://www.muniao.com/weihai/" title="威海短租" target="_blank">威海短租房</a><a href="https://www.muniao.com/rizhao/" title="日照短租" target="_blank">日照短租房</a><a href="https://www.muniao.com/yantai/" title="烟台短租" target="_blank">烟台短租房</a><a href="https://www.muniao.com/xiamen/" title="厦门短租" target="_blank">厦门短租房</a><a href="https://www.muniao.com/chengde/" title="承德短租" target="_blank">承德短租房</a><a href="https://www.muniao.com/dali/" title="大理短租" target="_blank">大理短租房</a><a href="https://www.muniao.com/beihai/" title="北海短租" target="_blank">北海短租房</a><a href="https://www.muniao.com/shenzhen/" title="深圳短租" target="_blank">深圳短租房</a><a href="https://www.muniao.com/shenyang/" title="沈阳短租" target="_blank">沈阳短租房</a><a href="https://www.muniao.com/chengdu/" title="成都短租" target="_blank">成都短租房</a><a href="https://www.muniao.com/suzhou/" title="苏州短租" target="_blank">苏州短租房</a><a href="https://www.muniao.com/hangzhou/" title="杭州短租" target="_blank">杭州短租房</a><a href="https://www.muniao.com/xian/" title="西安短租" target="_blank">西安短租房</a><a href="https://www.muniao.com/guangzhou/" title="广州短租" target="_blank">广州短租房</a><a href="https://www.muniao.com/changsha/" title="长沙短租" target="_blank">长沙短租房</a><a href="https://www.muniao.com/kunming/" title="昆明短租" target="_blank">昆明短租房</a><a href="https://www.muniao.com/nanjing/" title="南京短租" target="_blank">南京短租房</a><a href="https://www.muniao.com/wuhan/" title="武汉短租" target="_blank">武汉短租房</a><a href="https://www.muniao.com/zhengzhou/" title="郑州短租" target="_blank">郑州短租房</a><a href="https://www.muniao.com/shijiazhuang/" title="石家庄短租" target="_blank">石家庄短租房</a><a href="https://www.muniao.com/wuxi/" title="无锡短租" target="_blank">无锡短租房</a><a href="https://www.muniao.com/haerbin/" title="哈尔滨短租" target="_blank">哈尔滨短租房</a><a href="https://www.muniao.com/nanchang/" title="南昌短租" target="_blank">南昌短租房</a><a href="https://www.muniao.com/haikou/" title="海口短租" target="_blank">海口短租房</a><a href="https://www.muniao.com/huangshan/" title="黄山短租" target="_blank">黄山短租房</a><a href="https://www.muniao.com/zhuhai/" title="珠海日租房" target="_blank">珠海日租房</a><a href="https://www.muniao.com/ningbo/" title="宁波日租房" target="_blank">宁波日租房</a><a href="https://www.muniao.com/changchun/" title="长春日租房" target="_blank">长春日租房</a><a href="https://www.muniao.com/yangzhou/" title="扬州日租房" target="_blank">扬州日租房</a><a href="https://www.muniao.com/tangshan/" title="唐山日租房" target="_blank">唐山日租房</a><a href="https://www.muniao.com/huludao/" title="葫芦岛日租房" target="_blank">葫芦岛日租房</a><a href="https://www.muniao.com/taian/" title="泰安日租房" target="_blank">泰安日租房</a><a href="https://www.muniao.com/guiyang/" title="贵阳短租公寓" target="_blank">贵阳短租公寓</a><a href="https://www.muniao.com/guilin/" title="桂林日租房" target="_blank">桂林日租房</a><a href="https://www.muniao.com/xiangxi/" title="湘西日租房" target="_blank">湘西日租房</a><a href="https://www.muniao.com/hefei/" title="合肥日租房" target="_blank">合肥日租房</a><a href="https://www.muniao.com/jinzhong/" title="晋中日租房" target="_blank">晋中日租房</a><a href="https://www.muniao.com/xining/" title="西宁日租房" target="_blank">西宁日租房</a><a href="https://www.muniao.com/fuzhou/" title="福州日租房" target="_blank">福州日租房</a><a href="https://www.muniao.com/baoding/" title="保定日租房" target="_blank">保定日租房</a><a href="https://www.muniao.com/zhoushan/" title="舟山日租房" target="_blank">舟山日租房</a><a href="https://www.muniao.com/dongguan/" title="东莞日租房" target="_blank">东莞日租房</a>
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








    </ul>
    <script>
        $(function () {
            var s = $("#indes").val();
            if (s == 1) {
                getindex();
            }
        })
        function getindex() {
            var list = [{ "title": "珠海短租房公寓", "link": "https://www.muniao.com/zhuhai/null-0-0-0-4-0-0-0-1.html" }, { "title": "中山短租房公寓", "link": "https://www.muniao.com/zhongshan/null-0-0-0-4-0-0-0-1.html" }, { "title": "郑州短租房公寓", "link": "https://www.muniao.com/zhengzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "张家界短租房公寓", "link": "https://www.muniao.com/zhangjiajie/null-0-0-0-4-0-0-0-1.html" }, { "title": "西双版纳短租房公寓", "link": "https://www.muniao.com/xishuangbanna/null-0-0-0-4-0-0-0-1.html" }, { "title": "西宁短租房公寓", "link": "https://www.muniao.com/xining/null-0-0-0-4-0-0-0-1.html" }, { "title": "香港短租房公寓", "link": "https://www.muniao.com/xianggang/null-0-0-0-4-0-0-0-1.html" }, { "title": "西安短租房公寓", "link": "https://www.muniao.com/xian/null-0-0-0-4-0-0-0-1.html" }, { "title": "厦门短租房公寓", "link": "https://www.muniao.com/xiamen/null-0-0-0-4-0-0-0-1.html" }, { "title": "无锡短租房公寓", "link": "https://www.muniao.com/wuxi/null-0-0-0-4-0-0-0-1.html" }, { "title": "武汉短租房公寓", "link": "https://www.muniao.com/wuhan/null-0-0-0-4-0-0-0-1.html" }, { "title": "威海短租房公寓", "link": "https://www.muniao.com/weihai/null-0-0-0-4-0-0-0-1.html" }, { "title": "天津短租房公寓", "link": "https://www.muniao.com/tianjin/null-0-0-0-4-0-0-0-1.html" }, { "title": "太原短租房公寓", "link": "https://www.muniao.com/taiyuan/null-0-0-0-4-0-0-0-1.html" }, { "title": "苏州短租房公寓", "link": "https://www.muniao.com/suzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "石家庄短租房公寓", "link": "https://www.muniao.com/shijiazhuang/null-0-0-0-4-0-0-0-1.html" }, { "title": "深圳短租房公寓", "link": "https://www.muniao.com/shenzhen/null-0-0-0-4-0-0-0-1.html" }, { "title": "沈阳短租房公寓", "link": "https://www.muniao.com/shenyang/null-0-0-0-4-0-0-0-1.html" }, { "title": "上海短租房公寓", "link": "https://www.muniao.com/shanghai/null-0-0-0-4-0-0-0-1.html" }, { "title": "三亚短租房公寓", "link": "https://www.muniao.com/sanya/null-0-0-0-4-0-0-0-1.html" }, { "title": "日照短租房公寓", "link": "https://www.muniao.com/rizhao/null-0-0-0-4-0-0-0-1.html" }, { "title": "青岛短租房公寓", "link": "https://www.muniao.com/qingdao/null-0-0-0-4-0-0-0-1.html" }, { "title": "盘锦短租房公寓", "link": "https://www.muniao.com/panjin/null-0-0-0-4-0-0-0-1.html" }, { "title": "宁波短租房公寓", "link": "https://www.muniao.com/ningbo/null-0-0-0-4-0-0-0-1.html" }, { "title": "南宁短租房公寓", "link": "https://www.muniao.com/nanning/null-0-0-0-4-0-0-0-1.html" }, { "title": "南京短租房公寓", "link": "https://www.muniao.com/nanjing/null-0-0-0-4-0-0-0-1.html" }, { "title": "南戴河短租房公寓", "link": "https://www.muniao.com/qinhuangdao/nandaihe-0-0-0-4-0-0-0-1.html" }, { "title": "南昌短租房公寓", "link": "https://www.muniao.com/nanchang/null-0-0-0-4-0-0-0-1.html" }, { "title": "洛阳短租房公寓", "link": "https://www.muniao.com/luoyang/null-0-0-0-4-0-0-0-1.html" }, { "title": "兰州短租房公寓", "link": "https://www.muniao.com/lanzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "昆明短租房公寓", "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html" }, { "title": "济南短租房公寓", "link": "https://www.muniao.com/jinan/null-0-0-0-4-0-0-0-1.html" }, { "title": "吉林短租房公寓", "link": "https://www.muniao.com/jilinshi/null-0-0-0-4-0-0-0-1.html" }, { "title": "葫芦岛短租房公寓", "link": "https://www.muniao.com/huludao/null-0-0-0-4-0-0-0-1.html" }, { "title": "惠州短租房公寓", "link": "https://www.muniao.com/huizhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "呼和浩特短租房公寓", "link": "https://www.muniao.com/huhehaote/null-0-0-0-4-0-0-0-1.html" }, { "title": "黄山短租房公寓", "link": "https://www.muniao.com/huangshan/null-0-0-0-4-0-0-0-1.html" }, { "title": "合肥短租房公寓", "link": "https://www.muniao.com/hefei/null-0-0-0-4-0-0-0-1.html" }, { "title": "海口短租房公寓", "link": "https://www.muniao.com/haikou/null-0-0-0-4-0-0-0-1.html" }, { "title": "哈尔滨短租房公寓", "link": "https://www.muniao.com/haerbin/null-0-0-0-4-0-0-0-1.html" }, { "title": "贵阳短租房公寓", "link": "https://www.muniao.com/guiyang/null-0-0-0-4-0-0-0-1.html" }, { "title": "桂林短租房公寓", "link": "https://www.muniao.com/guilin/null-0-0-0-4-0-0-0-1.html" }, { "title": "广州短租房公寓", "link": "https://www.muniao.com/guangzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "大连短租房公寓", "link": "https://www.muniao.com/dalian/null-0-0-0-4-0-0-0-1.html" }, { "title": "重庆短租房公寓", "link": "https://www.muniao.com/chongqing/null-0-0-0-4-0-0-0-1.html" }, { "title": "成都短租房公寓", "link": "https://www.muniao.com/chengdu/null-0-0-0-4-0-0-0-1.html" }, { "title": "常州短租房公寓", "link": "https://www.muniao.com/changzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "长春短租房公寓", "link": "https://www.muniao.com/changchun/null-0-0-0-4-0-0-0-1.html" }, { "title": "北京短租房公寓", "link": "https://www.muniao.com/beijing/null-0-0-0-4-0-0-0-1.html" }, { "title": "北海短租房公寓", "link": "https://www.muniao.com/beihai/null-0-0-0-4-0-0-0-1.html" }, { "title": "北戴河短租房公寓", "link": "https://www.muniao.com/qinhuangdao/beidaihe-0-0-0-4-0-0-0-1.html" }, { "title": "保定短租房公寓", "link": "https://www.muniao.com/baoding/null-0-0-0-4-0-0-0-1.html" }, { "title": "营口短租房公寓", "link": "https://www.muniao.com/yingkou/null-0-0-0-4-0-0-0-1.html" }, { "title": "秦皇岛短租房公寓", "link": "https://www.muniao.com/qinhuangdao/null-0-0-0-4-0-0-0-1.html" }, { "title": "昆山短租房公寓", "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html" }, { "title": "杭州短租房公寓", "link": "https://www.muniao.com/hangzhou/null-0-0-0-4-0-0-0-1.html" }, { "title": "长沙短租房公寓", "link": "https://www.muniao.com/changsha/null-0-0-0-4-0-0-0-1.html" }, { "title": "佛山短租房公寓", "link": "https://www.muniao.com/foshan/null-0-0-0-4-0-0-0-1.html" }, { "title": "大同短租房公寓", "link": "https://www.muniao.com/datong/null-0-0-0-4-0-0-0-1.html" }, { "title": "泉州短租房公寓", "link": "https://www.muniao.com/quanzhou/null-0-0-0-4-0-0-0-1.html" }];
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
                    $('html,body').animate({ scrollTop: newTopHeight }, 300);
                }
            }
        });
    </script>
    <div class="w_footer_nav">
        <div class="s_mn_footer_nav">
            <a href="https://www.muniao.com/single_10.html" rel="nofollow" target="_blank" title="免责声明">免责声明</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_3.html" target="_blank" title="木鸟短租客服">联系我们</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_5.html" rel="nofollow" target="_blank" title="新手指南">新手指南</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a><span class="m10">|</span>

            <a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a><span class="m10">|</span>
            <a href="https://www.muniao.com/list_news_0_1.html" target="_blank" title="新闻资讯">新闻资讯</a><span class="m10">|</span>
            <a href="https://www.muniao.com/single_9.html" rel="nofollow" target="_blank" title="媒体报道">媒体报道</a>



        </div>
        <div class="s_mn_footer_nav f12">客服电话：400-056-0055 或 010-89180879<span class="m10">客户服务：service@muniao.com</span><span class="m10">意见反馈：feedback@muniao.com</span></div>
        <div class="s_mn_footer_nav f12">
            网站备案/许可证号：京ICP备12043553号-3&nbsp;京公网安备11010802011855号&nbsp;北京爱游易科技有限公司&nbsp;
        </div>
        <div style="display:none;">
            <script>
                var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1000373664'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/z_stat.php%3Fid%3D1000373664' type='text/javascript'%3E%3C/script%3E"));
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
            </script><span id="cnzz_stat_icon_1000373664"><a href="http://www.cnzz.com/stat/website.php?web_id=1000373664" target="_blank" title="站长统计">站长统计</a></span><script src="${staticRoot}/images/z_stat.php" type="text/javascript"></script><script src="${staticRoot}/images/core.php" charset="utf-8" type="text/javascript"></script><script src="${staticRoot}/images/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=59c4ac1df66ae9bdb2ce804f09084ea1" target="_blank"><img border="0" src="${staticRoot}/images/21.gif" width="20" height="20"></a><script src="${staticRoot}/images/11.0.1.js.下载" id="sozz"></script><script charset="utf-8" src="${staticRoot}/images/ab77b6ea7f3fbf79.js.下载"></script>
            <!-- cnzz统计代码：-->

        </div>
        <div class="s_mn_security">
            <ul class="s_mn_security_list">
                <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心" target="_blank"><img src="${staticRoot}/images/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109" height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://www.cyberpolice.cn/" rel="nofollow" title="网络110" target="_blank"><img src="${staticRoot}/images/pic2.jpg" alt="网络110" title="网络110" width="109" height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img src="${staticRoot}/images/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109" height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测" target="_blank"><img src="${staticRoot}/images/pic6.jpg" alt="安全检测" title="安全检测" width="109" height="45" style="border-radius: 2px;"></a></li>
                <li>

                </li>
            </ul>
        </div>
        <!--Pc站百度统计代码：-->

    </div>

</div>




<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script><script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/images/code"></script></body></html>