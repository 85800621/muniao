<!DOCTYPE html>
<!-- saved from url=(0041)http://user2.muniao.com/Room/Step4/203026 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script src="${staticRoot}/add/jquery-1.10.2.min.js.下载"></script>
    <script src="${staticRoot}/add/city_info.js.下载"></script>
    <script src="${staticRoot}/add/city_cn2en.js.下载"></script>
    <script src="${staticRoot}/add/CheckBrowser.js.下载"></script>
    <link href="${staticRoot}/add/jquery.datetimepicker.css" rel="stylesheet">
    <link href="${staticRoot}/add/reset.css" rel="stylesheet">
    <link href="${staticRoot}/add/style_single.css" rel="stylesheet">
    <link href="${staticRoot}/add/style.css" rel="stylesheet" type="text/css">
    <link href="${staticRoot}/add/webuploader.css" rel="stylesheet" type="text/css">

    <script type="text/javascript">
        function html2Escape(sHtml) {
            return sHtml.replace(/[<>&"]/g, function (c) {
                return { '<': '&lt;', '>': '&gt;', '&': '&amp;', '"': '&quot;' }[c];
            });
        }

        //转意符换成普通字符
        function escape2Html(str) {
            var arrEntities = { 'lt': '<', 'gt': '>', 'nbsp': ' ', 'amp': '&', 'quot': '"' };
            return str.replace(/&(lt|gt|nbsp|amp|quot);/ig, function (all, t) {
                return arrEntities[t];
            });
        }

        //参数赋值
        var roomid = '203026';
        var room;
        $(document).ready(function () {
            $.post("/Room/req", { step: '102_8', data: '{"roomid":' + roomid + '}' }, function (json) {
                room = JSON.parse(json).data.data;
                for (var i = 0; i < room.support.length; i++) {
                    if (room.support[i].check) {
                        $('#support' + (room.support[i].id)).iCheck('check');
                    }
                }
                for (var i = 0; i < room.charge.length; i++) {
                    if (room.charge[i].check) {
                        $('#charge' + (i + 1)).iCheck('check');
                        $('#charge' + (i + 1) + '_price').val(room.charge[i].fee == 0 ? '' : room.charge[i].fee);
                    }
                }
                for (var i = 0; i < room.service.srv_bei_dan.length; i++) {
                    if (room.service.srv_bei_dan[i].check) {
                        $('#server-select').val(room.service.srv_bei_dan[i].name);
                        $('#server-select').attr('data_id', room.service.srv_bei_dan[i].id);
                    }
                }
                for (var i = 0; i < room.service.srv_wei_sheng.length; i++) {
                    if (room.service.srv_wei_sheng[i].check) {
                        $('#clear-select').val(room.service.srv_wei_sheng[i].name);
                        $('#clear-select').attr('data_id', room.service.srv_bei_dan[i].id);
                    }
                }
            });
        });
        var tj = true;
        //提交
        function submit() {
            var twonum = 0;
            var arr_supports = [];
            if (tj) {
                tj = false;
                $("#div_support_list1 input,#div_support_list2 input,#div_support_list3 input").each(function () {
                    if ($(this).prop("checked")) {
                        twonum++;
                        arr_supports.push(parseInt($(this).val()));
                    }
                });
                if (twonum == 0) {
                    alert('请选择您的配套设施');
                    tj = true;
                    return false;
                }
                var chargeObj = [];
                for (var i = 1; i <= 7; i++) {
                    chargeObj.push({ id: i, fee: parseInt($('#charge' + i + '_price').val() || 0), check: $('#charge' + i).is(":checked") });
                }
                var postData = {
                    roomid: roomid,
                    support: arr_supports, //选中的配套设施id集合
                    srv_bei_dan: parseInt($('#server-select').attr('data_id') || -1), //被单清洗类型
                    srv_wei_sheng: parseInt($('#clear-select').attr('data_id') || -1), //卫生清扫类型
                    charge: chargeObj
                };
                var datastr = JSON.stringify(postData);
                var url = '/Room/Submit_Step4';
                $.getJSON(url, { postData: datastr }, function (data) {
                    var jsonData = JSON.parse(data);
                    if (jsonData.status == 0) {
                        location.href = '/Room/Step5/' + roomid;
                    } else {
                        alert(jsonData.message);
                        tj = true;
                    }
                })
            }
        }
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
<a href="http://www.chromeliulanqi.com/" target="_blank" name="升级谷歌浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="${staticRoot}/add/google_Icon.jpg"/></a>
<a href="http://www.firefox.com.cn" target="_blank" name="升级火狐浏览器" id="upgrade_firefox" style="display:inline-block;  vertical-align:middle;  margin:0 18px 0 12px;_margin-top:4px;_margin-bottom:4px;"><img src="${staticRoot}/add/firefox_Icon.jpg"/></a>
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
        background: url("${staticRoot}/add/login_btn.png")no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("${staticRoot}/add/login_btn.png")no-repeat -310px 0;
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
            <a class="newa_sina" href="http://user2.muniao.com/Room/Step4/203026#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Room/Step4/203026#"></a>
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



<div>
    <!--内容部分start-->
    <input type="hidden" id="roomid" value="150423">
    <div class="release">
        <h3 class="r-address-title">还有1步就能发布您的房源啦</h3>
        <p class="r-title">
            <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step1/203026&#39;;">位置信息</span>|
            <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step2/203026&#39;;">基本信息</span>|
            <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step3/203026&#39;;">价格规则</span>|
            <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step4/203026&#39;;" class="c-red">配套设施</span>|
            <span style="cursor:pointer;" onclick="location.href = &#39;/Room/Step5/203026&#39;;">房源描述</span>
        </p>
        <div class="r-content esse-content">
            <h2 class="esse-infor">配套设施及服务</h2>
            <div class="esse-list">
                <div class="esse-list-t step3-leftTitle">常见设施</div>
                <div id="div_support_list1" class="esse-list-con facili-con">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support1" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support1" class="">宽带上网</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support2" type="checkbox" value="2" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support2" class="">无线WIFI</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support3" type="checkbox" value="3" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support3">电视</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support4" type="checkbox" value="4" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support4">淋浴</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support5" type="checkbox" value="5" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support5">空调</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support6" type="checkbox" value="6" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support6" class="">暖气</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support7" type="checkbox" value="7" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support7">洗衣机</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support8" type="checkbox" value="8" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support8">电冰箱</label>
                </div>
            </div>
            <div class="esse-list">
                <div class="esse-list-t step3-leftTitle">便利设施</div>
                <div id="div_support_list2" class="esse-list-con facili-con">
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support9" type="checkbox" value="9" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support9">全天热水</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support10" type="checkbox" value="10" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support10">厨房</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support11" type="checkbox" value="11" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support11">电脑</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support12" type="checkbox" value="12" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support12">毛巾</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support13" type="checkbox" value="13" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support13">拖鞋</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support14" type="checkbox" value="14" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support14">一次性用品</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support15" type="checkbox" value="15" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support15">热水壶</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support16" type="checkbox" value="16" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support16">提供早餐</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support17" type="checkbox" value="17" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support17">电梯</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support18" type="checkbox" value="18" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support18">保安</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support19" type="checkbox" value="19" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support19">对讲门禁</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support20" type="checkbox" value="20" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support20">餐具炊具</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support21" type="checkbox" value="21" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support21">吹风机</label>
                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support22" type="checkbox" value="22" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support22">智能门锁</label>
                </div>
            </div>
            <div class="esse-list">
                <div class="esse-list-t special-noFloat">特殊条件<span>（注：不选择默认为不允许）</span></div>
                <div id="div_support_list3" class="esse-list-con facili-con special-checkbox">


                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support25" type="checkbox" value="25" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support25" class="">允许携带宠物</label>

                    <div class="icheckbox_flat-red" style="position: relative;"><input id="support29" type="checkbox" value="29" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                    <label for="support29">可接待外宾</label>

                </div>
            </div>
            <div class="esse-list">
                <div class="esse-list-t special-noFloat">服务与卫生<span>（注：请遵守您的选择，为房客提供服务的同时，也是对您最好的宣传）</span></div>
                <div class="esse-list-con facili-con clear">
                    <div class="check-rule esse-input clear-select clear">
                        <span>被单</span>
                        <input id="server-select" type="text" value="请选择" data_id="0" readonly="readonly">
                        <ul id="server-select-list" class="ddlStyle" style="height:200px; overflow-y:scroll;">
                            <li accesskey="0">被单一客一换</li>
                            <li accesskey="1">被单一天一换</li>
                            <li accesskey="2">被单两天一换</li>
                            <li accesskey="3">被单三天一换</li>
                            <li accesskey="4">被单四天一换</li>
                            <li accesskey="5">被单五天一换</li>
                            <li accesskey="6">被单六天一天</li>
                            <li accesskey="7">被单七天一换</li>
                        </ul>
                        <script>
                            var ddl = $();//下拉框列表容器
                            $("#server-select").focus(function () {
                                $("#server-select-list").show();
                            });
                            $("#server-select-list li").each(function (a, b) {
                                $(b).click(function () {
                                    $("#server-select").val($(this).html());
                                    $("#server-select").attr('data_id', $(this).attr('accesskey'));
                                    $("#server-select-list").hide();
                                })
                            });
                            $(document).click(function (e) {
                                //console.log(e)
                                if (e.target.id != "server-select")
                                    $("#server-select-list").hide();
                            });
                        </script>
                    </div>
                    <div class="check-rule esse-input clear-select clear">
                        <span>卫生</span>
                        <input id="clear-select" type="text" value="请选择" data_id="0" readonly="readonly">
                        <ul id="clear-select-list" class="ddlStyle" style="height:200px; overflow-y:scroll;">
                            <li accesskey="0">卫生一客一扫</li>
                            <li accesskey="1">卫生一天一扫</li>
                            <li accesskey="2">卫生两天一扫</li>
                            <li accesskey="3">卫生三天一扫</li>
                            <li accesskey="4">卫生四天一扫</li>
                            <li accesskey="5">卫生五天一扫</li>
                            <li accesskey="6">卫生六天一扫</li>
                            <li accesskey="7">卫生七天一扫</li>
                        </ul>
                        <script>
                            var ddl = $();//下拉框列表容器
                            $("#clear-select").focus(function () {
                                $("#clear-select-list").show();
                            });
                            $("#clear-select-list li").each(function (a, b) {
                                $(b).click(function () {
                                    $("#clear-select").val($(this).html());
                                    $("#clear-select").attr('data_id', $(this).attr('accesskey'));
                                    $("#clear-select-list").hide();
                                })
                            });
                            $(document).click(function (e) {
                                //console.log(e)
                                if (e.target.id != "clear-select")
                                    $("#clear-select-list").hide();
                            });
                        </script>
                    </div>
                </div>
            </div>
            <div class="esse-list last-list">
                <div class="esse-list-t special-noFloat">可能收费的项目<span>（注：若收费请填写价格，0或不填则默认为免费）</span></div>
                <ul class="esse-list-con facili-con clear">
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge1" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge1">停车位</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge1_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge2" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge2">清洁</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge2_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge3" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge3">水电</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge3_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge4" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge4">厨房使用</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge4_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge5" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge5">允许聚会</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge5_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge6" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge6">行李寄存</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge6_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                    <li class="facili-list">
                        <div class="facili-list-checkbox">
                            <div class="icheckbox_flat-red" style="position: relative;"><input id="charge7" type="checkbox" value="1" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div>
                            <label for="charge7">机场车站接送</label>
                        </div>
                        <div class="price-visible esse-input">
                            <i class="dollar-icon">￥</i>
                            <input id="charge7_price" type="text" readonly="" value="" maxlength="4" placeholder="请输入金额">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <a href="javascript:;" class="releasebtn threee-input" onclick="submit()">
            <span class="preser">保存并继续</span>
            还剩1步完成发布
        </a>
        <script src="${staticRoot}/add/release.js.下载"></script>
        <script src="${staticRoot}/add/icheck.min.js.下载"></script>
        <script>
            $(document).ready(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_flat-red',
                    radioClass: 'iradio_flat-red'
                });

                $('.facili-list input').each(function (a, b) {
                    $(b).on('ifChecked', function () {
                        $(this).attr("checked", "checked");
                    });
                });

                $('.facili-list input').each(function (a, b) {
                    $(b).on('ifUnchecked', function () {
                        $(this).removeAttr("checked");
                    });
                });
                $(".facili-list-checkbox input").on("ifChecked", function () {
                    $(this).parents(".facili-list").find("input[type=text]").prop("readonly", false).focus();
                }).on("ifUnchecked", function () {
                    if (!('placeholder' in document.createElement('input'))) {
                        $(this).val($(this).attr("placeholder"));
                    } else {
                        $(this).val("");
                    }
                    $(this).parents(".facili-list").find("input[type=text]").prop("readonly", true);
                })
            });
        </script>
    </div>
    <!--内容部分end-->
</div>
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