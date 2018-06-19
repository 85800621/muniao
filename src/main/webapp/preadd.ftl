<!DOCTYPE html>
<!-- saved from url=(0045)http://user2.muniao.com/Index/MoveHouse?utp=1 -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <#assign basePath=request.contextPath />
    <script charset="utf-8" src="${staticRoot}/images/v.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mv.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mba.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mvl.js.下载"></script>
    <script src="${staticRoot}/images/push.js.下载"></script>

    <script type="text/javascript" src="${staticRoot}/images/api"></script>
    <script type="text/javascript" src="${staticRoot}/images/getscript"></script>
    <script src="${staticRoot}/images/jquery-1.10.2.min.js.下载"></script>
    <script src="${staticRoot}/images/city_info.js.下载"></script>
    <script src="${staticRoot}/images/city_cn2en.js.下载"></script>
    <script src="${staticRoot}/images/CheckBrowser.js.下载"></script>
    <link href="${staticRoot}/images/jquery.datetimepicker.css" rel="stylesheet">

    <link href="${staticRoot}/images/reset.css" rel="stylesheet">
    <link href="${staticRoot}/images/style_single.css" rel="stylesheet">
    <link href="${staticRoot}/images/style.css" rel="stylesheet" type="text/css">
    <link href="${staticRoot}/images/webuploader.css" rel="stylesheet" type="text/css">
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
    <link href="${staticRoot}/images/publish.css" rel="stylesheet">
    <script src="${staticRoot}/images/jquery-1.10.2.min.js.下载"></script>
    <script type="text/javascript">
        $(function () {
            $("body").on("click", ".center-dialogClose", function () {
                $(this).parent().hide();
            })
        })
        $(document).ready(function () {
            //判断浏览器是否支持placeholder属性
            var supportPlaceholder = 'placeholder' in document.createElement('input'),
                    placeholder = function (input) {
                        var text = input.attr('placeholder'),
                                defaultValue = input.defaultValue;
                        if (!defaultValue) {
                            input.val(text).addClass("phcolor");
                        }
                        //输入的字符不为灰色
                        input.keydown(function () {
                            $(this).removeClass("phcolor");
                        });
                    };
            //当浏览器不支持placeholder属性时，调用placeholder函数
            if (!supportPlaceholder) {
                $('input').each(function () {
                    var text = $(this).attr("placeholder");
                    if ($(this).attr("type") == "text" && !$(this).val()) {
                        placeholder($(this));
                    }
                });
            }
            var spotMax = 20;
            if ($('.spot').size() >= spotMax) {
                $(obj).hide();
            }
            $("#add").click(function () {
                addSpot(this, spotMax);
            });
            $("body").on("focus", ".spot input", function () {
                var text = $(this).attr('placeholder');
                $(this).css("border", "1px solid #ff9180");
                if (!supportPlaceholder) {
                    if ($(this).val() == text) {
                        $(this).val("");
                    }
                }
            }).on("blur", ".spot input", function () {
                var text = $(this).attr('placeholder');
                if (!supportPlaceholder) {
                    if ($(this).val() == "") {
                        $(this).val(text).addClass("phcolor");
                        $(this).removeAttr("style");
                    }
                }
                if ($(this).attr("name") != "houselink") {
                    if ($(this).val().length > 20) {
                        $(this).parent().siblings(".publish-info").show();
                    } else {
                        $(this).removeAttr("style");
                        $(this).parent().siblings(".publish-info").hide();
                    }
                } else {
                    $(this).removeAttr("style");

                }

            })

            function addSpot(obj, sm) {
                var num = $('.spot').size();
                if (num == 1) {
                    $('.spot .publish-btnReduce').show();
                }
                num = parseInt(num) + 1;
                $('#spots').append(
                        '<li class="clear spot"><span class="publish-td-cell1"><input type="text"  placeholder="请输入链接地址"  id="houselink" name="houselink"/></span><span class="publish-td-cell2"><input type="text" class="publish-td-cell2" placeholder="例如：河北省石家庄市" id="housecity" name="housecity" /></span><span class="publish-td-cell3"><input type="text" class="publish-td-cell2" placeholder="例如：石门小区"  id="housexiaoqu" name="housexiaoqu"/></span><span class="publish-td-cell4"><input type="text"  class="publish-td-cell2" placeholder="例如：1102" id="housenumber" name="housenumber"  /></span><a href="javascript:;" class="publish-btnReduce">删除</a><p class="publish-info">城市、小区或门牌号输入长度不能超过20</p></li>')
                        .find(".publish-btnReduce").click(function () {
                    $(this).parent().remove();
                    if ($('.spot').size() == 1) {
                        $(".spot .publish-btnReduce").hide();
                        return false;
                    }
                    $('#add').show();
                });

                if (!supportPlaceholder) {
                    $('.spot').last().find('input').each(function () {
                        var text = $(this).attr("placeholder");
                        if ($(this).attr("type") == "text") {
                            placeholder($(this));
                        }
                    });
                }
                if ($('.spot').size() >= sm) {
                    $(obj).hide();
                }
            };
            $("body").on("click", "#sumbit", function (obj) {
                if ($(obj).hasClass("active")) {
                    return false;
                }
                $(obj).addClass("active");
                var isTrue = false, arrayObj = [], datas = [];
                $("input[name=houselink]").each(function () {
                    var thisValue = $.trim($(this).val());
                    if (!thisValue || thisValue == "请输入链接地址") {
                        alert("请您填写全部房源链接！");
                        isTrue = true;
                        $(obj).removeClass("active");
                        return false;
                    }
                    else {
                        datas.push(thisValue);
                    }
                })
                if (isTrue) {
                    return false;
                }
                $(".publish-info").each(function () {
                    if ($(this).is(":visible")) {
                        alert("城市、小区或门牌号输入长度不能超过20");
                        isTrue = true;
                        $(obj).removeClass("active");
                        return false;
                    }
                })
                if (isTrue) {
                    return false;
                }
                //房源链接去重
                var isok = remove(datas);
                var s = "," + datas.join(",") + ",";
                for (var i = 0; i < datas.length; i++) {
                    if (s.replace("," + datas[i] + ",", ",").lastIndexOf("," + datas[i] + ",") > -1) {
                        alert("您填写的链接已重复，请核实再提交！");
                        $(obj).removeClass("active");
                        return false;
                    }
                }

                $(".spot").each(function () {
                    var inputObj = $(this).find("input"),
                            roomUrl = inputObj.eq(0).val(),
                            roomCity = inputObj.eq(1).val(),
                            roomName = inputObj.eq(2).val(),
                            roomNum = inputObj.eq(3).val();
                    arrayObj.push({
                        "roomUrl": encodeURIComponent(roomUrl),
                        "roomCity": roomCity,
                        "roomName": roomName,
                        "roomNum": roomNum
                    })
                })
                $.ajax({
                    type: "post",
                    url: "/index/addmovelink2_0",
                    data: JSON.stringify(arrayObj),
                    success: function (data) {
                        if (data == 1) {
                            $("#zahnshi").html("您上传的房源，正在迁移中，请耐心等待！");
                            location.reload();
                        } else {
                            alert("提交失败，请重新提交！");
                        }
                    },
                    error: function (data) {

                    }
                })
            });

            function remove(a) {
                return /(\x0f[^\x0f]+)\x0f[\s\S]*\1/.test("\x0f" + a.join("\x0f\x0f") + "\x0f");
            }
        });
    </script>

    <link type="text/css" rel="stylesheet" href="${staticRoot}/images/webuploader(1).css" charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="${staticRoot}/images/register.css" charset="UTF-8">

</head>

<body style="">
<iframe src="${staticRoot}/images/b.html" id="mediav_cookiemapping"
        style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>
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
<!--href="http://user2.muniao.com/Index/MoveHouse?utp=1#close"-->
<!--style="display: none;"><em class="ui-icon ui-icon-close">关闭</em></a>-->
<!--<div id=":tabCount" class="webim-window-tab-count">-->
<!--0-->
<!--</div>-->
<!--<em id=":tabIcon" class="webim-icon webim-icon-buddy"></em>-->
<!--<h4 id=":tabTitle">联系人[0/0]</h4>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--<div>-->
<!--<div id=":window" class="webim-window-window" style="width: 258px;">-->
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
<!--href="http://user2.muniao.com/Index/MoveHouse?utp=1#"><img width="50"-->
<!--height="50"-->
<!--defaultsrc=""-->
<!--onerror="var d=this.getAttribute(&#39;defaultsrc&#39;);if(d &amp;&amp; this.src!=d)this.src=d;"-->
<!--class="ui-corner-all"-->
<!--src="${staticRoot}/images/d590d8e4b87c4c65922d653c3812d4a620180604093556672.jpg_150_150.jpg"></a>-->
<!--<div class="webim-user-show"><h4><a id=":userShowTrigger"-->
<!--href="http://user2.muniao.com/Index/MoveHouse?utp=1#show"><strong-->
<!--id=":userNick">嘉利学府</strong><span id=":userShow"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</span><em-->
<!--class="ui-icon ui-icon-triangle-1-s">show_status_list</em></a>-->
<!--</h4>-->
<!--<p id=":userShowList" class="ui-state-active ui-corner-all"-->
<!--style="display: none;">-->
<!--<a href="http://user2.muniao.com/Index/MoveHouse?utp=1#available"-->
<!--class="webim-user-show-available"><em-->
<!--class="webim-icon webim-icon-available">在线</em>在线</a>-->
<!--<a href="http://user2.muniao.com/Index/MoveHouse?utp=1#dnd"-->
<!--class="webim-user-show-dnd"><em-->
<!--class="webim-icon webim-icon-dnd">忙碌</em>忙碌</a>-->
<!--<a href="http://user2.muniao.com/Index/MoveHouse?utp=1#away"-->
<!--class="webim-user-show-away"><em-->
<!--class="webim-icon webim-icon-away">离开</em>离开</a>-->
<!--<a href="http://user2.muniao.com/Index/MoveHouse?utp=1#invisible"-->
<!--class="webim-user-show-invisible"><em-->
<!--class="webim-icon webim-icon-invisible">隐身</em>隐身</a>-->
<!--<a href="http://user2.muniao.com/Index/MoveHouse?utp=1#unavailable"-->
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
<!--href="http://user2.muniao.com/Index/MoveHouse?utp=1#close"-->
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
<!--<div id=":window" class="webim-window-window" style="width: 258px;">-->
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
<script src="http://js.bjglxf.com/j/adv.js"></script>
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
        <li><a href="${basePath}/index" class="s_mn_nav_over">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/featureslist" target="_self">特色短租</a></li>
        <li><a href="http://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="http://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
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
        background: url("../../Content/images/login_btn.png") no-repeat;
        margin-left: -15px;
    }

    .newa_login_btn:hover {
        background: url("../../Content/images/login_btn.png") no-repeat -310px 0;
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
            <a class="newa_sina" href="http://user2.muniao.com/Index/MoveHouse?utp=1#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Index/MoveHouse?utp=1#"></a>
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


<div class="publish-container">
    <div id="copy-roomForm" class="copy-form">
        <div class="copy-formTitle">一键迁移发布房源</div>
        <div class="publish-formDesc">
            <p class="publish-formDesc-first">您可以选择一键迁移发布房源或者创建新房源</p>
            <p>如果您的房源已经其它民宿平台发布，请到房源详情页复制页面的链接，一键迁移发布房源。</p>
            <p>链接格式如：https://www.airbnbchina.cn/rooms/1878938或者http://hrb.xiaozhu.com/fangzi/3976368430.html </p>
        </div>
        <div class="publish-formGroup">
            <div class="publish-formGroupContent">
                <div class="publish-formGroupTitle">
                    <span class="publish-th-cell1">房源链接</span>
                    <span class="publish-th-cell2">城市</span>
                    <span class="publish-th-cell3">小区</span>
                    <span class="publish-th-cell3">门牌号</span>
                </div>
                <ul class="publish-formObjContent" id="spots">
                    <li class="clear spot isok">
                        <span class="publish-td-cell1"><input type="text" placeholder="请输入链接地址" id="houselink"
                                                              name="houselink"></span>
                        <span class="publish-td-cell2"><input type="text" class="publish-td-cell2"
                                                              placeholder="例如：河北省石家庄市" id="housecity" name="housecity"></span>
                        <span class="publish-td-cell3"><input type="text" class="publish-td-cell2" placeholder="例如：石门小区"
                                                              id="housexiaoqu" name="housexiaoqu"></span>
                        <span class="publish-td-cell4"><input type="text" class="publish-td-cell2" placeholder="例如：1102"
                                                              id="housenumber" name="housenumber"></span>
                        <a href="javascript:;" class="publish-btnReduce" style="display:none">删除</a>
                        <p class="publish-info">城市、小区或门牌号输入长度不能超过20</p>
                    </li>
                </ul>
            </div>
            <a href="javascript:;" class="publish-btnAdd" id="add">添加房源</a>
            <a href="javascript:;" id="sumbit" class="publish-btn">一键迁移</a>
        </div>
        <div id="zahnshi" class="public-zhanshi">
        </div>

    </div>
    <div class="publish-create">
        <h3 class="publish-title">创建新房源</h3>
        <div class="publish-formGroup">
            <div class="publish-formGroupContent publish-formDesc">
                <p>如果您的房源未在其它民宿平台发布，您可以直接开始创建新房源。</p>
            </div>
            <a href="${basePath}/Room/step1" class="publish-btn">创建房源</a>
        </div>
    </div>
</div>
<br><br>
<link href="${staticRoot}/images/w_style.css" rel="stylesheet" type="text/css">
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
                        src="${staticRoot}/images/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109" height="50"></a></li>
                <li><a href="http://www.cyberpolice.cn/wfjb/" rel="nofollow" title="网络110" target="_blank"><img
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
<!--&lt;!&ndash; 代码部分begin &ndash;&gt;-->
<!--<script type="text/javascript">-->
<!--document.write(unescape("%3Cscript src='http://webim.muniao.com:8080/webim2/?action=boot' type='text/javascript'%3E%3C/script%3E"));-->
<!--</script>-->
<!--<script src="${staticRoot}/images/saved_resource" type="text/javascript"></script>-->
<!--<link href="${staticRoot}/images/webim.min.css" media="all" type="text/css" rel="stylesheet">-->
<!--<link href="${staticRoot}/images/jquery.ui.theme.css" media="all" type="text/css" rel="stylesheet">-->
<!--<script src="${staticRoot}/images/web_socket.min.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim.min.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim-zh-CN.js.下载" charset="utf-8" type="text/javascript"></script>-->
<!--<script src="${staticRoot}/images/webim.php5.min.js.下载" charset="utf-8" type="text/javascript"></script>-->
<script language="JavaScript" src="${staticRoot}/images/o_code.js.下载"></script>
<div style="display:none;">
    <script type="text/javascript">
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1000373664'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/z_stat.php%3Fid%3D1000373664' type='text/javascript'%3E%3C/script%3E"));
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F59c4ac1df66ae9bdb2ce804f09084ea1' type='text/javascript'%3E%3C/script%3E"));
        (function () {
            var bp = document.createElement('script');
            bp.src = '//push.zhanzhang.baidu.com/push.js';
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
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
    <script type="text/javascript">
        var _py = _py || [];
        _py.push(['a', 'x5s..6h9N25bYbmKSHNiH6LUtm0']);
        _py.push(['domain', 'stats.bjglxf.com']);
        _py.push(['e', '']);
        -function (d) {
            var s = d.createElement('script'),
                    e = d.body.getElementsByTagName('script')[0];
            e.parentNode.insertBefore(s, e),
                    f = 'https:' == location.protocol;
            s.src = (f ? 'https' : 'http') + '://' + (f ? 'sjs.bjglxf.com ' : 'js.bjglxf.com') + '/j/adv.js';
        }(document);
    </script>
    <noscript>&lt;img src="//stats.bjglxf.com/adv.gif?a=x5s..6h9N25bYbmKSHNiH6LUtm0&amp;e=" style="display:none;"
        /&gt;
    </noscript>
</div>
<!--start of BDBridge-->
<style>
    #BDBridgeFixedWrap {
        position: absolute;
    }

    .sidebar {
        position: fixed;
        right: 30px;
        bottom: 162px;
        z-index: 3;
    }

    .index_consul {
        overflow: hidden;
        width: 95px;
        height: 170px; /*background:url(http://www.muniao.com/demotest/sider.png) no-repeat center top;*/
        position: absolute;
        top: -173px;
        left: -37px;
        cursor: pointer;
    }

    .sidebar ul {
        width: 40px;
        height: 160px;
        background: #DDDDDD;
        opacity: .96;
    }

    .side_click {
        width: 100%;
        height: 100%;
        display: inline-block;
    }

    .backTop a {
        display: block;
        width: 40px;
        height: 40px;
        background: #cccccc url(http://assets.muniao.com/assets/2015/images/side.png) no-repeat center -125px;
        margin-top: 8px;
    }

    .backTop a:hover {
        background: #B3B3B3 url(http://assets.muniao.com/assets/2015/images/side.png) no-repeat center -125px;
    }

    .sidebar li div {
        display: none;
    }

    .sidebar li, .backTop {
        width: 40px;
        height: 40px;
        cursor: pointer;
        position: relative;
    }

    .backTop {
        display: none;
    }

    .sidebar li:hover {
        background-color: #C3C3C3;
        opacity: 0.96;
    }

    .side_order {
        background: url(http://assets.muniao.com/assets/2015/images/side.png) no-repeat center 11px;
    }

    .tenant_f {
        background: url(http://assets.muniao.com/assets/2015/images/side.png) no-repeat center -35px;
    }

    .opinion_f {
        background: url(http://assets.muniao.com/assets/2015/images/side.png) no-repeat center -76px;
    }

    li.silder_hide {
        width: 34px;
        height: 35px;
        cursor: pointer;
        background: #DDDDDD;
        color: #9A9A9A;
        font-size: 12px;
        text-align: center;
        padding: 5px 3px 0;
    }

    .side_see_order {
        width: 120px;
        height: 36px;
        background: #444444;
        line-height: 36px;
        text-align: center;
        position: absolute;
        left: -140px;
        border-radius: 3px;
    }

    .side_see_order a {
        font-size: 16px;
        color: #19b5fe;
    }

    .tenant_tip {
        width: 140px;
        height: 110px;
        position: absolute;
        left: -180px;
        background: #444444;
        border-radius: 3px;
        padding: 0 10px;
        top: 0;
    }

    .tenant_tip p {
        color: #888888;
        font-size: 12px;
        margin: 0;
        padding: 0;
    }

    .tenant_tip a {
        display: inline-block;
        padding: 5px 10px;
        color: #FFFFFF;
        background: #19b5fe;
        font-size: 12px;
        margin-top: 12px;
        position: absolute;
        left: 10px;
        bottom: 10px;
    }

    .tenant_tip h3 {
        margin: 0;
        color: #19B5FE;
        font-size: 16px;
        padding: 10px 0;
        font-weight: normal;
    }
</style>
<!--end of BDBridge-->

<script type="text/javascript" src="${staticRoot}/images/webuploader.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/upload_headerImg.js.下载"></script>
<script type="text/javascript">
    var istj = true;
    var supportPlaceholder = 'placeholder' in document.createElement('input'),
            placeholder = function (input) {
                var text = input.attr('placeholder'),
                        defaultValue = input.defaultValue;
                if (!defaultValue) {
                    input.val(text).addClass("phcolor");
                }
                //输入的字符不为灰色
                input.keydown(function () {
                    $(this).removeClass("phcolor");
                });
            };
    //当浏览器不支持placeholder属性时，调用placeholder函数
    if (!supportPlaceholder) {
        $(".message-formBox input").each(function () {
            var text = $(this).attr("placeholder");
            if ($(this).attr("type") == "text" && !$(this).val()) {
                placeholder($(this));
            }
        });
        $(".message-formBox input").on("focus", function () {
            if ($(this).val() == $(this).attr('placeholder')) {
                $(this).val("");
            }
        }).on("blur", function () {
            if ($(this).val() == "") {
                $(this).val($(this).attr('placeholder')).addClass("phcolor");
            }
        })
    }
    /*method-select*/
    $(".form-moneySelect").click(function () {
        $(this).parent().find(".money-methodList").show();
    });
    $(".money-methodList li").click(function () {
        var mark = $(this).attr("mark"), elsemark = $(this).attr("elsemark");
        $(this).addClass("active").siblings().removeClass("active").parent().hide().parent().find(".form-moneySelect").html($(this).html()).css("color", "#4e4e4e");
        $(".money-method" + mark).show();
        $(".money-method" + elsemark).hide();
    });
    $(".message-formInputBox input").keydown(function () {
        $(this).hasClass("warn") ? $(this).removeClass("warn") : void (0);
    });
    $(".message-formInputBox input[name=idcard]").blur(function () {
        if ($(this).val() && !checkIdCardRule($(this).val()).rst) {
            $(this).addClass("warn").focus();
        }
    });
    $(".message-formInputBox input[name=bankcard]").blur(function () {
        if (!bankcard($(this).val())) {
            $(this).addClass("warn").focus();
        }
    });
    /*初始化*/
    $(function () {
        var ISfunction = 'False';
        if (ISfunction.toLowerCase() == "true") {
            var pic = '';
            if (pic.length > 0 && pic != null) {
                $("#conpic").attr("src", '');//用户头像
                $("#conpic").attr("url", '');//用户头像
                $(".img-uploadStatus").html('已上传');
            }
            $("#nickname").val('');//昵称
            var istrue = 'True';
            if (istrue.toLowerCase() == "true") {
                $("#fullname").attr("readonly", "true");
                $("#idcard").attr("readonly", "true");
            }
            $("#fullname").val('');//真实姓名
            $("#idcard").val('');//身份证号
            $("#uname").val('');//收款人姓名（必填）
            var mark = "", elsemark = "";
            var moneySelect = 0;
            if (moneySelect == 1) {
                mark = "Alipay";
                elsemark = "Bank";
                $(".form-moneySelect").html("支付宝");
                $("#aliapyname").val('');
            } else if (moneySelect == 3) {
                mark = "Bank";
                elsemark = "Alipay";
                $(".form-moneySelect").html("银行卡");
                $("#bankcard").val('');
                $("#bankname").val('');
            } else {
                $(".form-moneySelect").html("请选择");
            }
            $(".money-method" + mark).show();
            $(".money-method" + elsemark).hide();
        }

    });
    /*submit*/
    $("body").on("click", ".message-submitBtn", function () {
        var isTrue = true;
        /*当不能更改真实姓名和省份证时  判断提交是否正确*/
        var istrue = 'True';
        if (istrue.toLowerCase() == "true") {
            if (!$("#fullname").attr("readonly") || !$("#idcard").attr("readonly")) {
                alert("信息有误，请您刷新后重新上传！");
                return false;
            }
        }
        var pic = '';
        if (pic.length > 0 && pic != null) {
            var con = $("#conpic").attr("src");//用户头像
            var cons = $("#conpic").attr("url");//用户头像
            var html = $(".img-uploadStatus").html();
            if (con.replace("http://assets.muniao.com/", "").replace("_150_150.jpg", "") != cons || html != "已上传") {
                /*头像上传*/
                if (!$(".file-item").length) {
                    alert("请上传头像");
                    $(".write-messageBox").scrollTop(0);
                    isTrue = false;
                    return false;
                }
            }

        } else {
            /*头像上传*/
            if (!$(".file-item").length) {
                alert("请上传头像");
                $(".write-messageBox").scrollTop(0);
                isTrue = false;
                return false;
            }
        }
        if ($('.warn').length) {
            $('.warn').focus();
            isTrue = false;
            return false;
        }
        var conpic = $("#conpic").attr("url").replace("/thumb", "");//用户头像
        var nickname = $("#nickname").val().trim();//昵称
        var fullname = $("#fullname").val().trim();//真实姓名
        var idcard = $("#idcard").val().trim();//身份证号
        var uname = $("#uname").val().trim();//收款人姓名（必填）
        var chargetype = 0;//收款方式1 支付宝3 银行卡
        var moneySelect = $(".form-moneySelect").html()
        var banknum = "";//支付宝账号或银行卡号
        var bankname = "";//开户行当chargetype=3时必填
        $(".message-formInputBox input:visible").each(function (a, b) {
            if (a > 2) {
                if (moneySelect == "支付宝") {
                    chargetype = 1
                    banknum = $("#aliapyname").val();
                } else if (moneySelect == "银行卡") {
                    chargetype = 3
                    banknum = $("#bankcard").val();
                    bankname = $("#bankname").val();
                } else {
                    alert("您的收款方式设置不正确");
                    isTrue = false;
                    return false;
                }
            }
            if (!$(this).val()) {
                $(this).addClass("warn").focus();
                isTrue = false;
                return false;
            }
        });
        if (!isTrue) {
            return false;
        }
        if (istj) {
            istj = false;
            //头像、昵称
            var postData = {
                "uid": "0",//用户id
                "zend": "",//用户zend
                "type": 1,
                "nickname": nickname,//昵称
                "conpic": conpic//用户头像
            };
            //身份证信息
            var submitData = {
                "uid": "0",//用户id
                "zend": "",//用户zend
                "type": 3,
                "fullname": fullname,//真实姓名
                "idcard": idcard//身份证号
            };
            //开户行
            var ajaxData = {
                "uid": "0",
                "zend": "",
                "chargetype": chargetype,//收款方式1 支付宝3 银行卡
                "uname": uname,//收款人姓名（必填）
                "banknum": banknum,//支付宝账号或银行卡号
                "bankname": bankname//	开户行当chargetype=3时必填
            };
            var datastr = JSON.stringify(postData);
            var datastr1 = JSON.stringify(submitData);
            var datastr2 = JSON.stringify(ajaxData);
            //提交
            $.post("/Index/Submit_Validateisperfect", {
                postData: datastr,
                submitData: datastr1,
                ajaxData: datastr2,
                type: 'True'
            }, function (data) {
                var jsonData = JSON.parse(data);
                if (jsonData.status == 0) {
                    //关闭当前的弹框
                    $(".write-messageBox").hide();
                    //打开另一个弹框
                    $(".register-completeBox").show();
                } else {
                    var aletstr = jsonData.message;
                    console.log(aletstr);
                    if (aletstr == "认证失败！") {
                        alert("您的身份证信息与姓名不匹配,认证失败！");
                        istj = true;
                    } else {
                        alert(aletstr);
                        istj = true;
                    }

                }
            });
        }
    });
    $(".close-dialogRegister,.register-dialogClose").click(function () {
        if (confirm('房东完善信息才可执行发房等更多操作项目，您是否确认退出')) {
            window.location.href = "https://www.muniao.com";
        }
    });

    /*idcard*/
    function checkIdCardRule(cardNo) {
        cardNo = String(cardNo);
        var returnContent = {};
        returnContent.msg = '';
        returnContent.rst = true;
        var len = cardNo.length;
        if (len != 15 && len != 18) {
            returnContent.msg = '证件号码位数不正确';
            returnContent.rst = false;
            return returnContent;
        }
        var reg;
        var cardNoSplit;
        var bGoodDay;
        var birth;
        if (len == 15) {
            if (!(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/.test(cardNo))) {
                returnContent.msg = '证件号码格式不正确';
                returnContent.rst = false;
            }
            else {
                reg = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
                cardNoSplit = cardNo.match(reg);
                birth = new Date('19' + cardNoSplit[2] + '/' + cardNoSplit[3] + '/' + cardNoSplit[4]);
                bGoodDay = (birth.getYear() == Number(cardNoSplit[2])) && ((birth.getMonth() + 1) == Number(cardNoSplit[3])) && (birth.getDate() == Number(cardNoSplit[4]));
            }
        }
        else if (len == 18) {
            if (!(/^(\d{6})(19|20)?(\d{2})([01]\d)([0123]\d)(\d{3})(\d|X|x)?$/.test(cardNo))) {
                returnContent.msg = '证件号码格式不正确';
                returnContent.rst = false;
            }
            else {
                reg = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X|x)$/);
                cardNoSplit = cardNo.match(reg);
                birth = new Date(cardNoSplit[2] + "/" + cardNoSplit[3] + "/" + cardNoSplit[4]);
                bGoodDay = (birth.getFullYear() == Number(cardNoSplit[2])) && ((birth.getMonth() + 1) == Number(cardNoSplit[3])) && (birth.getDate() == Number(cardNoSplit[4]));
            }
        }
        if (!bGoodDay) {
            returnContent.msg = '证件号码格式不正确';
            returnContent.rst = false;
        }
        else {
            var nowYear = new Date().getFullYear();
            var nowMonth = new Date().getMonth();
            var nowDate = new Date().getDate();

            if (compareBirthDate(birth.getFullYear() + '-' + birth.getMonth() + '-' + birth.getDate(), ((nowYear - 102) + "-" + nowMonth + "-" + nowDate)) < 0 || compareBirthDate(birth.getFullYear() + '-' + birth.getMonth() + '-' + birth.getDate(), (nowYear + "-" + nowMonth + "-" + nowDate)) > 0) {
                returnContent.msg = '证件号码格式不正确';
                returnContent.rst = false;
            }
            else {
                if (len == 15) {
                    return returnContent;
                }
                else {
                    // check city
                    var aCity = {
                        11: "北京",
                        12: "天津",
                        13: "河北",
                        14: "山西",
                        15: "内蒙古",
                        21: "辽宁",
                        22: "吉林",
                        23: "黑龙江",
                        31: "上海",
                        32: "江苏",
                        33: "浙江",
                        34: "安徽",
                        35: "福建",
                        36: "江西",
                        37: "山东",
                        41: "河南",
                        42: "湖北",
                        43: "湖南",
                        44: "广东",
                        45: "广西",
                        46: "海南",
                        50: "重庆",
                        51: "四川",
                        52: "贵州",
                        53: "云南",
                        54: "西藏",
                        61: "陕西",
                        62: "甘肃",
                        63: "青海",
                        64: "宁夏",
                        65: "新疆",
                        71: "台湾",
                        81: "香港",
                        82: "澳门",
                        91: "国外"
                    };
                    if (aCity[parseInt(cardNo.substr(0, 2))] == null) {
                        returnContent.msg = '证件号码格式不正确';
                        returnContent.rst = false;
                    }
                    var arrExp = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];//加权因子
                    var arrValid = [1, 0, "X", 9, 8, 7, 6, 5, 4, 3, 2];//校验码
                    var sum = 0, idx;
                    for (var i = 0; i < cardNo.length - 1; i++) {
                        sum += parseInt(cardNo.substr(i, 1), 10) * arrExp[i];
                    }
                    idx = sum % 11;
                    // 检验第18为是否与校验码相等
                    if (arrValid[idx] != cardNo.substr(17, 1).toUpperCase()) {
                        returnContent.msg = '证件号码格式不正确';
                        returnContent.rst = false;
                    }
                }
            }
        }
        return returnContent;
    }

    /*银行卡验证*/
    function bankcard(bankno) {
        var lastNum = bankno.substr(bankno.length - 1, 1); //取出最后一位（与luhm进行比较）
        var first15Num = bankno.substr(0, bankno.length - 1); //前15或18位
        var newArr = new Array();
        for (var i = first15Num.length - 1; i > -1; i--) { //前15或18位倒序存进数组
            newArr.push(first15Num.substr(i, 1));
        }
        var arrJiShu = new Array(); //奇数位*2的积<9
        var arrJiShu2 = new Array(); //奇数位*2的积>9

        var arrOuShu = new Array(); //偶数位数组
        for (var j = 0; j < newArr.length; j++) {
            if ((j + 1) % 2 == 1) { //奇数位
                if (parseInt(newArr[j]) * 2 < 9)
                    arrJiShu.push(parseInt(newArr[j]) * 2);
                else
                    arrJiShu2.push(parseInt(newArr[j]) * 2);
            } else //偶数位
                arrOuShu.push(newArr[j]);
        }

        var jishu_child1 = new Array(); //奇数位*2>9 的分割之后的数组个位数
        var jishu_child2 = new Array(); //奇数位*2>9 的分割之后的数组十位数
        for (var h = 0; h < arrJiShu2.length; h++) {
            jishu_child1.push(parseInt(arrJiShu2[h]) % 10);
            jishu_child2.push(parseInt(arrJiShu2[h]) / 10);
        }

        var sumJiShu = 0; //奇数位*2< 9 的数组之和
        var sumOuShu = 0; //偶数位数组之和
        var sumJiShuChild1 = 0; //奇数位*2>9 的分割之后的数组个位数之和
        var sumJiShuChild2 = 0; //奇数位*2>9 的分割之后的数组十位数之和
        var sumTotal = 0;
        for (var m = 0; m < arrJiShu.length; m++) {

            sumJiShu = sumJiShu + parseInt(arrJiShu[m]);
        }
        for (var n = 0; n < arrOuShu.length; n++) {

            sumOuShu = sumOuShu + parseInt(arrOuShu[n]);
        }
        for (var p = 0; p < jishu_child1.length; p++) {
            sumJiShuChild1 = sumJiShuChild1 + parseInt(jishu_child1[p]);
            sumJiShuChild2 = sumJiShuChild2 + parseInt(jishu_child2[p]);
        }
        //计算总和
        sumTotal = parseInt(sumJiShu) + parseInt(sumOuShu) + parseInt(sumJiShuChild1) + parseInt(sumJiShuChild2);

        //计算Luhm值
        var k = parseInt(sumTotal) % 10 == 0 ? 10 : parseInt(sumTotal) % 10;
        var luhm = 10 - k;
        return lastNum == luhm;
    }

    function compareBirthDate(date1, date2) {
        var newDate1 = date1.split('-');
        var dateY1 = newDate1[0];
        var dateM1 = newDate1[1];
        var dateD1 = newDate1[2];

        var newDate2 = date2.split('-');
        var dateY2 = newDate2[0];
        var dateM2 = newDate2[1];
        var dateD2 = newDate2[2];

        if (dateY1 < dateY2) {
            return -1;
        }
        else if (dateY1 > dateY2) {
            return 1;
        }
        else if (dateY1 == dateY2) {
            if (dateM1 < dateM2) {
                return -1;
            }
            else if (dateM1 > dateM2) {
                return 1;
            }
            else if (dateM1 == dateM2) {
                if (dateD1 < dateD2) {
                    return -1;
                }
                else if (dateD1 > dateD2) {
                    return 1;
                }
                else if (dateD1 == dateD2) {
                    return 0;
                }
            }
        }
    }

</script>


<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>