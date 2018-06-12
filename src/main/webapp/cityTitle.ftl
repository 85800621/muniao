<!DOCTYPE html>
<!-- saved from url=(0031)https://www.muniao.com/beijing/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script charset="utf-8" src="${staticRoot}/images/v.js.下载"></script>
    <style type="text/css">.amap-indoor-map .label-canvas {
        position: absolute;
        top: 0;
        left: 0
    }
    .amap-indoor-map .highlight-image-con * {
        pointer-events: none
    }

    .amap-indoormap-floorbar-control {
        position: absolute;
        margin: auto 0;
        bottom: 165px;
        right: 12px;
        width: 35px;
        text-align: center;
        line-height: 1.3em;
        overflow: hidden;
        padding: 0 2px
    }

    .amap-indoormap-floorbar-control .panel-box {
        background-color: rgba(255, 255, 255, .9);
        border-radius: 3px;
        border: 1px solid #ccc
    }

    .amap-indoormap-floorbar-control .select-dock {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        box-sizing: border-box;
        height: 30px;
        border: solid #4196ff;
        border-width: 0 2px;
        border-radius: 2px;
        pointer-events: none;
        background: linear-gradient(to bottom, #f6f8f9 0, #e5ebee 50%, #d7dee3 51%, #f5f7f9 100%)
    }

    .amap-indoor-map .transition {
        transition: opacity .2s
    }

    ,
    .amap-indoormap-floorbar-control .transition {
        transition: top .2s, margin-top .2s
    }

    .amap-indoormap-floorbar-control .select-dock:after, .amap-indoormap-floorbar-control .select-dock:before {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        left: 0;
        top: 10px;
        border: solid transparent;
        border-width: 4px;
        border-left-color: #4196ff
    }

    .amap-indoormap-floorbar-control .select-dock:after {
        right: 0;
        left: auto;
        border-left-color: transparent;
        border-right-color: #4196ff
    }

    .amap-indoormap-floorbar-control.is-mobile {
        width: 37px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-btn {
        height: 35px;
        line-height: 35px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock {
        height: 35px;
        top: 36px
    }

    .amap-indoormap-floorbar-control.is-mobile .select-dock:after, .amap-indoormap-floorbar-control.is-mobile .select-dock:before {
        top: 13px
    }

    .amap-indoormap-floorbar-control.is-mobile .floor-list-box {
        height: 105px
    }

    .amap-indoormap-floorbar-control .floor-list-item .floor-btn {
        color: #555;
        font-family: "Times New Roman", sans-serif, "Microsoft Yahei";
        font-size: 16px
    }

    .amap-indoormap-floorbar-control .floor-list-item.selected .floor-btn {
        color: #000
    }

    .amap-indoormap-floorbar-control .floor-btn {
        height: 28px;
        line-height: 28px;
        overflow: hidden;
        cursor: pointer;
        position: relative;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none
    }

    .amap-indoormap-floorbar-control .floor-btn:hover {
        background-color: rgba(221, 221, 221, .4)
    }

    .amap-indoormap-floorbar-control .floor-minus, .amap-indoormap-floorbar-control .floor-plus {
        position: relative;
        text-indent: -1000em
    }

    .amap-indoormap-floorbar-control .floor-minus:after, .amap-indoormap-floorbar-control .floor-plus:after {
        content: "";
        position: absolute;
        margin: auto;
        top: 9px;
        left: 0;
        right: 0;
        width: 0;
        height: 0;
        border: solid transparent;
        border-width: 10px 8px;
        border-top-color: #777
    }

    .amap-indoormap-floorbar-control .floor-minus.disabled, .amap-indoormap-floorbar-control .floor-plus.disabled {
        opacity: .3
    }

    .amap-indoormap-floorbar-control .floor-plus:after {
        border-bottom-color: #777;
        border-top-color: transparent;
        top: -3px
    }

    .amap-indoormap-floorbar-control .floor-list-box {
        max-height: 153px;
        position: relative;
        overflow-y: hidden
    }

    .amap-indoormap-floorbar-control .floor-list {
        margin: 0;
        padding: 0;
        list-style: none
    }

    .amap-indoormap-floorbar-control .floor-list-item {
        position: relative
    }

    .amap-indoormap-floorbar-control .floor-btn.disabled, .amap-indoormap-floorbar-control .floor-btn.disabled *, .amap-indoormap-floorbar-control.with-indrm-loader * {
        -webkit-pointer-events: none !important;
        pointer-events: none !important
    }

    .amap-indoormap-floorbar-control .with-indrm-loader .floor-nonas {
        opacity: .5
    }

    .amap-indoor-map-moverf-marker {
        color: #555;
        background-color: #FFFEEF;
        border: 1px solid #7E7E7E;
        padding: 3px 6px;
        font-size: 12px;
        white-space: nowrap;
        display: inline-block;
        position: absolute;
        top: 1em;
        left: 1.2em
    }

    .amap-indoormap-floorbar-control .amap-indrm-loader {
        -moz-animation: amap-indrm-loader 1.25s infinite linear;
        -webkit-animation: amap-indrm-loader 1.25s infinite linear;
        animation: amap-indrm-loader 1.25s infinite linear;
        border: 2px solid #91A3D8;
        border-right-color: transparent;
        box-sizing: border-box;
        display: inline-block;
        overflow: hidden;
        text-indent: -9999px;
        width: 13px;
        height: 13px;
        border-radius: 7px;
        position: absolute;
        margin: auto;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0
    }

    @-moz-keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @-webkit-keyframes amap-indrm-loader {
        0% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }

    @keyframes amap-indrm-loader {
        0% {
            -moz-transform: rotate(0);
            -ms-transform: rotate(0);
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        100% {
            -moz-transform: rotate(360deg);
            -ms-transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            transform: rotate(360deg)
        }
    }</style>
    <link rel="stylesheet" type="text/css" href="${staticRoot}/images/style1503546983737.css">

    <title>【北京短租房|北京日租房|北京短租公寓】-北京木鸟短租网</title>
    <meta name="keywords" content="北京短租房,北京日租房,北京短租公寓">
    <meta name="description"
          content="木鸟短租网北京站,提供性价比高的最新北京短租房、北京日租房、北京短租公/寓/信息,平台有近300000套严格审核的可靠房源,50000多真实房东,查找预订北京短租房、日租房到木鸟短租.">
    <meta name="viewport" content="width=1400, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta property="wb:webmaster" content="xfwy">
    <meta property="qc:admins" content="329429240">
    <link rel="shortcut icon" href="https://assets.muniao.com/assets2/pc/favicon.ico">
    <script type="text/javascript" async="" src="${staticRoot}/images/mv.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mba.js.下载"></script>
    <script type="text/javascript" async="" src="${staticRoot}/images/mvl.js.下载"></script>
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


    <link href="${staticRoot}/images/style_list.css" rel="stylesheet">
    <script src="${staticRoot}/images/list_201607.js.下载"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".webim-chatbtn").each(function (a, b) {
                $(b).on("mouseover", function () {
                    $(this).parents(".house_details_r").find(".phone-ewm").show();
                })
                $(b).on("mouseout", function () {
                    $(this).parents(".house_details_r").find(".phone-ewm").hide();
                })
            })
            $(".jinye_li").on("mouseover", function () {
                console.log("xxx");
                $(this).parent().find(".w_ltc").show();
            }).on("mouseout", function () {
                console.log("yyy");
                $(this).parent().find(".w_ltc").hide();
            });
            var w_listab = document.getElementById("list_tab").getElementsByTagName("span");
            var ect = document.getElementById("w_listect").getElementsByTagName("div");
            var timer = null;
            for (var i = 0; i < w_listab.length; i++) {
                w_listab[i].index = i;
                w_listab[i].onmouseover = function () {
                    for (var i = 0; i < w_listab.length; i++) {
                        w_listab[i].className = "w_listspan";
                        ect[i].style.display = "none";
                        clearInterval(timer);
                    }
                    this.className = "w_listabfocus";
                    ect[this.index].style.display = "block";
                };
                ect[i].onmouseover = function () {
                    this.style.display = "block";
                    clearInterval(timer);
                };
                ect[i].onmouseout = function () {
                    this.style.display = "none";
                };
                w_listab[i].onmouseout = function () {
                    this.className = "w_listspan";
                    var This = this;
                    timer = setTimeout(function () {
                        ect[This.index].style.display = "none";
                    }, 300);
                };
            }
            $(".w_listbzul li").each(function (a, b) {
                $(b).on("mouseover", function () {
                    $(this).find(".w_listbztip").show();
                });
                $(b).on("mouseout", function () {
                    $(this).find(".w_listbztip").hide();
                });
            });
            $(".list_zhitip").each(function () {
                var f = $(this);
                f.on("mouseover", function () {
                    f.children(".list_zhimatip").show();
                });
            });
            $(".list_zhitip").each(function () {
                var f = $(this);
                f.on("mouseout", function () {
                    f.children(".list_zhimatip").hide();
                });
            });
            //
            $(".switch_l").click(function () {
                $(".swit_bg").removeClass("langz_active");
                setTimeout(function () {
                    $(".switch_l").css("color", "#ffffff");
                }, 200);
                $(".switch_r").css("color", "#aaaaaa");
            });
            $(".switch_r").click(function () {
                $(".swit_bg").addClass("langz_active");
                setTimeout(function () {
                    $(".switch_r").css("color", "#ffffff");
                }, 200);
                $(".switch_l").css("color", "#aaaaaa");
            });
            $(".swit_bot a").each(function (a, b) {
                var url = $(b).attr("href");
                if (url.indexOf("muniao") > -1) {
                    $(b).attr("href_bak", url);
                }
                $(b).attr("href", "javascript:void(0);");
                $(b).click(function () {
                    $(".swit").eq(a).show().siblings("ul").hide();
                    var url = $(this).attr("href_bak");
                    if (url) {
                        setTimeout(function () {
                            location.href = url;
                        }, 200);
                    }
                });
            });
        });
        (function () {
            var user_agent = String(navigator.userAgent || "").toLowerCase(),
                    url = location.href || "",
                    _is_mobile = "";
            if (url.indexOf("from=wap") > -1) {
                S.Cookie("from", "wap", 10);
            } else if (user_agent.indexOf("iphone") > -1 && user_agent.indexOf("spider") == -1) {
                _is_mobile = 'a';
            } else if (user_agent.indexOf("android") > -1 && user_agent.indexOf("spider") == -1) {
                _is_mobile = "b";
            } else if (user_agent.indexOf("windows phone") > -1 && user_agent.indexOf("spider") == -1) {
                _is_mobile = "c";
            } else if (url.indexOf("mqq_source") > -1 && user_agent.indexOf("spider") == -1) {
                _is_mobile = "d";
            }
            if (_is_mobile != "") {
                location.href = "https://m.muniao.com/Home/List?city=beijing";
            }
        })();
    </script>

    <style type="text/css">.amap-container {
        cursor: url(https://webapi.amap.com/theme/v1.3/openhand.cur), default;
    }

    .amap-drag {
        cursor: url(https://webapi.amap.com/theme/v1.3/closedhand.cur), default;
    }</style>
    <script src="${staticRoot}/images/UserLoginCallback"></script>
    <style type="text/css">.BMap_mask {
        background: transparent url(https://api.map.baidu.com/images/blank.gif);
    }

    .BMap_noscreen {
        display: none;
    }

    .BMap_button {
        cursor: pointer;
    }

    .BMap_zoomer {
        background-image: url(https://api.map.baidu.com/images/mapctrls1d3.gif);
        background-repeat: no-repeat;
        overflow: hidden;
        font-size: 1px;
        position: absolute;
        width: 7px;
        height: 7px;
    }

    .BMap_stdMpCtrl div {
        position: absolute;
    }

    .BMap_stdMpPan {
        width: 44px;
        height: 44px;
        overflow: hidden;
        background: url(https://api.map.baidu.com/images/mapctrls2d0.png) no-repeat;
    }

    .BMap_ie6 .BMap_stdMpPan {
        background: none;
    }

    .BMap_ie6 .BMap_smcbg {
        left: 0;
        width: 44px;
        height: 464px;
        filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src="https://api.map.baidu.com/images/mapctrls2d0.png");
    }

    .BMap_ie6 .BMap_stdMpPanBg {
        z-index: -1;
    }

    .BMap_stdMpPan .BMap_button {
        height: 15px;
        width: 15px;
    }

    .BMap_panN, .BMap_panW, .BMap_panE, .BMap_panS {
        overflow: hidden;
    }

    .BMap_panN {
        left: 14px;
        top: 0;
    }

    .BMap_panW {
        left: 1px;
        top: 12px;
    }

    .BMap_panE {
        left: 27px;
        top: 12px;
    }

    .BMap_panS {
        left: 14px;
        top: 25px;
    }

    .BMap_stdMpZoom {
        top: 45px;
        overflow: hidden;
    }

    .BMap_stdMpZoom .BMap_button {
        width: 22px;
        height: 21px;
        left: 12px;
        overflow: hidden;
        background-image: url(https://api.map.baidu.com/images/mapctrls2d0.png);
        background-repeat: no-repeat;
        z-index: 10;
    }

    .BMap_ie6 .BMap_stdMpZoom .BMap_button {
        background: none;
    }

    .BMap_stdMpZoomIn {
        background-position: 0 -221px;
    }

    .BMap_stdMpZoomOut {
        background-position: 0 -265px;
    }

    .BMap_ie6 .BMap_stdMpZoomIn div {
        left: 0;
        top: -221px;
    }

    .BMap_ie6 .BMap_stdMpZoomOut div {
        left: 0;
        top: -265px;
    }

    .BMap_stdMpType4 .BMap_stdMpZoom .BMap_button {
        left: 0;
        overflow: hidden;
        background: -webkit-gradient(linear, 50% 0, 50% 100%, from(rgba(255, 255, 255, 0.85)), to(rgba(217, 217, 217, 0.85)));
        z-index: 10;
        -webkit-border-radius: 22px;
        width: 34px;
        height: 34px;
        border: 1px solid rgba(255, 255, 255, 0.5);
        -webkit-box-shadow: 0 2px 3.6px #CCC;
        display: -webkit-box;
        -webkit-box-align: center;
        -webkit-box-pack: center;
        -webkit-box-sizing: border-box;
    }

    .BMap_stdMpType4 .BMap_smcbg {
        position: static;
        background: url(https://api.map.baidu.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;
        -webkit-background-size: 24px 32px;
    }

    .BMap_stdMpType4 .BMap_stdMpZoomIn {
        background-position: 0 0;
    }

    .BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg {
        width: 24px;
        height: 24px;
        background-position: 0 0;
    }

    .BMap_stdMpType4 .BMap_stdMpZoomOut {
        background-position: 0 0;
    }

    .BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg {
        width: 24px;
        height: 6px;
        background-position: 0 -25px;
    }

    .BMap_stdMpSlider {
        width: 37px;
        top: 18px;
    }

    .BMap_stdMpSliderBgTop {
        left: 18px;
        width: 10px;
        overflow: hidden;
        background: url(https://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -23px -226px;
    }

    .BMap_stdMpSliderBgBot {
        left: 19px;
        height: 8px;
        width: 10px;
        top: 124px;
        overflow: hidden;
        background: url(https://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -33px bottom;
    }

    .BMap_ie6 .BMap_stdMpSliderBgTop, .BMap_ie6 .BMap_stdMpSliderBgBot {
        background: none;
    }

    .BMap_ie6 .BMap_stdMpSliderBgTop div {
        left: -23px;
        top: -226px;
    }

    .BMap_ie6 .BMap_stdMpSliderBgBot div {
        left: -33px;
        bottom: 0;
    }

    .BMap_stdMpSliderMask {
        height: 100%;
        width: 24px;
        left: 10px;
        cursor: pointer;
    }

    .BMap_stdMpSliderBar {
        height: 11px;
        width: 19px;
        left: 13px;
        top: 80px;
        overflow: hidden;
        background: url(https://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -309px;
    }

    .BMap_stdMpSliderBar.h {
        background: url(https://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -320px;
    }

    .BMap_ie6 .BMap_stdMpSliderBar, .BMap_ie6 .BMap_stdMpSliderBar.h {
        background: none;
    }

    .BMap_ie6 .BMap_stdMpSliderBar div {
        top: -309px;
    }

    .BMap_ie6 .BMap_stdMpSliderBar.h div {
        top: -320px;
    }

    .BMap_zlSt, .BMap_zlCity, .BMap_zlProv, .BMap_zlCountry {
        position: absolute;
        left: 34px;
        height: 21px;
        width: 28px;
        background-image: url(https://api.map.baidu.com/images/mapctrls2d0.png);
        background-repeat: no-repeat;
        font-size: 0;
        cursor: pointer;
    }

    .BMap_ie6 .BMap_zlSt, .BMap_ie6 .BMap_zlCity, .BMap_ie6 .BMap_zlProv, .BMap_ie6 .BMap_zlCountry {
        background: none;
        overflow: hidden;
    }

    .BMap_zlHolder {
        display: none;
        position: absolute;
        top: 0;
    }

    .BMap_zlHolder.hvr {
        display: block;
    }

    .BMap_zlSt {
        background-position: 0 -380px;
        top: 21px;
    }

    .BMap_zlCity {
        background-position: 0 -401px;
        top: 52px;
    }

    .BMap_zlProv {
        background-position: 0 -422px;
        top: 76px;
    }

    .BMap_zlCountry {
        background-position: 0 -443px;
        top: 100px;
    }

    .BMap_ie6 .BMap_zlSt div {
        top: -380px;
    }

    .BMap_ie6 .BMap_zlCity div {
        top: -401px;
    }

    .BMap_ie6 .BMap_zlProv div {
        top: -422px;
    }

    .BMap_ie6 .BMap_zlCountry div {
        top: -443px;
    }

    .BMap_stdMpType1 .BMap_stdMpSlider, .BMap_stdMpType2 .BMap_stdMpSlider, .BMap_stdMpType3 .BMap_stdMpSlider, .BMap_stdMpType4 .BMap_stdMpSlider, .BMap_stdMpType2 .BMap_stdMpZoom, .BMap_stdMpType3 .BMap_stdMpPan, .BMap_stdMpType4 .BMap_stdMpPan {
        display: none;
    }

    .BMap_stdMpType3 .BMap_stdMpZoom {
        top: 0;
    }

    .BMap_stdMpType4 .BMap_stdMpZoom {
        top: 0;
    }

    .BMap_cpyCtrl a {
        font-size: 11px;
        color: #7979CC;
    }

    .BMap_scaleCtrl {
        height: 23px;
        overflow: hidden;
    }

    .BMap_scaleCtrl div.BMap_scaleTxt {
        font-size: 11px;
        font-family: Arial, sans-serif;
    }

    .BMap_scaleCtrl div {
        position: absolute;
        overflow: hidden;
    }

    .BMap_scaleHBar img, .BMap_scaleLBar img, .BMap_scaleRBar img {
        position: absolute;
        width: 37px;
        height: 442px;
        left: 0;
    }

    .BMap_scaleHBar {
        width: 100%;
        height: 5px;
        font-size: 0;
        bottom: 0;
    }

    .BMap_scaleHBar img {
        top: -437px;
        width: 100%;
    }

    .BMap_scaleLBar, .BMap_scaleRBar {
        width: 3px;
        height: 9px;
        bottom: 0;
        font-size: 0;
        z-index: 1;
    }

    .BMap_scaleLBar img {
        top: -427px;
        left: 0;
    }

    .BMap_scaleRBar img {
        top: -427px;
        left: -5px;
    }

    .BMap_scaleLBar {
        left: 0;
    }

    .BMap_scaleRBar {
        right: 0;
    }

    .BMap_scaleTxt {
        text-align: center;
        width: 100%;
        cursor: default;
        line-height: 18px;
    }

    .BMap_omCtrl {
        background-color: #fff;
        overflow: hidden;
    }

    .BMap_omOutFrame {
        position: absolute;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    .BMap_omInnFrame {
        position: absolute;
        border: 1px solid #999;
        background-color: #ccc;
        overflow: hidden;
    }

    .BMap_omMapContainer {
        position: absolute;
        overflow: hidden;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
    }

    .BMap_omViewMv {
        border-width: 1px;
        border-style: solid;
        border-left-color: #84b0df;
        border-top-color: #adcff4;
        border-right-color: #274b8b;
        border-bottom-color: #274b8b;
        position: absolute;
        z-index: 600;
    }

    .BMap_omViewInnFrame {
        border: 1px solid #3e6bb8;
    }

    .BMap_omViewMask {
        width: 1000px;
        height: 1000px;
        position: absolute;
        left: 0;
        top: 0;
        background-color: #68c;
        opacity: .2;
        filter: progid:DXImageTransform.Microsoft.Alpha(opacity=20);
    }

    .BMap_omBtn {
        height: 13px;
        width: 13px;
        position: absolute;
        cursor: pointer;
        overflow: hidden;
        background: url(https://api.map.baidu.com/images/mapctrls1d3.gif) no-repeat;
        z-index: 1210;
    }

    .anchorBR .BMap_omOutFrame {
        border-top: 1px solid #999;
        border-left: 1px solid #999;
    }

    .quad4 .BMap_omBtn {
        background-position: -26px -27px;
    }

    .quad4 .BMap_omBtn.hover {
        background-position: 0 -27px;
    }

    .quad4 .BMap_omBtn.BMap_omBtnClosed {
        background-position: -39px -27px;
    }

    .quad4 .BMap_omBtn.BMap_omBtnClosed.hover {
        background-position: -13px -27px;
    }

    .anchorTR .BMap_omOutFrame {
        border-bottom: 1px solid #999;
        border-left: 1px solid #999;
    }

    .quad1 .BMap_omBtn {
        background-position: -39px -41px;
    }

    .quad1 .BMap_omBtn.hover {
        background-position: -13px -41px;
    }

    .quad1 .BMap_omBtn.BMap_omBtnClosed {
        background-position: -26px -41px;
    }

    .quad1 .BMap_omBtn.BMap_omBtnClosed.hover {
        background-position: 0 -41px;
    }

    .anchorBL .BMap_omOutFrame {
        border-top: 1px solid #999;
        border-right: 1px solid #999;
    }

    .quad3 .BMap_omBtn {
        background-position: -27px -40px;
    }

    .quad3 .BMap_omBtn.hover {
        background-position: -1px -40px;
    }

    .quad3 .BMap_omBtn.BMap_omBtnClosed {
        background-position: -40px -40px;
    }

    .quad3 .BMap_omBtn.BMap_omBtnClosed.hover {
        background-position: -14px -40px;
    }

    .anchorTL .BMap_omOutFrame {
        border-bottom: 1px solid #999;
        border-right: 1px solid #999;
    }

    .quad2 .BMap_omBtn {
        background-position: -40px -28px;
    }

    .quad2 .BMap_omBtn.hover {
        background-position: -14px -28px;
    }

    .quad2 .BMap_omBtn.BMap_omBtnClosed {
        background-position: -27px -28px;
    }

    .quad2 .BMap_omBtn.BMap_omBtnClosed.hover {
        background-position: -1px -28px;
    }

    .anchorR .BMap_omOutFrame {
        border-bottom: 1px solid #999;
        border-left: 1px solid #999;
        border-top: 1px solid #999;
    }

    .anchorL .BMap_omOutFrame {
        border-bottom: 1px solid #999;
        border-right: 1px solid #999;
        border-top: 1px solid #999;
    }

    .anchorB .BMap_omOutFrame {
        border-top: 1px solid #999;
        border-left: 1px solid #999;
        border-right: 1px solid #999;
    }

    .anchorT .BMap_omOutFrame {
        border-bottom: 1px solid #999;
        border-right: 1px solid #999;
        border-left: 1px solid #999;
    }

    .anchorNon .BMap_omOutFrame, .withOffset .BMap_omOutFrame {
        border: 1px solid #999;
    }

    .BMap_zoomMask0, .BMap_zoomMask1 {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: transparent url(https://api.map.baidu.com/images/blank.gif);
        z-index: 1000;
    }

    .BMap_contextMenu {
        position: absolute;
        border-top: 1px solid #adbfe4;
        border-left: 1px solid #adbfe4;
        border-right: 1px solid #8ba4d8;
        border-bottom: 1px solid #8ba4d8;
        padding: 0;
        margin: 0;
        width: auto;
        visibility: hidden;
        background: #fff;
        z-index: 10000000;
    }

    .BMap_cmShadow {
        position: absolute;
        background: #000;
        opacity: .3;
        filter: alpha(opacity=30);
        visibility: hidden;
        z-index: 9000000;
    }

    div.BMap_cmDivider {
        border-bottom: 1px solid #adbfe4;
        font-size: 0;
        padding: 1px;
        margin: 0 6px;
    }

    div.BMap_cmFstItem {
        margin-top: 2px;
    }

    div.BMap_cmLstItem {
        margin-bottom: 2px;
    }

    .BMap_shadow img {
        border: 0 none;
        margin: 0;
        padding: 0;
        height: 370px;
        width: 1144px;
    }

    .BMap_pop .BMap_top {
        border-top: 1px solid #ababab;
        background-color: #fff;
    }

    .BMap_pop .BMap_center {
        border-left: 1px solid #ababab;
        border-right: 1px solid #ababab;
        background-color: #fff;
    }

    .BMap_pop .BMap_bottom {
        border-bottom: 1px solid #ababab;
        background-color: #fff;
    }

    .BMap_shadow, .BMap_shadow img, .BMap_shadow div {
        -moz-user-select: none;
        -webkit-user-select: none;
    }

    .BMap_checkbox {
        background: url(https://api.map.baidu.com/images/mapctrls1d3.gif);
        vertical-align: middle;
        display: inline-block;
        width: 11px;
        height: 11px;
        margin-right: 4px;
        background-position: -14px 90px;
    }

    .BMap_checkbox.checked {
        background-position: -2px 90px;
    }

    .BMap_pop .BMap_top img, .BMap_pop .BMap_center img, .BMap_pop .BMap_bottom img {
        display: none;
    }

    @media print {
        .BMap_noprint {
            display: none;
        }

        .BMap_noscreen {
            display: block;
        }

        .BMap_mask {
            background: none;
        }

        .BMap_pop .BMap_top img, .BMap_pop .BMap_center img, .BMap_pop .BMap_bottom img {
            display: block;
        }
    }

    .BMap_vectex {
        cursor: pointer;
        width: 11px;
        height: 11px;
        position: absolute;
        background-repeat: no-repeat;
        background-position: 0 0;
    }

    .BMap_vectex_nodeT {
        background-image: url(https://api.map.baidu.com/images/nodeT.gif);
    }

    .BMap_vectex_node {
        background-image: url(https://api.map.baidu.com/images/node.gif);
    }

    .iw {
        width: 100%;
        -webkit-box-sizing: border-box;
        border: .3em solid transparent;
        -webkit-background-clip: padding;
    }

    .iw_rt {
        position: relative;
        height: 46px;
        width: 195px;
        -webkit-box-sizing: border-box;
        display: -webkit-box;
        -webkit-box-align: center;
        margin: 2px 5px 0 2px;
        background-color: rgba(0, 0, 0, 0.8);
        -webkit-box-shadow: 2px 2px 7px rgba(0, 0, 0, 0.3);
        -webkit-border-radius: 2px;
        color: #fff;
    }

    .iw_rt:after {
        content: "";
        position: absolute;
        left: 50%;
        bottom: -8px;
        width: 0;
        height: 0;
        border-left: 5px solid transparent;
        border-top: 8px solid rgba(0, 0, 0, 0.8);
        border-right: 5px solid transparent;
        margin: 0 0 0 -6px;
    }

    .iw_s {
        text-align: center;
        vertical-align: middle;
        height: 100%;
        -webkit-box-sizing: border-box;
    }

    .iw_rt .iw_s1 {
        color: #cbcbcb;
    }

    .iw_rt b {
        color: #fff;
        font-weight: bold;
    }

    .iw_rt_gr {
        margin-left: -4px;
    }

    .iw_busline {
        margin: 32px 0 0 -3px;
    }

    .iw_busline .iw_cc {
        text-align: center;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        padding: 0 6px;
    }

    .iw_r {
        -webkit-box-ordinal-group: 3;
    }

    .iw_r, .iw_l {
        height: 100%;
        font-size: 4.5em;
        text-align: center;
        color: #747474;
        border: none;
        -webkit-box-sizing: border-box;
        -webkit-border-radius: 0;
        line-height: .7em;
        border: 1px solid rgba(255, 255, 255, 0.2);
        width: 41px;
    }

    .iw_r {
        border-style: none none none solid;
    }

    .iw_l {
        border-style: none solid none none;
    }

    .iw_search, .iw_l {
        background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;
        -webkit-background-size: 19px 19px;
    }

    .iw_line_s, .iw_r {
        background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;
        -webkit-background-size: 19px 19px;
    }

    .iw_line {
        height: 64px;
        width: 228px;
        padding: 0 11px;
        line-height: 20px;
    }

    .iw_bustrans .iw_cc {
        text-align: center;
    }

    .iw_c {
        color: #FFFFFF;
        text-decoration: none;
        overflow: hidden;
        display: -webkit-box;
        -webkit-box-align: center;
        -webkit-box-flex: 1;
    }

    .iw_cc {
        -webkit-box-sizing: border-box;
        width: 100%;
        border: none;
    }

    .gray_background {
        filter: alpha(opacity=50);
        -moz-opacity: 0.5;
        -khtml-opacity: 0.5;
        opacity: 0.5
    }

    .light_gray_background {
        filter: alpha(opacity=70);
        -moz-opacity: 0.7;
        -khtml-opacity: 0.7;
        opacity: 0.7
    }

    .panoInfoBox {
        cursor: pointer;
    }

    .panoInfoBox {
        position: relative;
        width: 323px;
        height: 101px;
        margin-bottom: 4px;
        cursor: pointer;
    }

    .panoInfoBox .panoInfoBoxTitleBg {
        width: 323px;
        height: 19px;
        position: absolute;
        left: 0;
        bottom: 0;
        z-index: 2;
        background-color: #000;
        opacity: .7;
    }

    .panoInfoBox .panoInfoBoxTitleContent {
        font-size: 12px;
        color: #fff;
        position: absolute;
        bottom: 2px;
        left: 5px;
        z-index: 3;
        text-decoration: none;
    }

    .RouteAddressOuterBkg {
        position: relative;
        padding: 32px 4px 4px 3px;
        background-color: #ffdd99;
    }

    .RouteAddressInnerBkg {
        padding: 3px 5px 8px 8px;
        background-color: #ffffff;
    }

    #RouteAddress_DIV1 {
        margin-top: 5px;
    }

    .RouteAddressTip {
        position: absolute;
        width: 100%;
        top: 0px;
        text-align: center;
        height: 30px;
        line-height: 30px;
        color: #994c00;
    }

    .route_tip_con {
        position: absolute;
        top: 145px;
    }

    .route_tip_con .route_tip {
        position: absolute;
        width: 233px;
        height: 29px;
        color: #803300;
        text-align: center;
        line-height: 29px;
        border: #cc967a solid 1px;
        background: #fff2b2;
        z-index: 100000;
    }

    .route_tip_con .route_tip span {
        position: absolute;
        top: 0;
        right: 0;
        _right: -1px;
        width: 14px;
        height: 13px;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 -121px;
        cursor: pointer;
    }

    .route_tip_con .route_tip_shadow {
        width: 233px;
        height: 29px;
        position: absolute;
        left: 1px;
        top: 1px;
        background: #505050;
        border: 1px solid #505050;
        opacity: 0.2;
        filter: alpha(opacity=20)
    }

    .sel_body_body_page {
        margin: 5px 0
    }

    .sel_n {
        margin-top: 5px;
        overflow: hidden;
    }

    .sel_n .sel_top {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -418px;
        height: 4px;
        font-size: 0px;
    }

    .sel_n .sel_body_top {
        height: 32px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;
    }

    .sel_n .sel_body_title {
        float: left;
        width: 100%;
        height: 31px;
    }

    .sel_n .sel_body_sign {
        margin-top: 1px;
        width: 30px;
        height: 31px;
        float: left;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -79px -387px;
    }

    .sel_n .sel_body_name {
        height: 10px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        margin: 0 20px 0 30px;
        padding: 8px 7px 7px;
        font-size: 14px;
        color: #FA8722;
    }

    .sel_n .sel_body_button {
        float: left;
        width: 55px;
        margin-left: -55px;
        padding-top: 8px;
    }

    .sel_n .sel_body_button a {
    }

    .sel_n .sel_bottom {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -415px;
        height: 4px;
        font-size: 0px;
    }

    .sel_n .sel_body_body {
        padding: 3px 0 0 0
    }

    .sel_n1 {
        margin-top: 5px;
        width: 329px;
        overflow: hidden;
    }

    .sel_n1 .sel_top {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -418px;
        height: 4px;
        font-size: 0px;
    }

    .sel_n1 .sel_body_top {
        height: 31px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/sel_body_n_top.gif) repeat-x;
    }

    .sel_n1 .sel_body_top {
        height: 32px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 -41px
    }

    .sel_n1 .sel_body_title {
        float: left;
        width: 100%;
        height: 31px;
        cursor: pointer;
    }

    .sel_n1 .sel_body_sign {
        margin-top: 1px;
        width: 30px;
        height: 31px;
        float: left;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -79px -387px;
    }

    .sel_n1 .sel_body_name {
        margin: 0 20px 0 30px;
        padding: 8px 7px 7px;
        font-size: 14px;
        color: #FA8722;
    }

    .sel_n1 .sel_body_button {
        float: left;
        width: 20px;
        height: 31px;
        margin-left: -23px;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -253px -382px;
        overflow: hidden;
        zoom: 1;
        cursor: pointer;
    }

    .sel_n1 .sel_body_button a {
        display: none;
    }

    .sel_n1 .sel_body_body {
        display: none
    }

    .sel_n1 .sel_bottom {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -415px;
        height: 4px;
        font-size: 0px;
    }

    .sel_y {
        margin-top: 5px;
        overflow: hidden;
    }

    .sel_y .sel_top {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -439px;
        height: 4px;
        zoom: 1;
        font-size: 0px;
    }

    .sel_y .sel_body_top {
        height: 32px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 0
    }

    .sel_y .sel_body_title {
        float: left;
        width: 100%;
        height: 31px;
        cursor: pointer;
    }

    .sel_y .sel_body_sign {
        margin-top: 1px;
        width: 30px;
        height: 31px;
        float: left;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -167px -384px;
    }

    .sel_y .sel_body_name {
        margin: 0 20px 0 30px;
        padding: 8px 7px 7px;
        font-size: 14px;
        color: #5B7BCB;
    }

    .sel_y .sel_body_button {
        float: left;
        width: 20px;
        height: 31px;
        margin-left: -20px;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -269px -297px;
        cursor: pointer;
    }

    .sel_y .sel_body_button a {
        display: none;
    }

    .sel_y .sel_body_body {
        display: none;
        height: 0px
    }

    .sel_y .sel_body_body_div {
    }

    .sel_y .sel_bottom {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -436px;
        height: 4px;
        font-size: 0px;
    }

    .sel_y .sel_body_body_page {
        display: none;
        height: 0px;
    }

    .sel_x {
        margin-top: 5px;
        width: 329px;
        overflow: hidden;
    }

    .sel_x .sel_top {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -418px;
        height: 4px;
        font-size: 0px;
    }

    .sel_x .sel_body_top {
        height: 32px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;
    }

    .sel_x .sel_body_title {
        float: left;
        width: 100%;
        height: 31px;
    }

    .sel_x .sel_body_sign {
        margin-top: 1px;
        width: 30px;
        height: 31px;
        float: left;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -122px -384px;
    }

    .sel_x .sel_body_name {
        margin: 0 20px 0 30px;
        padding: 8px 7px 7px;
        font-size: 14px;
        color: #FA8722;
    }

    .sel_x .sel_body_button {
        float: left;
        width: 55px;
        margin-left: -55px;
        padding-top: 8px;
    }

    .sel_x .sel_body_button a {
    }

    .sel_x .sel_body_body {
    }

    .sel_x .sel_body_body_div {
        padding: 5px 5px 0 5px;
    }

    .sel_x .sel_bottom {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -415px;
        height: 4px;
        font-size: 0px;
    }

    .sel_x1 {
        margin-top: 5px;
        width: 329px;
        overflow: hidden;
    }

    .sel_x1 .sel_top {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -418px;
        height: 4px;
        font-size: 0px;
    }

    .sel_x1 .sel_body_top {
        height: 32px;
        width: 100%;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat 0 -41px
    }

    .sel_x1 .sel_body_title {
        float: left;
        width: 100%;
        height: 31px;
        cursor: pointer;
    }

    .sel_x1 .sel_body_sign {
        margin-top: 1px;
        width: 30px;
        height: 31px;
        float: left;
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat -122px -384px;
    }

    .sel_x1 .sel_body_name {
        margin: 0 20px 0 30px;
        padding: 8px 7px 7px;
        font-size: 14px;
        color: #FA8722;
    }

    .sel_x1 .sel_body_button {
        float: left;
        width: 55px;
        height: 31px;
        margin-left: -55px;
    }

    .sel_x1 .sel_body_button a {
        display: none;
    }

    .sel_x1 .sel_body_body {
        display: none;
        height: 0px;
    }

    .sel_x1 .sel_body_body_div {
        padding: 5px 5px 0 5px;
    }

    .sel_x1 .sel_bottom {
        background: url(https://api.map.baidu.com/images/bgs.gif) no-repeat 0 -415px;
        height: 4px;
        font-size: 0px;
    }

    .sel_body_citylist {
        height: 100px;
        padding: 0 0 0 5px
    }

    .sel_body_resitem {
        table-layout: fixed;
        overflow-x: hidden;
        overflow-y: hidden;
    }

    .sel_body_resitem table {
        margin-right: 5px;
    }

    .sel_body_resitem tr {
        cursor: pointer;
    }

    .sel_body_resitem th {
        padding-top: 5px;
        padding-left: 5px;
        text-align: left;
        vertical-align: top;
        width: 22px;
    }

    .sel_body_resitem th div.iconbg {
        background: url(https://api.map.baidu.com/images/markers_new_ie6.png) no-repeat scroll 0 0;
        height: 29px;
        width: 24px;
    }

    .sel_body_resitem th div.icon {
        cursor: pointer
    }

    .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1 {
        background-position: 0 -64px
    }

    .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2 {
        background-position: -24px -64px
    }

    .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3 {
        background-position: -48px -64px
    }

    .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4 {
        background-position: -72px -64px
    }

    .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5 {
        background-position: -96px -64px
    }

    .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6 {
        background-position: -120px -64px
    }

    .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7 {
        background-position: -144px -64px
    }

    .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8 {
        background-position: -168px -64px
    }

    .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9 {
        background-position: -192px -64px
    }

    .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10 {
        background-position: -216px -64px
    }

    .sel_body_resitem td {
        line-height: 160%;
        padding: 3px 0 3px 3px;
        vertical-align: top;
    }

    .sel_body_resitem div.ra_td_title {
        float: left;
        margin-right: 40px;
    }

    .sel_body_resitem div.ra_td_button {
        float: right;
        width: 40px;
    }

    .sel_body_resitem div.ra_td_button input {
        height: 18px;
        font-size: 12px;
        width: 40px;
    }

    .sel_body_resitem div.clear {
        clear: both;
        height: 0px;
        width: 100%;
    }

    .sel_body_resitem td .selBtn {
        width: 70px;
        height: 29px;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;
        text-align: center;
        line-height: 29px;
        visibility: hidden;
        color: #b35900;
        display: inline-block;
        *display: inline;
        *zoom: 1;
    }

    .sel_body_resitem td .list_street_view_poi {
        display: inline-block;
        float: none;
        margin-right: 6px;
        position: static;
        *vertical-align: -3px;
        _vertical-align: -5px;
        *display: inline;
        *zoom: 1;
    }

    .selInfoWndBtn {
        width: 70px;
        height: 29px;
        background: url(https://api.map.baidu.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;
        text-align: center;
        line-height: 29px;
        margin: 0 auto;
        cursor: pointer;
        color: #b35900
    }

    .sel_body_body td a {
        text-decoration: none;
        cursor: auto;
    }

    .sel_body_body td a:hover, .sel_body_body td a:focus {
        text-decoration: underline;
    }

    .panoInfoBox {
        cursor: pointer
    }

    .panoInfoBox {
        position: relative;
        width: 323px;
        height: 101px;
        margin-bottom: 4px;
        cursor: pointer
    }

    .panoInfoBox .panoInfoBoxTitleBg {
        width: 323px;
        height: 19px;
        position: absolute;
        left: 0;
        bottom: 0;
        z-index: 2;
        background-color: #000;
        opacity: .7
    }

    .panoInfoBox .panoInfoBoxTitleContent {
        font-size: 12px;
        color: #fff;
        position: absolute;
        bottom: 2px;
        left: 5px;
        z-index: 3;
        text-decoration: none
    }

    .pano_switch_left, .pano_switch_right {
        position: absolute;
        width: 28px;
        height: 38px;
        cursor: pointer;
        background-color: #252525;
        background-color: rgba(37, 37, 37, .9)
    }

    .pano_switch_left {
        background: url(https://api.map.baidu.com/images/panorama/zuojiantou.png) no-repeat;
        -webkit-background-size: 100% 100%;
        background-size: 100% 100%
    }

    .pano_switch_right {
        background: url(https://api.map.baidu.com/images/panorama/youjiantou.png) no-repeat;
        -webkit-background-size: 100% 100%;
        background-size: 100% 100%
    }

    .pano_switch_left:hover {
        background: url(https://api.map.baidu.com/images/panorama/zuojiantou_hover.png) no-repeat;
        -webkit-background-size: 100% 100%;
        background-size: 100% 100%
    }

    .pano_switch_right:hover {
        background: url(https://api.map.baidu.com/images/panorama/youjiantou_hover.png) no-repeat;
        -webkit-background-size: 100% 100%;
        background-size: 100% 100%
    }

    .pano_switch_left.pano_switch_disable, .pano_switch_right.pano_switch_disable {
        background: 0 0;
        border: none
    }

    .pano_poi_1, .pano_poi_2, .pano_poi_4 {
        display: inline-block;
        width: 16px;
        height: 16px;
        vertical-align: middle;
        background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png) no-repeat;
        background-position: 0 0
    }

    .pano_photo_arrow_l, .pano_photo_arrow_r {
        position: absolute;
        top: 0;
        width: 20px;
        height: 100%;
        background: #f3eeee
    }

    .pano_photo_arrow_l {
        left: 0
    }

    .pano_photo_arrow_r {
        right: 0
    }

    .pano_arrow_l, .pano_arrow_r {
        display: inline-block;
        width: 18px;
        height: 18px;
        background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/newmap/static/common/images/pano_whole/pano-icons_223a291.png) no-repeat
    }

    .pano_catlogLi {
        cursor: pointer;
        position: relative;
        line-height: 10px;
        font-size: 10px;
        text-align: center;
        color: #abb0b2;
        border: 1px solid #53565c;
        padding: 3px 0;
        margin-top: 3px;
        margin-left: 2px;
        width: 90%
    }

    .pano_catlogLi:hover {
        color: #3DAAFC;
        border: 1px solid #3DAAFC
    }

    .pano_catlogLiActive {
        color: #3DAAFC;
        border: 1px solid #3DAAFC
    }

    .pano_arrow_l {
        background-position: 0 -36px
    }

    .pano_arrow_r {
        background-position: -54px -36px
    }

    .pano_photo_arrow_l:hover .pano_arrow_l {
        background-position: -18px -36px
    }

    .pano_photo_arrow_r:hover .pano_arrow_r {
        background-position: -72px -36px
    }

    .pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l {
        background-position: -36px -36px
    }

    .pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r {
        background-position: -90px -36px
    }

    .pano_photo_item {
        position: relative;
        float: left;
        line-height: 0;
        padding-left: 8px
    }

    .pano_photo_decs {
        position: absolute;
        bottom: 1px;
        left: 0;
        padding: 2px 0;
        text-indent: 5px;
        margin-left: 8px;
        display: inline-block;
        color: #fff;
        background: #000;
        opacity: .5;
        filter: alpha(opacity=50) 9;
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap
    }

    .pano_photo_item img {
        display: inline-block;
        border: solid 1px #252525
    }

    .pano_photo_item:hover img {
        border-color: #005efc
    }

    .pano_photo_item_seleted {
        position: absolute;
        top: 0;
        left: -100000px;
        border: 3px solid #097df3
    }

    .pano_close {
        position: absolute;
        right: 10px;
        top: 10px;
        width: 40px;
        cursor: pointer;
        height: 40px;
        line-height: 40px;
        border-radius: 3px;
        background-color: rgba(37, 37, 37, .9);
        background-image: url(https://api.map.baidu.com/images/panorama/close.png);
        background-repeat: no-repeat;
        background-position: center center;
        background-size: 90%
    }

    .pano_close:hover {
        background-image: url(https://api.map.baidu.com/images/panorama/close_hover.png)
    }

    .pano_pc_indoor_exit {
        position: absolute;
        right: 60px;
        top: 10px;
        width: 89px;
        cursor: pointer;
        height: 40px;
        line-height: 40px;
        color: #ebedf0;
        border-radius: 3px;
        background-color: #252525;
        background-color: rgba(37, 37, 37, .9);
        background-image: url(https://api.map.baidu.com/images/panorama/indoor_exit.png);
        background-repeat: no-repeat;
        background-position: 15px 12px
    }

    .pano_pc_indoor_exit:hover {
        background-image: url(https://api.map.baidu.com/images/panorama/indoor_exit_hover.png);
        color: #2495ff
    }

    .pano_m_indoor_exit {
        font-size: 16px;
        position: absolute;
        right: 30px;
        top: 10px;
        width: 89px;
        cursor: pointer;
        height: 40px;
        line-height: 40px;
        color: #ebedf0;
        border-radius: 3px;
        background-color: #252525;
        background-color: rgba(37, 37, 37, .9);
        background-image: url(https://api.map.baidu.com/images/panorama/indoor_exit.png);
        background-repeat: no-repeat;
        background-position: 15px 12px
    }

    .navtrans-table tr {
        color: #666
    }

    .navtrans-table tr:hover {
        color: #333
    }

    .navtrans-navlist-icon {
        float: left;
        width: 18px;
        height: 16px;
        background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/nav-icon_b5c3223.png) no-repeat 0px 0px;
        _background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/nav-icon_ie6_134841b.png) no-repeat 0px 0px;
        margin-top: 2px;
        margin-right: 5px
    }

    .navtrans-navlist-icon.s-1 {
        background-position: 0px 0px
    }

    .navtrans-navlist-icon.s-2 {
        background-position: -18px 0px
    }

    .navtrans-navlist-icon.s-3 {
        background-position: -36px 0px
    }

    .navtrans-navlist-icon.s-4 {
        background-position: -54px 0px
    }

    .navtrans-navlist-icon.s-5 {
        background-position: -72px 0px
    }

    .navtrans-navlist-icon.s-6 {
        background-position: -90px 0px
    }

    .navtrans-navlist-icon.s-7 {
        background-position: 0px -16px
    }

    .navtrans-navlist-icon.s-8 {
        background-position: -18px -16px
    }

    .navtrans-navlist-icon.s-9 {
        background-position: -36px -16px
    }

    .navtrans-navlist-icon.s-10 {
        background-position: -54px -16px
    }

    .navtrans-navlist-icon.s-11 {
        background-position: -72px -16px
    }

    .navtrans-navlist-icon.s-12 {
        background-position: -90px -16px
    }

    .navtrans-navlist-icon.s-13 {
        background-position: 0px -32px
    }

    .navtrans-navlist-icon.s-14 {
        background-position: -18px -32px
    }

    .navtrans-navlist-icon.s-18 {
        background-position: -36px -32px
    }

    .navtrans-navlist-icon.s-19 {
        background-position: -54px -32px
    }

    .navtrans-navlist-icon.s-20 {
        background-position: -72px -32px
    }

    .navtrans-navlist-icon.s-21 {
        background-position: -90px -32px
    }

    .navtrans-navlist-icon.nav-st, .navtrans-navlist-icon.nav-through {
        background-position: -16px -70px
    }

    .navtrans-navlist-icon.nav-ed {
        background-position: 0px -70px
    }

    .navtrans-view {
        border-top: 1px solid #e4e6e7;
        border-left: 1px solid #e4e6e7;
        border-right: 1px solid #e4e6e7
    }

    .navtrans-view:hover {
        cursor: pointer
    }

    .navtrans-view .navtrans-arrow {
        position: absolute;
        top: 8px;
        right: 5px;
        width: 7px;
        height: 4px;
        background-image: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/nav-icon_b5c3223.png);
        background-repeat: no-repeat;
        background-position: -40px -70px;
        margin-top: 3px;
        margin-right: 3px;
        _background-image: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/nav-icon_ie6_134841b.png)
    }

    .navtrans-view.expand:hover .navtrans-arrow {
        background-position: -61px -70px
    }

    .navtrans-view.expand .navtrans-arrow {
        background-position: -54px -70px
    }

    .navtrans-view:hover .navtrans-arrow {
        background-position: -47px -70px
    }

    .navtrans-navlist-content {
        overflow: hidden
    }

    .navtrans-res {
        border-bottom: 1px solid #E4E6E7;
        border-left: 1px solid #E4E6E7;
        border-right: 1px solid #E4E6E7
    }

    .navtrans-bus-icon {
        display: inline-block;
        float: left;
        background-image: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/ui3/mo_banner_e1aa2e6.png);
        background-repeat: no-repeat
    }

    .navtrans-bus-icon.bus {
        width: 13px;
        height: 16px;
        background-position: -1px -192px;
        position: relative;
        top: 4px
    }

    .navtrans-bus-icon.walk {
        width: 16px;
        height: 18px;
        background-position: -63px -189px;
        position: relative;
        top: 2px;
        left: -2px
    }

    .navtrans-bus-desc {
        line-height: 24px;
        margin-left: 20px
    }

    .navtrans-busstation {
        color: #36c;
        font-weight: 600
    }

    .tranroute-plan-list.expand .trans-title {
        border-bottom: 1px solid #e4e6e7;
        background-color: #ebf1fb
    }

    .trans-plan-content tr td:hover .bus {
        background-position: -15px -192px
    }

    .trans-plan-content tr td:hover .walk {
        background-position: -82px -189px
    }

    .suggest-plan {
        position: absolute;
        background-color: #0C88E8;
        padding: 0px 15px;
        line-height: 20px;
        color: #fff;
        left: 0px;
        top: 0px
    }

    .suggest-plan-des {
        text-align: left;
        padding: 29px 0px 0px 25px;
        font-size: 13px;
        color: #000
    }

    .bmap-clearfix {
        *+height: 1%
    }

    .bmap-clearfix:after {
        content: ".";
        display: block;
        height: 0px;
        clear: both;
        visibility: hidden
    }

    .BMap_CityListCtrl {
        font-size: 12px
    }

    .BMap_CityListCtrl a {
        text-decoration: none !important
    }

    .BMap_CityListCtrl a:hover {
        text-decoration: underline !important
    }

    .BMap_CityListCtrl .citylist_popup_main {
        border: 1px solid #cdcdcd;
        z-index: 2;
        position: relative;
        width: 100%;
        height: 100%;
        background: #fafafa;
        overflow: hidden;
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .1)
    }

    .ui_city_change_top .ui_city_change_inner, .ui_city_change_bottom .ui_city_change_inner {
        display: inline-block;
        height: 24px;
        line-height: 24px;
        border: 1px solid #c4c7cc;
        background-color: #fff;
        padding: 0 10px 0 10px;
        color: #000
    }

    .ui_city_change_top .ui_city_change_inner i, .ui_city_change_bottom .ui_city_change_inner i {
        width: 8px;
        height: 6px;
        display: inline-block;
        position: relative;
        top: 9px;
        left: 5px;
        -webkit-transition: all ease-in-out .15s;
        transition: all ease-in-out .15s;
        display: none9
    }

    .ui_city_change_click .ui_city_change_inner i, .ui_city_change_click_close .ui_city_change_inner i {
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        -o-transform: rotate(180deg);
        transform: rotate(180deg)
    }

    .ui_city_change_top .ui_city_change_inner:hover em {
        border-top-color: #0C88E8
    }

    .ui_city_change_top .ui_city_change_inner em {
        width: 0;
        height: 0;
        border-color: rgba(255, 255, 255, 0);
        border-top-color: #D0D4DA;
        border-style: solid;
        border-width: 4px
    }

    .ui_city_change_top .ui_city_change_inner:hover, .ui_city_change_bottom .ui_city_change_inner:hover {
        text-decoration: none !important;
        color: #3d6dcc
    }

    .ui_city_change_bottom .ui_city_change_inner:hover em {
        border-bottom-color: #0C88E8
    }

    .ui_city_change_bottom .ui_city_change_inner em {
        width: 0;
        height: 0;
        border-color: rgba(255, 255, 255, 0);
        border-bottom-color: #D0D4DA;
        border-style: solid;
        border-width: 4px;
        position: relative;
        top: -18px
    }

    .citylist_popup_main .citylist_ctr_title {
        background: #f9f9f9;
        border-bottom: 1px solid #dadada;
        height: 25px;
        line-height: 25px;
        font-size: 12px;
        color: #4c4c4c;
        padding-left: 7px
    }

    .citylist_popup_main .city_content_top {
        position: relative;
        height: 30px;
        padding: 15px 10px 0px 10px;
        border-bottom: 1px solid #CCC;
        margin: 0px 10px
    }

    .citylist_popup_main .city_content_top .cur_city_info {
        display: inline-block;
        margin: 0;
        padding: 0;
    }

    #city_ctrl_form {
        position: absolute;
        right: 12px;
        top: 10px
    }

    #selCityWd {
        border: 1px solid #ccc;
        height: 20px;
        width: 121px;
        line-height: 20px;
        text-indent: 4px;
        outline: none
    }

    #selCitySubmit:hover {
        background-position: -355px -98px
    }

    #selCitySubmit {
        float: right;
        background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/index_a2f1ac4.png) no-repeat scroll -302px -98px;
        height: 24px;
        line-height: 24px;
        width: 48px;
        cursor: pointer;
        margin-left: 5px;
        text-align: center
    }

    #sel_city_letter_list {
        padding-top: 10px
    }

    #sel_city_letter_list a {
        white-space: nowrap;
        margin-right: 11px;
        line-height: 18px;
        font-size: 13px;
        font-family: Arial, Helvetica, SimSun, sans-serif
    }

    .city_content_medium {
        padding: 10px 10px 10px 10px;
        border-bottom: 1px solid #CCC;
        margin: 0px 10px
    }

    .city_content_bottom {
        padding: 10px 10px 10px 8px;
        margin: 9px 5px 5px 5px;
        height: 218px;
        overflow-y: auto
    }

    #city_detail_table tr td {
        vertical-align: top
    }

    .sel_city_hotcity a {
        color: #3d6dcc
    }

    .sel_city_letter {
        padding: 0 14px 0 3px
    }

    .sel_city_letter div {
        font-size: 24px;
        line-height: 24px;
        font-weight: 700;
        color: #ccc;
        padding: 0;
        margin: 0;
        font-family: Arial, Helvetica, SimSun, sans-serif
    }

    .sel_city_sf {
        padding-right: 8px;
        font-weight: 700
    }

    .sel_city_sf a {
        white-space: nowrap;
        line-height: 18px;
        color: #3d6dcc
    }

    .city_names_wrap {
        margin-bottom: 9px
    }

    .sel_city_name {
        color: #3d6dcc;
        white-space: nowrap;
        margin-right: 9px;
        line-height: 18px;
        float: left
    }

    #popup_close {
        outline: none;
        position: absolute;
        z-index: 50;
        top: 7px;
        right: 6px;
        width: 12px;
        height: 12px;
        background: url(https://gss0.baidu.com/6b1IcTe9R1gBo1vgoIiO_jowehsv/wolfman/static/common/images/popup_close_15d2283.gif) no-repeat;
        border: 0;
        cursor: pointer
    }</style>
</head>
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
<#assign basePath=request.contextPath />
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
    <div class="w_slogan" style="display:block;"><img src="${staticRoot}/images/slogan_2015.png"
                                                      alt="一间房一种生活" title="一间房一种生活"></div>
    <ul class="s_mn_nav">
        <li><a href="https://www.muniao.com/">首页</a></li>
        <li style="display:none;"><a href="http://international.muniao.com/" target="_self">海外短租</a></li>
        <li><a href="${basePath}/fearureList" target="_self">特色短租</a></li>
        <li><a href="https://www.muniao.com/list_story_0_1.html" target="_self">发现</a></li>
        <li><a href="https://www.muniao.com/mobile.html" target="_blank">手机木鸟<i class="give"><img
                src="${staticRoot}/images/give88.png"></i></a></li>
    </ul>
    <div id="div_FangKe1" class="s_mn_release w_mR30" style="display:none;">
        <a href="https://user2.muniao.com/Index/MoveHouse?utp=1" class="s_mn_navbutt" rel="nofollow">我要成为房东</a>
    </div>
    <div id="div_User" class="s_mn_userbox" style=""><a href="http://user2.muniao.com/Index/MoveHouse?utp=1"
                                                        class="free-publishBtn">免费发布房源</a> <span>Hi,欢迎回来！</span> <a
            class="s_mu_username" style="font:15px/45px Microsoft YaHei;" target="_blank"
            onmouseover="$(&#39;#div_FangKe&#39;).show(); $(&#39;#div_FangDong&#39;).show();">嘉利学府</a><!--房东弹出框-->
        <div id="div_FangDong" class="w_user_xl"
             style="display:none;border-radius: 3px;opacity:0.8;background-color:rgb(191, 82, 13);border:0;"
             onmouseover="$(&#39;#div_FangDong&#39;).show();" onmouseout="$(&#39;#div_FangDong&#39;).hide();">
            <div class="w_user_xlfd">
                <div class="w_user_tt w_user_font" style="text-align:left;"><a
                        href="http://user2.muniao.com/SystemMsg/Index?utp=1" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房东中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Index/MoveHouse?utp=1"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">发布房间</a></li>
                    <li><a href="http://user2.muniao.com/Order/Index?utp=1"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">订单管理</a></li>
                    <li><a href="http://user2.muniao.com/Room/Index?utp=1&amp;c=3"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房源管理</a></li>
                    <li><a href="https://www.muniao.com/fd_mobile.html"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">房东助手</a></li>
                </ul>
                <div class="w_user_tt w_user_font w_ft10" style="text-align:left;"><a
                        href="http://user2.muniao.com/SystemMsg/Index?utp=2" rel="nofollow" target="_blank"
                        style="font-family:微软雅黑;color:#fff;">房客中心</a></div>
                <ul class="w_user_list w_user_font clearfix">
                    <li><a href="http://user2.muniao.com/Order/Index?utp=2&amp;type=8"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">我的订单</a></li>
                    <li><a href="https://www.muniao.com/mobile.html"
                           style="font-size:12px;font-family:微软雅黑;color:#fff;">木鸟APP</a></li>
                </ul>
                <div class="w_user_tc w_user_font" style="margin:60px auto 0;"><a href="javascript:void(0);"
                                                                                  onclick="logout()"
                                                                                  style="font-size:12px;font-family:微软雅黑;color:#fff;">退出</a>
                </div>
            </div>
        </div>
    </div>
    <div id="div_Login" class="s_mn_loginbox w_mR30" style="display:none;">

        <a href="javascript:void(0);" id="Login1" class="free-publishBtn">免费发布房源</a>
        <div class="s_mn_login">
            <a href="javascript:void(0);" id="Login1" class="s_mn_loginbutt1" rel="nofollow">登录</a>·
            <a href="http://user2.muniao.com/Regist/Index" class="s_mn_loginbutt" rel="nofollow">注册</a>
        </div>
    </div>
</div>
<!--登录弹出框-->

<script src="${staticRoot}/images/base-validator.js.下载"></script>
<link href="${staticRoot}/images/LoginDiv.css" rel="stylesheet">

<script>
    function toLogin(tp) {
        var backurl = $("#backurl").val();
        var backparm = $("#backparm").val();
        var ss = $("#reurl").val();
        var backurlparm = "";
        if (backurl != "" && backurl != null && backparm != null && backparm != "") {
            backparm = backparm.replace(/\*/g, "&");
            backparm = backparm.replace(/A/g, "=");
            backurl = backurl.replace(/F/, "/");
            backurlparm = "/" + backurl + "?" + backparm + "&t=" + 131728121242567561;
        }
        else if (backurl != "") {
            backurlparm = "/" + backurl;
        } else if (ss != null && ss != "") {
            backurlparm = "https://www.muniao.com/" + ss + "?t=" + 131728121242567561;
        }

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
                    getImageCode();
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
                }
                else if (j.state == -22) {//短信验证码错误
                    $('#login_MsgCode').focus();
                    $('.newa_tips_text').html('验证码已经失效，请重新获取验证码！');
                    $(".newa_tips").css({
                        "margin-left": -(newa_len * 12 + 82) / 2,
                        "top": 186
                    }).addClass("newa_tips_show");
                    return false;
                }
                else if (j.state == 1) {
                    if (backurlparm != "") {
                        location.href = backurlparm;
                    } else {
                        location.reload();
                    }
                }
                else {
                    alert("登录失败！");
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
                    if (backurlparm != "") {
                        location.href = backurlparm;
                    } else {
                        location.reload();
                    }
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

    //获取验证码
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
                alert('您还不是木鸟用户，请注册!');
            }
            else if (State == 3) {
                var Code = JSON.parse(data).Code;
                alert(Code);
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
                <a class="newa_piccode" href="javascript:void(0);"><img id="ValidImg"
                                                                        src="${staticRoot}/images/VerifyCode"
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


<!--筛选条件-->
<div class="s_mn_mainbox">
    <div class="s_mn_screenbox">
        <form action="https://www.muniao.com/home/listt" method="post" name="form1" id="search_form_list"
              class="s_mn_form" target="_self">
            <div style="display:none;">
                <input id="numtext2" type="hidden" value="1" name="guestnum">
                <input name="pinyinText" id="pinyintext" type="hidden" value="beijing" autocomplete="off">
                <input name="cityText" id="citytext" type="hidden" value="北京" autocomplete="off">
                <input name="city_longitude" id="city_longitude" type="hidden" value="116.413554" autocomplete="off">
                <input name="city_latitude" id="city_latitude" type="hidden" value="39.911013" autocomplete="off">
                <input name="areaText" id="areatext" type="hidden" value="" autocomplete="off">
                <input name="area" id="area" type="hidden" value="" autocomplete="off">
                <input name="landmarkid" id="landmarkid" type="hidden" value="" autocomplete="off">

            </div>
            <div class="s_mn_center">
                <div class="s_mn_screen_ipt">
                    <div class="s_mn_search_place">
                        <div class="s_mn_search_city">
                            <input type="text" value="北京" id="cityvalue" placeholder="" class="s_mn_city_input"
                                   autocomplete="off">
                            <div class="s_mn_ipt_window" style="display:none;">
                                <div class="s_mn_ipt_ts">请输入中文/拼音或↑↓键选择</div>
                            </div>
                            <div class="s_mn_citywindow noeve" style="display:none;">
                                <ul class="s_mn_citywindow_title">
                                    <li><a href="javascript:void(0)" class="s_cw_a_over">热门城市</a></li>
                                    <li><a href="javascript:void(0)">ABCD</a></li>
                                    <li><a href="javascript:void(0)">EFGHJ</a></li>
                                    <li><a href="javascript:void(0)">KLMN</a></li>
                                    <li><a href="javascript:void(0)">PQRSTW</a></li>
                                    <li><a href="javascript:void(0)">XYZ</a></li>
                                </ul>
                                <ul class="s_citywindow_main" style="display:block;">
                                    <li data-path="beijing" data-url="bj" data-city="北京"><a
                                            href="javascript:void(0)">北京</a></li>
                                    <li data-path="shanghai" data-url="sh" data-city="上海"><a href="javascript:void(0)">上海</a>
                                    </li>
                                    <li data-path="chongqing" data-url="cq" data-city="重庆"><a href="javascript:void(0)">重庆</a>
                                    </li>
                                    <li data-path="tianjin" data-url="tj" data-city="天津"><a
                                            href="javascript:void(0)">天津</a></li>
                                    <li data-path="qingdao" data-url="qingdao" data-city="青岛"><a
                                            href="javascript:void(0)">青岛</a></li>
                                    <li data-path="qinhuangdao" data-url="qhd" data-city="秦皇岛"><a
                                            href="javascript:void(0)">秦皇岛</a></li>
                                    <li data-path="sanya" data-url="sy" data-city="三亚"><a
                                            href="javascript:void(0)">三亚</a></li>
                                    <li data-path="dalian" data-url="dalian" data-city="大连"><a
                                            href="javascript:void(0)">大连</a></li>
                                    <li data-path="weihai" data-url="zz" data-city="威海"><a
                                            href="javascript:void(0)">威海</a></li>
                                    <li data-path="rizhao" data-url="zz" data-city="日照"><a
                                            href="javascript:void(0)">日照</a></li>
                                    <li data-path="yantai" data-url="zz" data-city="烟台"><a
                                            href="javascript:void(0)">烟台</a></li>
                                    <li data-path="xiamen" data-url="xm" data-city="厦门"><a
                                            href="javascript:void(0)">厦门</a></li>
                                    <li data-path="chengde" data-url="c" data-city="承德"><a
                                            href="javascript:void(0)">承德</a></li>
                                    <li data-path="dali" data-url="c" data-city="大理"><a href="javascript:void(0)">大理</a>
                                    </li>
                                    <li data-path="beihai" data-url="c" data-city="北海"><a
                                            href="javascript:void(0)">北海</a></li>
                                    <li data-path="shenzhen" data-url="shenzhen" data-city="深圳"><a
                                            href="javascript:void(0)">深圳</a></li>
                                    <li data-path="shenyang" data-url="shenyang" data-city="沈阳"><a
                                            href="javascript:void(0)">沈阳</a></li>
                                    <li data-path="chengdu" data-url="chengdu" data-city="成都"><a
                                            href="javascript:void(0)">成都</a></li>
                                    <li data-path="suzhou" data-url="sz" data-city="苏州"><a
                                            href="javascript:void(0)">苏州</a></li>
                                    <li data-path="hangzhou" data-url="hz" data-city="杭州"><a href="javascript:void(0)">杭州</a>
                                    </li>
                                    <li data-path="xian" data-url="xa" data-city="西安"><a
                                            href="javascript:void(0)">西安</a></li>
                                    <li data-path="guangzhou" data-url="gz" data-city="广州"><a href="javascript:void(0)">广州</a>
                                    </li>
                                    <li data-path="changsha" data-url="cs" data-city="长沙"><a href="javascript:void(0)">长沙</a>
                                    </li>
                                    <li data-path="kunming" data-url="km" data-city="昆明"><a
                                            href="javascript:void(0)">昆明</a></li>
                                    <li data-path="nanjing" data-url="nj" data-city="南京"><a
                                            href="javascript:void(0)">南京</a></li>
                                    <li data-path="wuhan" data-url="wh" data-city="武汉"><a
                                            href="javascript:void(0)">武汉</a></li>
                                    <li data-path="zhengzhou" data-url="zz" data-city="郑州"><a href="javascript:void(0)">郑州</a>
                                    </li>
                                </ul>
                                <ul class="s_citywindow_main2" style="display:none;"></ul>
                                <div class="s_city_window_prompt">
                                    温馨提示：请选择城市，也可直接输入城市名或城市拼音如：“北京”“BJ”
                                </div>
                            </div>
                        </div>
                        <div class="s_mn_search_landmark">
                            <input type="text" placeholder="请输入地点、房间名、房东姓名查询" name="key"
                                   class="s_mn_landmark_input w_list_postionicon" id="landmark_input"
                                   data-id="baidumap_suggestId" autocomplete="off">
                            <div class="s_mn_ipt_window" id="py_window" style="display: none;">
                            </div>
                            <div class="s_mn_search_landmark_window" id="landmark_window" style="display: none;">
                                <div class="s_mn_slwt">
                                    <span class="s_lt">请选择商圈、学校、地标</span><a href="javascript:void(0)"
                                                                            id="landmark_window_x">X</a>
                                </div>
                                <ul class="s_mn_slwm"></ul>
                            </div>
                            <div class="s_mn_search_landmark_select" id="landmark_select" style="display: none;">
                                <ul class="search_list"></ul>
                            </div>
                        </div>
                    </div>
                    <div class="s_mn_search_time">
                        <div class="s_mn_checkin">
                            <input type="text" value="请选择入住时间" name="start_date" id="start_date"
                                   class="s_mn_time_input w_list_dateicon" autocomplete="off" readonly=""
                                   onfocus="this.blur()">
                            <div class="s_mn_sclear" id="starttime" style="display:none;">
                                <div class="s_mn_sclear_title">
                                    <div class="s_mn_sclear_pre" id="pre_month"><a href="javascript:void(0)">&lt;</a>
                                    </div>
                                    <div class="s_mn_sclear_date" id="starttime2"></div>
                                    <div class="s_mn_sclear_next" id="next_month"><a href="javascript:void(0)">&gt;</a>
                                    </div>
                                </div>
                                <div class="s_mn_scld_main">
                                    <div class="s_mn_clear_week"><span style="color:#f30;">周日</span> <span>周一</span>
                                        <span>周二</span> <span>周三</span> <span>周四</span> <span>周五</span> <span
                                                style="color:#f30;">周六</span></div>
                                    <div class="s_mn_clear_day" id="starttime_day"><!----> </div>
                                </div>
                                <div class="s_mn_clear_prompt"><span class="s_lt" id="starttime1">请选择入住时间</span><a
                                        style="display:none" href="javascript:void(0)">今天</a></div>
                            </div>
                        </div>
                        <span class="s_mn_timespan blue">至</span>
                        <div class="s_mn_checkout">
                            <input type="text" value="请选择退房时间" name="end_date" id="end_date" class="s_mn_time_input"
                                   autocomplete="off" readonly="" onfocus="this.blur()">
                        </div>
                    </div>
                    <div class="s_mn_search_number">
                        <div class="s_mn_number_select"><span class="s_mn_num_ipt" id="s_numtext"
                                                              name="numtext">1人</span></div>
                        <ul class="s_mn_number_selectlist" id="s_number" style="display:none;">
                            <li><a href="javascript:void(0)" class="s_l40 s_f20">1人</a></li>
                            <li><a href="javascript:void(0)">2人</a></li>
                            <li><a href="javascript:void(0)">3人</a></li>
                            <li><a href="javascript:void(0)">4人</a></li>
                            <li><a href="javascript:void(0)">5人</a></li>
                            <li><a href="javascript:void(0)">6人</a></li>
                            <li><a href="javascript:void(0)">7人</a></li>
                        </ul>
                    </div>
                    <div class="s_mn_search_submit2">
                        <input type="button" value="搜 索 房 间" class="w_list_button" id="s_mn_button3">
                    </div>
                </div>
                <div class="s_mn_screen_ipt w_searchlist cleafix">
                    <ul class="s_mn_screen_list1 cleafix" id="s_mn_screen_list1">
                        <li class="clearfix">
                            <div class="s_mn_screenqy">
                                <div class="s_mn_screen_tit">房间位置：</div>
                                <div class="f12" id="list_tab">
                                    <ul>
                                        <div class="w_listbx">
                                            <div class="w_listspan2">
                                                <a href="javascript:void(0);" class="s_mn_screen_aover" title="不限"
                                                   target="_self">不限</a></div>
                                        </div>
                                        <li><span class="w_listspan">行政区域</span></li>
                                        <li><span class="w_listspan" data-len="100">热门地标</span></li>
                                        <li><span class="w_listspan" data-len="100">商圈周边</span></li>
                                        <li><span class="w_listspan" data-len="100">机场车站</span></li>
                                        <li><span class="w_listspan" data-len="100">学校周边</span></li>
                                        <li><span class="w_listspan" data-len="100">商务办公</span></li>
                                        <li><span class="w_listspan" data-len="100">景点周边</span></li>
                                        <li><span class="w_listspan" data-len="100">医院周边</span></li>
                                        <li><span class="w_listspan" data-len="100">展馆周边</span></li>
                                    </ul>
                                </div>
                                <div id="w_listect" class="f12">

                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/dongcheng-0-0-0-0-0-0-0-1.html"
                                           title="东城区" target="_self">东城区</a>
                                        <a href="https://www.muniao.com/beijing/xicheng-0-0-0-0-0-0-0-1.html"
                                           title="西城区" target="_self">西城区</a>
                                        <a href="https://www.muniao.com/beijing/chaoyang-0-0-0-0-0-0-0-1.html"
                                           title="朝阳区" target="_self">朝阳区</a>
                                        <a href="https://www.muniao.com/beijing/fengtai-0-0-0-0-0-0-0-1.html"
                                           title="丰台区" target="_self">丰台区</a>
                                        <a href="https://www.muniao.com/beijing/shijingshan-0-0-0-0-0-0-0-1.html"
                                           title="石景山区" target="_self">石景山区</a>
                                        <a href="https://www.muniao.com/beijing/haidian-0-0-0-0-0-0-0-1.html"
                                           title="海淀区" target="_self">海淀区</a>
                                        <a href="https://www.muniao.com/beijing/mentougou-0-0-0-0-0-0-0-1.html"
                                           title="门头沟区" target="_self">门头沟区</a>
                                        <a href="https://www.muniao.com/beijing/fangshan-0-0-0-0-0-0-0-1.html"
                                           title="房山区" target="_self">房山区</a>
                                        <a href="https://www.muniao.com/beijing/tongzhou-0-0-0-0-0-0-0-1.html"
                                           title="通州区" target="_self">通州区</a>
                                        <a href="https://www.muniao.com/beijing/shunyi-0-0-0-0-0-0-0-1.html" title="顺义区"
                                           target="_self">顺义区</a>
                                        <a href="https://www.muniao.com/beijing/changping-0-0-0-0-0-0-0-1.html"
                                           title="昌平区" target="_self">昌平区</a>
                                        <a href="https://www.muniao.com/beijing/daxing-0-0-0-0-0-0-0-1.html" title="大兴区"
                                           target="_self">大兴区</a>
                                        <a href="https://www.muniao.com/beijing/huairou-0-0-0-0-0-0-0-1.html"
                                           title="怀柔区" target="_self">怀柔区</a>
                                        <a href="https://www.muniao.com/beijing/pinggu-0-0-0-0-0-0-0-1.html" title="平谷区"
                                           target="_self">平谷区</a>
                                        <a href="https://www.muniao.com/beijing/miyun-0-0-0-0-0-0-0-1.html" title="密云县"
                                           target="_self">密云县</a>
                                        <a href="https://www.muniao.com/beijing/yanqing-0-0-0-0-0-0-0-1.html"
                                           title="延庆县" target="_self">延庆县</a>
                                        <a href="https://www.muniao.com/beijing/xuanwu-0-0-0-0-0-0-0-1.html" title="宣武区"
                                           target="_self">宣武区</a>
                                        <a href="https://www.muniao.com/beijing/chongwen-0-0-0-0-0-0-0-1.html"
                                           title="崇文区" target="_self">崇文区</a>

                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_2635-0-0-0-0-0-0-0-1.html"
                                           title="北京西站" target="_self">北京西站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150942-0-0-0-0-0-0-0-1.html"
                                           title="建国门" target="_self">建国门</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150933-0-0-0-0-0-0-0-1.html"
                                           title="崇文门" target="_self">崇文门</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150798-0-0-0-0-0-0-0-1.html"
                                           title="五棵松" target="_self">五棵松</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150837-0-0-0-0-0-0-0-1.html"
                                           title="亚运村" target="_self">亚运村</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1932-0-0-0-0-0-0-0-1.html"
                                           title="欢乐谷" target="_self">欢乐谷</a>

                                    </div>
                                    <div class="w_listectnone" style="display: none;">

                                        <a href="https://www.muniao.com/beijing/landmark_150864-0-0-0-0-0-0-0-1.html"
                                           title="双井" target="_self">双井</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150793-0-0-0-0-0-0-0-1.html"
                                           title="劲松" target="_self">劲松</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150927-0-0-0-0-0-0-0-1.html"
                                           title="潘家园" target="_self">潘家园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_54147-0-0-0-0-0-0-0-1.html"
                                           title="百环花园" target="_self">百环花园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187493-0-0-0-0-0-0-0-1.html"
                                           title="当代" target="_self">当代</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150787-0-0-0-0-0-0-0-1.html"
                                           title="广渠门" target="_self">广渠门</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1977-0-0-0-0-0-0-0-1.html"
                                           title="中关村" target="_self">中关村</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150858-0-0-0-0-0-0-0-1.html"
                                           title="大望路" target="_self">大望路</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25702-0-0-0-0-0-0-0-1.html"
                                           title="国贸中心" target="_self">国贸中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150801-0-0-0-0-0-0-0-1.html"
                                           title="建外大街" target="_self">建外大街</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150834-0-0-0-0-0-0-0-1.html"
                                           title="双榆树" target="_self">双榆树</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187532-0-0-0-0-0-0-0-1.html"
                                           title="南磨房" target="_self">南磨房</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150895-0-0-0-0-0-0-0-1.html"
                                           title="CBD" target="_self">CBD</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187509-0-0-0-0-0-0-0-1.html"
                                           title="人民大学" target="_self">人民大学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27887-0-0-0-0-0-0-0-1.html"
                                           title="法华寺" target="_self">法华寺</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150805-0-0-0-0-0-0-0-1.html"
                                           title="万柳" target="_self">万柳</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150812-0-0-0-0-0-0-0-1.html"
                                           title="苏州街" target="_self">苏州街</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150885-0-0-0-0-0-0-0-1.html"
                                           title="万泉河" target="_self">万泉河</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187546-0-0-0-0-0-0-0-1.html"
                                           title="天宁寺" target="_self">天宁寺</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150914-0-0-0-0-0-0-0-1.html"
                                           title="体育馆路" target="_self">体育馆路</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187494-0-0-0-0-0-0-0-1.html"
                                           title="新世界" target="_self">新世界</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150833-0-0-0-0-0-0-0-1.html"
                                           title="广安门" target="_self">广安门</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150792-0-0-0-0-0-0-0-1.html"
                                           title="磁器口" target="_self">磁器口</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150809-0-0-0-0-0-0-0-1.html"
                                           title="广外大街" target="_self">广外大街</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150904-0-0-0-0-0-0-0-1.html"
                                           title="红莲" target="_self">红莲</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150880-0-0-0-0-0-0-0-1.html"
                                           title="花市" target="_self">花市</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150810-0-0-0-0-0-0-0-1.html"
                                           title="复兴门" target="_self">复兴门</a>
                                        <a href="https://www.muniao.com/beijing/landmark_187500-0-0-0-0-0-0-0-1.html"
                                           title="双安" target="_self">双安</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150874-0-0-0-0-0-0-0-1.html"
                                           title="马连道" target="_self">马连道</a>
                                        <a href="https://www.muniao.com/beijing/landmark_150929-0-0-0-0-0-0-0-1.html"
                                           title="西便门" target="_self">西便门</a>

                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_2634-0-0-0-0-0-0-0-1.html"
                                           title="北京站" target="_self">北京站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2637-0-0-0-0-0-0-0-1.html"
                                           title="北京东站" target="_self">北京东站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2635-0-0-0-0-0-0-0-1.html"
                                           title="北京西站" target="_self">北京西站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2636-0-0-0-0-0-0-0-1.html"
                                           title="北京北站" target="_self">北京北站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2638-0-0-0-0-0-0-0-1.html"
                                           title="北京南站" target="_self">北京南站</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1371265-0-0-0-0-0-0-0-1.html"
                                           title="南口站(南出站口)" target="_self">南口站(南出站口)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1212402-0-0-0-0-0-0-0-1.html"
                                           title="北京北站(南进站口)" target="_self">北京北站(南进站口)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183768-0-0-0-0-0-0-0-1.html"
                                           title="北京北站售票厅" target="_self">北京北站售票厅</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183767-0-0-0-0-0-0-0-1.html"
                                           title="北京西站9站台" target="_self">北京西站9站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183766-0-0-0-0-0-0-0-1.html"
                                           title="北京西站10站台" target="_self">北京西站10站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183765-0-0-0-0-0-0-0-1.html"
                                           title="北京西站3站台" target="_self">北京西站3站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183764-0-0-0-0-0-0-0-1.html"
                                           title="北京西站4站台" target="_self">北京西站4站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183763-0-0-0-0-0-0-0-1.html"
                                           title="北京西站5站台" target="_self">北京西站5站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183762-0-0-0-0-0-0-0-1.html"
                                           title="北京西站6站台" target="_self">北京西站6站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183761-0-0-0-0-0-0-0-1.html"
                                           title="北京西站7站台" target="_self">北京西站7站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183760-0-0-0-0-0-0-0-1.html"
                                           title="北京西站8站台" target="_self">北京西站8站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183759-0-0-0-0-0-0-0-1.html"
                                           title="北京西站1站台" target="_self">北京西站1站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183758-0-0-0-0-0-0-0-1.html"
                                           title="北京西站2站台" target="_self">北京西站2站台</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183757-0-0-0-0-0-0-0-1.html"
                                           title="八达岭站(西南进站口)" target="_self">八达岭站(西南进站口)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183756-0-0-0-0-0-0-0-1.html"
                                           title="北京西站3候车室" target="_self">北京西站3候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183755-0-0-0-0-0-0-0-1.html"
                                           title="13候车室计时休息厅(北京西站)" target="_self">13候车室计时休息厅(北京西站)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183754-0-0-0-0-0-0-0-1.html"
                                           title="北京西站10候车室" target="_self">北京西站10候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183753-0-0-0-0-0-0-0-1.html"
                                           title="北京西站11候车室" target="_self">北京西站11候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183752-0-0-0-0-0-0-0-1.html"
                                           title="北京西站2母婴候车室" target="_self">北京西站2母婴候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183751-0-0-0-0-0-0-0-1.html"
                                           title="北京西站4候车室" target="_self">北京西站4候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183750-0-0-0-0-0-0-0-1.html"
                                           title="北京西站1软席候车室" target="_self">北京西站1软席候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183749-0-0-0-0-0-0-0-1.html"
                                           title="北京西站5候车室" target="_self">北京西站5候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183748-0-0-0-0-0-0-0-1.html"
                                           title="北京西站6候车室" target="_self">北京西站6候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183747-0-0-0-0-0-0-0-1.html"
                                           title="北京西站7候车室" target="_self">北京西站7候车室</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1183746-0-0-0-0-0-0-0-1.html"
                                           title="北京西站8候车室" target="_self">北京西站8候车室</a>
                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_2147-0-0-0-0-0-0-0-1.html"
                                           title="北京语言大学" target="_self">北京语言大学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2155-0-0-0-0-0-0-0-1.html"
                                           title="首都体育学院" target="_self">首都体育学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2162-0-0-0-0-0-0-0-1.html"
                                           title="中国青年政治学院" target="_self">中国青年政治学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2141-0-0-0-0-0-0-0-1.html"
                                           title="北京舞蹈学院" target="_self">北京舞蹈学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2167-0-0-0-0-0-0-0-1.html"
                                           title="中国音乐学院" target="_self">中国音乐学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2171-0-0-0-0-0-0-0-1.html"
                                           title="中央美术学院" target="_self">中央美术学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2130-0-0-0-0-0-0-0-1.html"
                                           title="北京建筑工程学院" target="_self">北京建筑工程学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2158-0-0-0-0-0-0-0-1.html"
                                           title="外交学院" target="_self">外交学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2136-0-0-0-0-0-0-0-1.html"
                                           title="北京农学院" target="_self">北京农学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2125-0-0-0-0-0-0-0-1.html"
                                           title="北京服装学院" target="_self">北京服装学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2169-0-0-0-0-0-0-0-1.html"
                                           title="中华女子学院" target="_self">中华女子学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2124-0-0-0-0-0-0-0-1.html"
                                           title="北京电子科技学院" target="_self">北京电子科技学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2166-0-0-0-0-0-0-0-1.html"
                                           title="中国戏曲学院" target="_self">中国戏曲学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2154-0-0-0-0-0-0-0-1.html"
                                           title="首都师范大学" target="_self">首都师范大学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2157-0-0-0-0-0-0-0-1.html"
                                           title="首钢工学院" target="_self">首钢工学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2145-0-0-0-0-0-0-0-1.html"
                                           title="北京印刷学院" target="_self">北京印刷学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2138-0-0-0-0-0-0-0-1.html"
                                           title="北京石油化工学院" target="_self">北京石油化工学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2160-0-0-0-0-0-0-0-1.html"
                                           title="中国劳动关系学院" target="_self">中国劳动关系学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2126-0-0-0-0-0-0-0-1.html"
                                           title="北京工商大学" target="_self">北京工商大学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2150-0-0-0-0-0-0-0-1.html"
                                           title="国际关系学院" target="_self">国际关系学院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126900-0-0-0-0-0-0-0-1.html"
                                           title="央美大观艺术培训（北京）有限公司" target="_self">央美大观艺术培训（北京）有限公司</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126899-0-0-0-0-0-0-0-1.html"
                                           title="艺沁烹饪学校" target="_self">艺沁烹饪学校</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126898-0-0-0-0-0-0-0-1.html"
                                           title="北京市朝阳师范学校附属小学" target="_self">北京市朝阳师范学校附属小学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126895-0-0-0-0-0-0-0-1.html"
                                           title="北京农业大学附属中学" target="_self">北京农业大学附属中学</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126893-0-0-0-0-0-0-0-1.html"
                                           title="财贸干校" target="_self">财贸干校</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126880-0-0-0-0-0-0-0-1.html"
                                           title="首都经济贸易大学西校区" target="_self">首都经济贸易大学西校区</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126877-0-0-0-0-0-0-0-1.html"
                                           title="北京市西城建业培训学校" target="_self">北京市西城建业培训学校</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126869-0-0-0-0-0-0-0-1.html"
                                           title="龙文总部安定门教学中心" target="_self">龙文总部安定门教学中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126845-0-0-0-0-0-0-0-1.html"
                                           title="北京王府教育培训学校(旁门)" target="_self">北京王府教育培训学校(旁门)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126775-0-0-0-0-0-0-0-1.html"
                                           title="旭博外语培训学校" target="_self">旭博外语培训学校</a>
                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_26288-0-0-0-0-0-0-0-1.html"
                                           title="顺迈金钻国际商务中心" target="_self">顺迈金钻国际商务中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26422-0-0-0-0-0-0-0-1.html"
                                           title="垂杨大厦" target="_self">垂杨大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26022-0-0-0-0-0-0-0-1.html"
                                           title="京粮大厦" target="_self">京粮大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25725-0-0-0-0-0-0-0-1.html"
                                           title="建外SOHO西区" target="_self">建外SOHO西区</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26195-0-0-0-0-0-0-0-1.html"
                                           title="东环国际大厦" target="_self">东环国际大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26037-0-0-0-0-0-0-0-1.html"
                                           title="艾维克大厦" target="_self">艾维克大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26101-0-0-0-0-0-0-0-1.html"
                                           title="瑞赛大厦" target="_self">瑞赛大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25826-0-0-0-0-0-0-0-1.html"
                                           title="京汇大厦" target="_self">京汇大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25717-0-0-0-0-0-0-0-1.html"
                                           title="北京银泰中心" target="_self">北京银泰中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26168-0-0-0-0-0-0-0-1.html"
                                           title="中环世贸中心" target="_self">中环世贸中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25763-0-0-0-0-0-0-0-1.html"
                                           title="SK大厦" target="_self">SK大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26063-0-0-0-0-0-0-0-1.html"
                                           title="通用国际中心" target="_self">通用国际中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26045-0-0-0-0-0-0-0-1.html"
                                           title="米阳大厦" target="_self">米阳大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25730-0-0-0-0-0-0-0-1.html"
                                           title="招商局大厦" target="_self">招商局大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26175-0-0-0-0-0-0-0-1.html"
                                           title="海文大厦" target="_self">海文大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25954-0-0-0-0-0-0-0-1.html"
                                           title="华腾大厦" target="_self">华腾大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25908-0-0-0-0-0-0-0-1.html"
                                           title="华腾北塘商务大厦" target="_self">华腾北塘商务大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25895-0-0-0-0-0-0-0-1.html"
                                           title="劲松大厦" target="_self">劲松大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_25873-0-0-0-0-0-0-0-1.html"
                                           title="新东方中航工业大厦" target="_self">新东方中航工业大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26158-0-0-0-0-0-0-0-1.html"
                                           title="冠城名敦道" target="_self">冠城名敦道</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26042-0-0-0-0-0-0-0-1.html"
                                           title="中服大厦" target="_self">中服大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26120-0-0-0-0-0-0-0-1.html"
                                           title="旭捷大厦" target="_self">旭捷大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26279-0-0-0-0-0-0-0-1.html"
                                           title="国贸西楼" target="_self">国贸西楼</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26229-0-0-0-0-0-0-0-1.html"
                                           title="竭诚商务楼" target="_self">竭诚商务楼</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26159-0-0-0-0-0-0-0-1.html"
                                           title="雍贵中心" target="_self">雍贵中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26311-0-0-0-0-0-0-0-1.html"
                                           title="双子座大厦东塔" target="_self">双子座大厦东塔</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26210-0-0-0-0-0-0-0-1.html"
                                           title="湖南大厦" target="_self">湖南大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26078-0-0-0-0-0-0-0-1.html"
                                           title="和盛大厦" target="_self">和盛大厦</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26298-0-0-0-0-0-0-0-1.html"
                                           title="汇豪阁公寓" target="_self">汇豪阁公寓</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26043-0-0-0-0-0-0-0-1.html"
                                           title="华丽大厦" target="_self">华丽大厦</a>
                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_3487-0-0-0-0-0-0-0-1.html"
                                           title="孔庙和国子监博物馆" target="_self">孔庙和国子监博物馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3466-0-0-0-0-0-0-0-1.html"
                                           title="秀水街" target="_self">秀水街</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3483-0-0-0-0-0-0-0-1.html"
                                           title="南池子" target="_self">南池子</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3468-0-0-0-0-0-0-0-1.html"
                                           title="世贸天阶" target="_self">世贸天阶</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3463-0-0-0-0-0-0-0-1.html"
                                           title="中华世纪坛" target="_self">中华世纪坛</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3448-0-0-0-0-0-0-0-1.html"
                                           title="前门大街" target="_self">前门大街</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3477-0-0-0-0-0-0-0-1.html"
                                           title="劳动人民文化宫" target="_self">劳动人民文化宫</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3482-0-0-0-0-0-0-0-1.html"
                                           title="海淀公园" target="_self">海淀公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3441-0-0-0-0-0-0-0-1.html"
                                           title="故宫博物院" target="_self">故宫博物院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3451-0-0-0-0-0-0-0-1.html"
                                           title="北京动物园" target="_self">北京动物园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3476-0-0-0-0-0-0-0-1.html"
                                           title="国家图书馆" target="_self">国家图书馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3467-0-0-0-0-0-0-0-1.html"
                                           title="北京大观园" target="_self">北京大观园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3488-0-0-0-0-0-0-0-1.html"
                                           title="月坛公园" target="_self">月坛公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3453-0-0-0-0-0-0-0-1.html"
                                           title="景山公园" target="_self">景山公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3462-0-0-0-0-0-0-0-1.html"
                                           title="地坛公园" target="_self">地坛公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3480-0-0-0-0-0-0-0-1.html"
                                           title="玉渊潭公园" target="_self">玉渊潭公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3469-0-0-0-0-0-0-0-1.html"
                                           title="中央广播电视塔" target="_self">中央广播电视塔</a>
                                        <a href="https://www.muniao.com/beijing/landmark_3484-0-0-0-0-0-0-0-1.html"
                                           title="石景山游乐园" target="_self">石景山游乐园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1213448-0-0-0-0-0-0-0-1.html"
                                           title="天安门-城楼" target="_self">天安门-城楼</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126892-0-0-0-0-0-0-0-1.html"
                                           title="东亚奥北中心" target="_self">东亚奥北中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126888-0-0-0-0-0-0-0-1.html"
                                           title="瑞光胡同" target="_self">瑞光胡同</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126881-0-0-0-0-0-0-0-1.html"
                                           title="校尉胡同" target="_self">校尉胡同</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126876-0-0-0-0-0-0-0-1.html"
                                           title="五泉山公园" target="_self">五泉山公园</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126874-0-0-0-0-0-0-0-1.html"
                                           title="保全顺生态农庄" target="_self">保全顺生态农庄</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126864-0-0-0-0-0-0-0-1.html"
                                           title="明辨楼" target="_self">明辨楼</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126838-0-0-0-0-0-0-0-1.html"
                                           title="8哩岛" target="_self">8哩岛</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126809-0-0-0-0-0-0-0-1.html"
                                           title="仙人洞" target="_self">仙人洞</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126801-0-0-0-0-0-0-0-1.html"
                                           title="丰盛胡同" target="_self">丰盛胡同</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126795-0-0-0-0-0-0-0-1.html"
                                           title="美景东方" target="_self">美景东方</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126794-0-0-0-0-0-0-0-1.html"
                                           title="燕山水泥厂" target="_self">燕山水泥厂</a>
                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_2747-0-0-0-0-0-0-0-1.html"
                                           title="首都儿科研究所附属儿童医院" target="_self">首都儿科研究所附属儿童医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2743-0-0-0-0-0-0-0-1.html"
                                           title="北京协和医院" target="_self">北京协和医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2757-0-0-0-0-0-0-0-1.html"
                                           title="世纪坛医院" target="_self">世纪坛医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2749-0-0-0-0-0-0-0-1.html"
                                           title="北京医院" target="_self">北京医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2740-0-0-0-0-0-0-0-1.html"
                                           title="北京天坛医院" target="_self">北京天坛医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2746-0-0-0-0-0-0-0-1.html"
                                           title="北京儿童医院" target="_self">北京儿童医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2750-0-0-0-0-0-0-0-1.html"
                                           title="武警总医院" target="_self">武警总医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2739-0-0-0-0-0-0-0-1.html"
                                           title="北京华大肾安医院" target="_self">北京华大肾安医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2764-0-0-0-0-0-0-0-1.html"
                                           title="北医三院" target="_self">北医三院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2759-0-0-0-0-0-0-0-1.html"
                                           title="西苑医院" target="_self">西苑医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2753-0-0-0-0-0-0-0-1.html"
                                           title="望京医院" target="_self">望京医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2763-0-0-0-0-0-0-0-1.html"
                                           title="东直门医院" target="_self">东直门医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2737-0-0-0-0-0-0-0-1.html"
                                           title="空军总医院" target="_self">空军总医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2758-0-0-0-0-0-0-0-1.html"
                                           title="北京肿瘤医院" target="_self">北京肿瘤医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2766-0-0-0-0-0-0-0-1.html"
                                           title="武警北京总队医院" target="_self">武警北京总队医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2754-0-0-0-0-0-0-0-1.html"
                                           title="北京安定医院" target="_self">北京安定医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2738-0-0-0-0-0-0-0-1.html"
                                           title="宣武医院" target="_self">宣武医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2742-0-0-0-0-0-0-0-1.html"
                                           title="阜外医院" target="_self">阜外医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2745-0-0-0-0-0-0-0-1.html"
                                           title="北京中医医院" target="_self">北京中医医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2760-0-0-0-0-0-0-0-1.html"
                                           title="航天中心医院" target="_self">航天中心医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2761-0-0-0-0-0-0-0-1.html"
                                           title="佑安医院" target="_self">佑安医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_2741-0-0-0-0-0-0-0-1.html"
                                           title="海军总医院" target="_self">海军总医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126902-0-0-0-0-0-0-0-1.html"
                                           title="北京宣武医院集团中心医院" target="_self">北京宣武医院集团中心医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126894-0-0-0-0-0-0-0-1.html"
                                           title="中日医院" target="_self">中日医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126886-0-0-0-0-0-0-0-1.html"
                                           title="北京武警医院" target="_self">北京武警医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126883-0-0-0-0-0-0-0-1.html"
                                           title="大兴妇幼保健站(兴丰大街分院)" target="_self">大兴妇幼保健站(兴丰大街分院)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126878-0-0-0-0-0-0-0-1.html"
                                           title="北京城建第四医院" target="_self">北京城建第四医院</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126866-0-0-0-0-0-0-0-1.html"
                                           title="斯迈尔齿科" target="_self">斯迈尔齿科</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126854-0-0-0-0-0-0-0-1.html"
                                           title="北京市眼科研究所" target="_self">北京市眼科研究所</a>
                                        <a href="https://www.muniao.com/beijing/landmark_1126832-0-0-0-0-0-0-0-1.html"
                                           title="北京嘉悦眼科门诊部有限公司" target="_self">北京嘉悦眼科门诊部有限公司</a>
                                    </div>
                                    <div class="w_listectnone" style="display: none;">
                                        <a href="https://www.muniao.com/beijing/landmark_26787-0-0-0-0-0-0-0-1.html"
                                           title="胜利联盟五人足球中心" target="_self">胜利联盟五人足球中心</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26520-0-0-0-0-0-0-0-1.html"
                                           title="天地人运动馆" target="_self">天地人运动馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27117-0-0-0-0-0-0-0-1.html"
                                           title="CBD体育文化广场" target="_self">CBD体育文化广场</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26874-0-0-0-0-0-0-0-1.html"
                                           title="小帅台球厅" target="_self">小帅台球厅</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26694-0-0-0-0-0-0-0-1.html"
                                           title="九度谷台球俱乐部" target="_self">九度谷台球俱乐部</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26970-0-0-0-0-0-0-0-1.html"
                                           title="婴乐士婴幼儿游泳馆" target="_self">婴乐士婴幼儿游泳馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27091-0-0-0-0-0-0-0-1.html"
                                           title="小龙人棒球俱乐部" target="_self">小龙人棒球俱乐部</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26580-0-0-0-0-0-0-0-1.html"
                                           title="豪门中天" target="_self">豪门中天</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27215-0-0-0-0-0-0-0-1.html"
                                           title="云川台球厅" target="_self">云川台球厅</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26654-0-0-0-0-0-0-0-1.html"
                                           title="中国大饭店游泳池" target="_self">中国大饭店游泳池</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27083-0-0-0-0-0-0-0-1.html"
                                           title="广西大厦游泳馆" target="_self">广西大厦游泳馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26540-0-0-0-0-0-0-0-1.html"
                                           title="中关村体育场" target="_self">中关村体育场</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26697-0-0-0-0-0-0-0-1.html"
                                           title="三星缘台球厅" target="_self">三星缘台球厅</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26602-0-0-0-0-0-0-0-1.html"
                                           title="塞特俱乐部保龄球馆" target="_self">塞特俱乐部保龄球馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26614-0-0-0-0-0-0-0-1.html"
                                           title="阿波罗娱乐宫保龄球馆" target="_self">阿波罗娱乐宫保龄球馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26917-0-0-0-0-0-0-0-1.html"
                                           title="北京人民大学篮球场" target="_self">北京人民大学篮球场</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26713-0-0-0-0-0-0-0-1.html"
                                           title="友谊宾馆网球场" target="_self">友谊宾馆网球场</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27226-0-0-0-0-0-0-0-1.html"
                                           title="金假日台球城" target="_self">金假日台球城</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26660-0-0-0-0-0-0-0-1.html"
                                           title="京城水系麦钟桥游泳场" target="_self">京城水系麦钟桥游泳场</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26845-0-0-0-0-0-0-0-1.html"
                                           title="海翰银岸桌球俱乐部" target="_self">海翰银岸桌球俱乐部</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27115-0-0-0-0-0-0-0-1.html"
                                           title="京瑞大厦-游泳池" target="_self">京瑞大厦-游泳池</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26833-0-0-0-0-0-0-0-1.html"
                                           title="华盛堂跆拳道" target="_self">华盛堂跆拳道</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26729-0-0-0-0-0-0-0-1.html"
                                           title="京体游泳馆" target="_self">京体游泳馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26665-0-0-0-0-0-0-0-1.html"
                                           title="伯爵园高尔夫俱乐部(京瑞大厦店)" target="_self">伯爵园高尔夫俱乐部(京瑞大厦店)</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26645-0-0-0-0-0-0-0-1.html"
                                           title="深圳大厦游泳馆" target="_self">深圳大厦游泳馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26689-0-0-0-0-0-0-0-1.html"
                                           title="长城岭滑雪场北京办事处" target="_self">长城岭滑雪场北京办事处</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26560-0-0-0-0-0-0-0-1.html"
                                           title="撞击之都台球俱乐部" target="_self">撞击之都台球俱乐部</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26517-0-0-0-0-0-0-0-1.html"
                                           title="北京体育馆" target="_self">北京体育馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_26896-0-0-0-0-0-0-0-1.html"
                                           title="锦上国际公寓保龄球馆" target="_self">锦上国际公寓保龄球馆</a>
                                        <a href="https://www.muniao.com/beijing/landmark_27018-0-0-0-0-0-0-0-1.html"
                                           title="东方启明星篮球" target="_self">东方启明星篮球</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="s_mn_screenqy">
                                <div class="s_mn_screen_tit">房屋类型：</div>
                                <div class="s_mn_screenlist">
                                    <span class="w_listspan3">
                                           <!--/beijing/-->
                                        <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/${roomList[1].roomInterval.priceIntervalId}/${roomList[1].rentalMethod.methodId}/${roomList[1].roomStructure.structureId}"
                                           class="s_mn_screen_aover" title="不限"
                                           target="_self">不限</a>                                                                                            </span>
                                <#list roomTypes as type >
                                    <span class="w_listspan3">
                                        <a rel="nofollow"
                                           href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/${type.roomType.typeId}/0/0/0"
                                           title="${type.roomType.roomType}">
                                        ${type.roomType.roomType}
                                        </a>
                                    </span>
                                </#list>
                                </div>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="s_mn_screenqy">
                                <div class="s_mn_screen_tit">房间价格：</div>
                                <div class="s_mn_screenlist">
                                    <div class="w_searchprice_l">
                                    <span class="w_listspan3">
                                            <!--/beijing/-->
                                        <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/${roomList[1].roomType.typeId}/0/${roomList[1].rentalMethod.methodId}/${roomList[1].roomStructure.structureId}"
                                           class="s_mn_screen_aover" title="不限 target=" _self"="">不限</a>
                                    </span>
                                    <#list roomIntervals as interval>
                                        <span class="w_listspan3">
                                        <a rel="nofollow"
                                           href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/${interval.roomInterval.priceIntervalId}/0/0"
                                           title="${interval.roomInterval.priceInterval}">
                                        ${interval.roomInterval.priceInterval}
                                        </a>
                                    </span>
                                    </#list>
                                    </div>

                                    <div class="s_mn_custom" style="display:none;">
                                        <input type="text" value="" class="s_mn_customipt">
                                        &nbsp;-&nbsp;
                                        <input type="text" value="" class="s_mn_customipt">
                                        <input type="button" class="s_mn_button4" value="确定">
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="s_mn_screenqy">
                                <div class="s_mn_screen_tit">出租类型：</div>
                                <div class="s_mn_screenlist">
                                    <span class="w_listspan3">
                                            <!--/beijing/-->
                                        <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/${roomList[1].roomType.typeId}/${roomList[1].roomInterval.priceIntervalId}/0/${roomList[1].roomStructure.structureId}"
                                           class="s_mn_screen_aover" title="不限" rel="nofollow" target="_self">不限</a>
                                    </span>
                                <#list roomMethods as method>
                                    <span>
                                        <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/0/${method.rentalMethod.methodId}/0"
                                           title="${method.rentalMethod.method}" rel="nofollow" target="_self">${method.rentalMethod.method}</a>
                                    </span>
                                </#list>
                                </div>
                            </div>
                        </li>
                        <li class="clearfix w_select_border">
                            <div class="s_mn_screenqy">
                                <div class="s_mn_screen_tit">房间户型：</div>
                                <div class="s_mn_screenlist" data-family="0">
                                    <span class="w_listspan3">
                                            <a href="javascript:void(0);"
                                               class="s_mn_screen_aover" title="不限" rel="nofollow"
                                               target="_self">不限</a>
                                    </span>
                                <#list roomStructures as structure>
                                    <span class="w_listspan3">
                                        <a rel="nofollow" href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/0/0/${structure.roomStructure.structureId}"
                                           title="${structure.roomStructure.bedroomNum}">
                                           ${structure.roomStructure.bedroomNum}室
                                        </a>
                                    </span>
                                </#list>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div><!--search list end-->
                <ul class="s_mn_selected_screenbox" style="display: block;">
                    <li>
                    </li>
                </ul>
            </div>
        </form>
        <div class="s_mn_screen_window" id="s_mn_screen_window" style="display:none;">
            <div class="s_mn_center">
                <div class="s_mn_search_submit3">
                    <!--显示筛选结果-->
                    <input type="button" class="s_mn_button5" value="隐藏筛选条件"
                           onmouseover="this.className=&#39;s_mn_button5_hover&#39;"
                           onmouseout="this.className=&#39;s_mn_button5&#39;">
                </div>
            </div>
        </div>
    </div>
</div>
<!--房源列表-->
<div class="s_mn_mainbox">
    <div class="s_mn_center clear">
        <div class="s_mn_article">
            <div class="s_mn_detailsList_condition">
                <div class="s_mn_ranking">

                    <!--/beijing/--> <a href="javascript:void(0);" class="descen_icon_over" title="默认排序">默认</a>|
                    <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-5-0-1.html" rel="nofollow"
                       class="descen_icon" title="销量排序">销量</a> |

                    <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-2-0-1.html" rel="nofollow"
                       class="ascend_icon" title="价格排序">价格</a> |
                    <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-8-0-1.html" rel="nofollow"
                       class="ascend_icon" title="人气排序">人气</a>|
                    <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-4-0-1.html" rel="nofollow"
                       class="ascend_icon" title="时间排序">最新</a>|
                    <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-6-0-1.html" rel="nofollow"
                       class="ascend_icon" title="评价数量排序">评价</a></div>
                <div class="s_mn_search_navtag">
                    <a href="http://www.muniao.com/" title="木鸟短租网" target="_self">木鸟短租网</a>
                    <span>&gt;</span>&nbsp;<a href="https://www.muniao.com/beijing/" title="北京短租房"
                                              target="_self">北京短租房</a>

                    &nbsp;-&nbsp;为您找到北京短租房
                    <span class="s_red">34720套</span></div>

                <div class="s_mn_switchmodel">
                    <!--<a href="#" class="listpic_icon" title="图片模式">图片模式</a>-->
                </div>
            </div>
            <ul class="s_mn_detailslist clear" id="Lmain_con">
            <#list roomList as room >
                <li class="Lcon1" data-id="75902" data-x="${room.roomLongitude}" data-y="${room.roomLatitude}"
                    data-title="${room.roomName}" data-price="${room.roomPrice}" x4="33">
                    <div class="s_mn_housebox">
                        <div class="s_mn_house_details clear">
                            <div class="house_details_l">
                                <div class="s_mn_house_tit">
                                    <a href="${basePath}/room/${room.roomId}" target="_blank"
                                       class="s_mn_house_t1">${room.roomName}</a>
                                </div>
                                <div class="s_mn_house_introduction">
                                    <p>
                                        <span>${room.roomStructure.bedroomNum}室</span>|<span>${room.rentalMethod.method}</span>|<span>适合住${room.avaliableArea.standPop}人</span>

                                        <a>|</a><span>43 条评论</span></p>
                                    <div class="list_address">
                                        <i class="address_icon"></i>地址：${room.roomLocation}具体地址应在数据库储存护着调用地图api
                                    </div>
                                    <div class="s_mn_house_price2">
                                        <span>￥${room.roomPrice}</span>/晚
                                    </div>
                                    <div class="near_reserve">
                                        近期预订
                                        <span>30 晚</span>
                                    </div>
                                </div>
                                <div class="s_mn_house_information">
                                    <div class="hr"></div>
                                    <dl>
                                        <a href="${basePath}/room/${room.roomId}" target="_blank">
                                            <dd>
                                                <span class="comment_num">43</span>
                                                <p class="comment_icon">评论数</p>
                                            </dd>
                                        </a>
                                    </dl>
                                    <dl>
                                        <a href="${basePath}/room/${room.roomId}" target="_blank">
                                            <dd>
                                                <span class="comment_num">43</span>
                                                <p class="list_recommend">推荐数</p>
                                            </dd>
                                        </a></dl>
                                    <a href="${basePath}/room/${room.roomId}" target="_blank">
                                    </a>
                                    <dl><a href="${basePath}/room/${room.roomId}" target="_blank">
                                    </a><a href="${basePath}/room/${room.roomId}" target="_blank">
                                        <dd>
                                            <span class="comment_num">${room.list?size}张</span>
                                            <p class="list_picnum">房间图片</p>
                                        </dd>
                                    </a></dl>
                                    <a href="${basePath}/room/${room.roomId}" target="_blank">
                                    </a>
                                    <dl><a href="${basePath}/room/${room.roomId}" target="_blank">
                                    </a><a href="javascript:void(0)"
                                           onclick="$(&#39;#getmap&#39;).show();initMap(${room.roomLatitude},${room.roomLongitude},&#39;国贸CBD 近地铁 后现代城-可做饭-唯美文艺风精装两居&#39;,&#39;北京百子湾路后现代城&#39;);"
                                           title="地图" class="s_mn_detailslist_map map_icon">
                                        <dd class="map_wz">
                                            <i class="list_seemap"></i>地图位置
                                        </dd>
                                    </a>
                                    </dl>
                                </div>
                            </div>
                            <!-----列表详情右边---->
                            <div class="house_details_r">
                                <div class="s_mn_landlord_information">
                                    <div class="s_mn_landlordpic2">
                                        <a href="${basePath}/room/${room.roomId}" rel="nofollow"
                                           target="_blank">
                                            <img onerror="javascript: this.src = &#39;//assets.muniao.com/assets/2013/image/pic13.jpg&#39;;"
                                                 src="${staticRoot}/images/${room.landlord.picture}"
                                                 width="24" height="24" title="${room.landlord.userName}">
                                        </a>
                                    </div>
                                    <div class="s_mn_landlordname2">
                                        <a rel="nofollow" href="${basePath}/room/${room.roomId}"
                                           target="_blank">${room.landlord.userName}</a>
                                    </div>

                                    <ul class="landlordmark">
                                        <li style="display: none;">
                                            <i class="shenfen_icon"></i>身份验证<i class="true_icon"></i>
                                        </li>
                                        <li class="list_zhitip" style="position: relative;">
                                            <i class="list_dizhuicon"></i>
                                            <a style="color: #ff998f" target="_blank">地主</a>
                                            <i class="true_icon" style="display: none;"></i>
                                            <div class="list_zhimatip" style="display: none;">
                                                我愿为远道而来的您尽一尽地主之谊，做您在本地的向导，让您出行无忧。
                                            </div>
                                        </li>
                                        <!---->
                                    </ul>
                                </div>
                                <div class="phone-ewm"
                                     style="display:none;text-align :center;padding:15px 0;background: #fff; width:100%; position:absolute;z-index:10;border-top:1px solid #ccc;bottom:40px;">
                                    <img src="${staticRoot}/images/fkappewm.png">
                                    <p class="phone-ewm-info" style="font-size:12px;color:#ff9180;margin:0 22px;">
                                        手机端可电话联系房东还送88元优惠</p>
                                </div>

                                <div class="weblt">
                                    <a class="webim-chatbtn" href="https://www.muniao.com/beijing/#chat@76331"
                                       data-id="76331" data-title="${room.roomName}"
                                       data-image="//assets.muniao.comUploadFiles/thumb/image/20170615/2017061542408369.jpg_414_262.jpg"
                                       data-priceday="580" data-privacy="整租" data-propertytype="公寓"
                                       data-accommodates="宜住5人" rel="nofollow" title="拨打电话"
                                       target="_self">拨打电话<span></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="s_mn_house_images">
                            <div class="s_mn_house_img">
                                <a href="https://www.muniao.com/room/75902.html" target="_blank"
                                   title="${room.roomName}"><img
                                        onerror="javascript: this.src = &#39;//assets.muniao.com/assets2/pc/Content/images/muniao_logo.jpg&#39;;"
                                        src="${staticRoot}/images/${room.lsit[1]}"
                                        width="414" height="262" alt="${room.roomName}"></a>
                                <span class="smfy_icon"></span>
                            </div>
                            <a href="javascript:void(0)" data-id="75902" class="s_mn_house_like like_icon2 colle_list"
                               id="favorite_75902">收藏</a>
                            <div class="list_score">
                                <div class="score_bg"></div>
                                <div class="tmc">
                                    <span>
                                        4.9
                                    </span> /评分
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </#list>
            </ul>
            <div class="page_city">
                <a href="https://www.muniao.com/beijing/" target="_blank">北京短租房</a>-找到相关房源34720个，每页30个结果
            </div>
            <div class="s_mn_page_bar">

                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/0/0/0" title="第一页" target="_self">第一页</a>


                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/1/0/0/0/0"
                   style="background:#ff6c5c;color:#fff;border:1px solid #e46355;" title="1" target="_self">1</a>
                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/2/0/0/0/0" title="2" rel="nofollow"
                   target="_self">2</a>
                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/3/0/0/0/0" title="3" rel="nofollow"
                   target="_self">3</a>
                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/4/0/0/0/0" title="4" rel="nofollow"
                   target="_self">4</a>
                <a href="https://www.muniao.com/beijing/null-0-0-0-0-0-0-0-2.html" title="2" rel="nofollow"
                   target="_self"> 下一页 </a>
                <a href="${basePath}/cityTitle/${roomList[1].roomLocation}/${roomList?size}/0/0/0/0" rel="nofollow" title="10"
                   target="_self" class="Lpage_li1">最后一页</a>
            </div>
            <hr>
        </div>
        <div class="s_mn_sidebar">
            <div class="w_listbz"
                 style="width: 234px;  height: 288px;  background-color: #fff;  border-bottom: 1px solid #ddd;">
                <div class="w_listbzicon"><a rel="nofollow" href="http://www.muniao.com/supportplan.html"
                                             target="_blank"><img
                        src="${staticRoot}/images/bz_bigicon.jpg"></a></div>
                <ul id="w_listbzul" class="w_listbzul f14">
                    <li>
                        <span>房源100%实地验证</span>
                        <div class="w_listbztip f12" style="display:none;">
                            1)我们的每一个房东，每一间房间都是有木鸟员工实地考察收集而来。
                            <br>
                            2）我们每一个房东都经过公安身份验证系统进行真实身份验证。<br>
                            3）我们的每一间房间图片都是真实拍摄 不加任何修饰，您看到的就是您将要入住的。
                        </div>
                    </li>
                    <li>
                        <span>付款到木鸟 资金有保障</span>
                        <div class="w_listbztip f12" style="display:none;">
                            1）在木鸟短租任何平台预定的房间，房款都是有木鸟短租代为保管，当您入住结束满意后房款才会转给房东。<br>
                            2）假如您在入住过程中遇到任何不满意，木鸟短租将全力帮您解决问题。
                        </div>
                    </li>
                    <li>
                        <span>保障入住人身安全</span>
                        <div class="w_listbztip f12" style="display:none;">
                            1）木鸟短租上线以来已经接待了无数的房客，从来没有遇到人身意外。即使如此，我们仍然理解您对住进一个陌生人家中的担忧，并为此做了大量工作来保障您的整个交易和入住安全。<br>
                            2）您在木鸟短租pc端、app产生的订单我们将免费赠送您一份保险，保障您在入住过程中的人身安全。入住人数较多时，建议您自行为其购买住宿意外险。
                        </div>
                    </li>
                    <li>
                        <span>地主之谊出行无忧</span>
                        <div class="w_listbztip f12" style="display:none;">
                            我们的房东大都是不折不扣的当地人，他们愿为远道而来的您尽一尽地主之谊。<br>
                            1）房东会告诉您当地哪里是最好玩的，让您能够真正的体验到旅行社所不能给的当地旅游景点及自然景观。<br>
                            2）房东会告诉您去哪里吃能吃到当地的特色美食，哪怕是胡同里的一个小摊位，他还会告诉您哪里的美食价格合理不会被宰，有他拒绝宰客。<br>
                            3）房东会告诉您出行的最佳路线，不走冤枉路，不打黑车，用最优线路游最美的风景。
                        </div>
                    </li>
                </ul>
            </div>
            <ul class="roomList-newAdd">
                <li><img src="${staticRoot}/images/list_safeIcon.png" alt="安全">10万出行意外险<br>身份证信息互联网核查
                </li>
                <li><img src="${staticRoot}/images/list_serverIcon.png" alt="服务">2623位试睡体验师<br>50万房源实拍验真
                </li>
                <li class="roomList-newAdd-last"><img src="${staticRoot}/images/list_clearIcon.png"
                                                      alt="卫生">被单每客一换（高品质洗漱用品）/酒店及保洁
                </li>
            </ul>

            <div class="w_list_Rtitle">
                <div class="s_mn_t1">推荐房源</div>
            </div>
            <div class="s_mn_recommended_house">
                <a href="https://www.muniao.com/room/173858.html" title="地铁4号线公益西桥阳光充足大飘窗" target="_blank"
                   class="s_mn_rec_house" data-id="173858">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/cdfbfb1de8c7497883025d2890d3444b20180326090138624.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥280/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">地铁4号线公益西桥阳光充足大飘窗</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">3室</span>|<span
                                class="s_mn_house_area">单间出租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/202208.html" title="J1远洋/国贸/CBD/金台路、大望路地铁主卧高速wifi" target="_blank"
                   class="s_mn_rec_house" data-id="202208">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/78129e5d27d5477e9a619508472e6bd320180606233320310.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥188/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">J1远洋/国贸/CBD/金台路、大望路地铁主卧高速wifi</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">3室</span>|<span
                                class="s_mn_house_area">单间出租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/198504.html" title="北京南站洋桥天安门10号线阳光三居在一起" target="_blank"
                   class="s_mn_rec_house" data-id="198504">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/276a0b236641452788d77842e34545e520180531231259172.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥828/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">北京南站洋桥天安门10号线阳光三居在一起</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">3室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住8人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/202213.html" title="J3远洋/国贸/CBD/金台路、大望路地铁次卧高速wifi" target="_blank"
                   class="s_mn_rec_house" data-id="202213">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/ebfebb2fc02f4699950d3965a34fea9120180606235853814.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥168/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">J3远洋/国贸/CBD/金台路、大望路地铁次卧高速wifi</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">3室</span>|<span
                                class="s_mn_house_area">单间出租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/202211.html" title="J2【双床房】远洋/国贸/CBD/大望路地铁高速wifi" target="_blank"
                   class="s_mn_rec_house" data-id="202211">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/1503e9df98c64789b65750fb605a3c6320180606234253895.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥228/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">J2【双床房】远洋/国贸/CBD/大望路地铁高速wifi</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">2室</span>|<span
                                class="s_mn_house_area">单间出租</span>|<span class="s_mn_house_area">可住4人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/172517.html" title="CBD商圈轻奢STUDIO步行两分钟到地铁" target="_blank"
                   class="s_mn_rec_house" data-id="172517">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/c90ddf53e06e440094b8b2816e9e3d5220180321085937016.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥368/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">CBD商圈轻奢STUDIO步行两分钟到地铁</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">1室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/194464.html" title="传媒大学CBD国贸复式水景文艺两居" target="_blank"
                   class="s_mn_rec_house" data-id="194464">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/2b1291a89aad400ba1d7dc7b3395963b20180515141501817.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥568/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">传媒大学CBD国贸复式水景文艺两居</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">2室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住4人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/179664.html" title="北京南站西单天安门地铁4号线四环民宿" target="_blank"
                   class="s_mn_rec_house" data-id="179664">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/b82abba5c91e4bd29ded0cb1de403b7c20180411162312045.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥268/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">北京南站西单天安门地铁4号线四环民宿</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">1室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/168880.html" title="天坛/前门/天安门/桥湾地铁欧式圆床房一居室" target="_blank"
                   class="s_mn_rec_house" data-id="168880">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/43f776b07902412e96c081d4672b0dd920180307155651297.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥403/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">天坛/前门/天安门/桥湾地铁欧式圆床房一居室</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">1室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住2人</span></div>
                    </div>
                </a>
                <a href="https://www.muniao.com/room/202214.html" title="初见黎戈.近地铁站北京南站陶然亭公园温馨大床整租" target="_blank"
                   class="s_mn_rec_house" data-id="202214">
                    <div class="s_mn_rec_house_pic">
                        <img src="${staticRoot}/images/c18772b401a74d7a8269b38c3fa68a6820180606234952479.jpg_275_173.jpg"
                             width="209" height="131">
                        <div class="reco_house_price">
                            <span>￥399/晚</span>
                            <div class="score_bg"></div>
                        </div>
                    </div>
                    <div class="s_mn_rec_housetext">
                        <div class="s_mn_rec_housetitle">初见黎戈.近地铁站北京南站陶然亭公园温馨大床整租</div>
                        <div class="s_mn_rec_houseintroduce"><span class="s_mn_house_area">1室</span>|<span
                                class="s_mn_house_area">整租</span>|<span class="s_mn_house_area">可住5人</span></div>
                    </div>
                </a>
            </div>
            <div class="s_mn_ad_erweima">
                <div class="s_mn_title" style="display:none;">
                    <div class="s_mn_t1">
                        移动客户端下载
                    </div>
                </div>
                <div class="s_mn_ewm" style="display:none;">
                    <div class="s_mn_smxz"><img src="${staticRoot}/images/smxz.jpg"></div>
                </div>
                <div class="s_mn_ewm">
                    <div class="s_mn_smxz"><img src="${staticRoot}/images/smgz.jpg"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="s_mn_recommended_bottom">
        <div class="s_mn_center2">
            <div class="s_mn_title">
                <div class="s_mn_t1">最近浏览记录</div>
                <ul class="s_mn_li_nav">
                    <!--
                      <li><a href="#" class="s_mn_li_nav_a">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>-->
                </ul>
            </div>
            <ul class="s_mn_rec_bottom">
                <li style="display: block;">
                    <div class="s_mn_module3x" data-i="0" data-id="202208">
                        <div class="s_mn_place3">
                            <div class="s_mn_housingbox3">
                                <div class="s_mn_housing_img3"><a href="https://www.muniao.com/room/202208.html"
                                                                  target="_blank" title="J1远洋/国贸/CBD/..."><img
                                        src="${staticRoot}/images/78129e5d27d5477e9a619508472e6bd320180606233320310.jpg_275_173.jpg"
                                        width="380" height="432" alt="J1远洋/国贸/CBD/..."></a>
                                    <!--<span class="s_mn_housing_likes">&nbsp;</span>--><span
                                            class="s_mn_housing_price">￥188</span></div>
                                <div class="s_mn_housing_textbox3">
                                    <div class="s_mn_housing_title3">
                                        <a href="https://www.muniao.com/room/202208.html" target="_blank"
                                           title="J1远洋/国贸/CBD/...">J1远洋/国贸/CBD/...</a>
                                    </div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京&nbsp;-&nbsp;朝阳区</span>
                                        <span class="s_mn_house_price">￥188/晚</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="s_mn_module3x" data-i="0" data-id="173858">
                        <div class="s_mn_place3">
                            <div class="s_mn_housingbox3">
                                <div class="s_mn_housing_img3"><a href="https://www.muniao.com/room/173858.html"
                                                                  target="_blank" title="地铁4号线公益西桥阳光充..."><img
                                        src="${staticRoot}/images/cdfbfb1de8c7497883025d2890d3444b20180326090138624.jpg_275_173.jpg"
                                        width="380" height="432" alt="地铁4号线公益西桥阳光充..."></a>
                                    <!--<span class="s_mn_housing_likes">&nbsp;</span>--><span
                                            class="s_mn_housing_price">￥280</span></div>
                                <div class="s_mn_housing_textbox3">
                                    <div class="s_mn_housing_title3">
                                        <a href="https://www.muniao.com/room/173858.html" target="_blank"
                                           title="地铁4号线公益西桥阳光充...">地铁4号线公益西桥阳光充...</a>
                                    </div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京&nbsp;-&nbsp;丰台区</span>
                                        <span class="s_mn_house_price">￥280/晚</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="s_mn_module3x" data-i="0" data-id="202213">
                        <div class="s_mn_place3">
                            <div class="s_mn_housingbox3">
                                <div class="s_mn_housing_img3"><a href="https://www.muniao.com/room/202213.html"
                                                                  target="_blank" title="J3远洋/国贸/CBD/..."><img
                                        src="${staticRoot}/images/ebfebb2fc02f4699950d3965a34fea9120180606235853814.jpg_275_173.jpg"
                                        width="380" height="432" alt="J3远洋/国贸/CBD/..."></a>
                                    <!--<span class="s_mn_housing_likes">&nbsp;</span>--><span
                                            class="s_mn_housing_price">￥168</span></div>
                                <div class="s_mn_housing_textbox3">
                                    <div class="s_mn_housing_title3">
                                        <a href="https://www.muniao.com/room/202213.html" target="_blank"
                                           title="J3远洋/国贸/CBD/...">J3远洋/国贸/CBD/...</a>
                                    </div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京&nbsp;-&nbsp;朝阳区</span>
                                        <span class="s_mn_house_price">￥168/晚</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="s_mn_module3x" data-i="0" data-id="168880">
                        <div class="s_mn_place3">
                            <div class="s_mn_housingbox3">
                                <div class="s_mn_housing_img3"><a href="https://www.muniao.com/room/168880.html"
                                                                  target="_blank" title="天坛/前门/天安门/桥湾..."><img
                                        src="${staticRoot}/images/43f776b07902412e96c081d4672b0dd920180307155651297.jpg_275_173.jpg"
                                        width="380" height="432" alt="天坛/前门/天安门/桥湾..."></a>
                                    <!--<span class="s_mn_housing_likes">&nbsp;</span>--><span
                                            class="s_mn_housing_price">￥403</span></div>
                                <div class="s_mn_housing_textbox3">
                                    <div class="s_mn_housing_title3">
                                        <a href="https://www.muniao.com/room/168880.html" target="_blank"
                                           title="天坛/前门/天安门/桥湾...">天坛/前门/天安门/桥湾...</a>
                                    </div>
                                    <div class="s_mn_lates_houseintroduce"><span class="s_mn_house_area">北京&nbsp;-&nbsp;东城区</span>
                                        <span class="s_mn_house_price">￥403/晚</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>

    </div>
</div>

<script type="text/javascript">
    document.write(unescape("%3Cscript src='https://api.map.baidu.com/api?v=2.0&ak=B8b89fc728345142f220bad603de3515' type='text/javascript'%3E%3C/script%3E"));
    document.write(unescape("%3Clink%20rel%3D%22stylesheet%22%20href%3D%22https%3A//cache.amap.com/lbs/static/main.css%3Fv%3D1.0%22/%3E"));
    //document.write(unescape("%3Cscript type%3D%22text%2Fjavascript%22 src%3D%22http%3A%2F%2Fwebapi.amap.com%2Fmaps%3Fv%3D1.3%26key%3Df346c39185247446f13adfa96bf7bf61%22%3E%3C%2Fscript%3E"));
    document.write(unescape("%3Cscript%20type%3D%22text/javascript%22%20src%3D%22https%3A//webapi.amap.com/maps%3Fv%3D1.3%26key%3Dd038a3bb9b8de41538973a7904eb7686%22%3E%3C/script%3E"));
</script>
<script src="${staticRoot}/images/api" type="text/javascript"></script>
<script type="text/javascript" src="${staticRoot}/images/getscript"></script>
<link rel="stylesheet" href="${staticRoot}/images/main.css">
<script type="text/javascript" src="${staticRoot}/images/maps"></script>

<link href="${staticRoot}/images/w_style.css" rel="stylesheet" type="text/css">

<!-- 代码部分begin -->
<script type="text/javascript">
    //document.write(unescape("%3Cscript src='http://webim3.muniao.com/webim2/?action=boot' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- 20160224 add/chen -->

<!-- 20160224 end -->
<div style="display:none;">
    <script type="text/javascript">
        var _mvq = window._mvq || [];
        window._mvq = _mvq;
        _mvq.push(['$setAccount', 'm-104553-0']);
        //_mvq.push(['$setGeneral', '', '', /*用户名*/ '', /*用户id*/ '']);//如果不传用户名、用户id，此句可以删掉
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

</div>

<!---侧边栏-->
<div class="sidebar">
    <div class="index_consul">
        <div id="BDBridgeFixedWrap"></div>
    </div>
    <ul>
        <li class="silder_hide">
            <a href="https://cschat.cloud.alipay.com/pcportal.htm?tntInstId=EZKNWDCN&amp;scene=SCE00001040"
               target="_blank">
                <img style="margin-top: 5px;" src="${staticRoot}/images/mumu.png" title="咨询客服">
            </a>
            <div class="link-tips" style="display: none;">在<br>线<br>客<br>服</div>
        </li>
        <li class="side_order">
            <a class="side_click" href="http://user2.muniao.com/order/index" target="_blank"></a>
            <div class="tenant_tip">
                <h3>我的订单</h3>
                <p>查看您的近期订单</p>
                <a href="http://user2.muniao.com/order/index" target="_blank">点击查看</a>
            </div>
        </li>
        <li class="tenant_f">
            <a class="side_click"
               href="http://shang.qq.com/wpa/qunwpa?idkey=0c3a7d35ed933d97739d5420d5fa31dd01ade1ed1649949a840d32fa58073edf"
               target="_blank"></a>
            <div class="tenant_tip">
                <h3>意见反馈群</h3>
                <p>官方问题反馈群，为您排忧解难，欢迎您的加入</p>
                <a href="http://shang.qq.com/wpa/qunwpa?idkey=0c3a7d35ed933d97739d5420d5fa31dd01ade1ed1649949a840d32fa58073edf"
                   target="_blank">点击加入</a>
            </div>
        </li>
        <li class="opinion_f">
            <a class="side_click" href="http://www.muniao.com/Home/Feedback" target="_blank"></a>
            <div class="tenant_tip">
                <h3>问题反馈</h3>
                <p>请将您的问题告诉我们，<br>我们将更好的为您服务。</p>
                <a href="http://www.muniao.com/Home/Feedback" target="_blank">点击反馈</a>
            </div>
        </li>
    </ul>
    <div class="backTop" style="display: block;"><a href="javascript:;"></a></div>
</div>

<script>
    (function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 300) {
                $(".backTop").show();
            } else {
                $(".backTop").hide();
            }
            ;
        });
        var timer = null;
        $(".backTop").click(function () {
            $('html,body').animate({scrollTop: 0}, 300);
        });
        $(".sidebar li").each(function (a, b) {
            $(b).on("mouseover", function () {
                $(b).children("div").show();
                $(b).siblings().children("div").hide();
                clearInterval(timer);
            });
            $(b).on("mouseout", function () {
                timer = setTimeout(function () {
                    $(b).children("div").hide();
                }, 1000);
            });
        });
        /*var icur = true;
        $(".silder_hide").click(function(){
         if(icur){
          $(".silder_hide").html('<img style="margin-top: 5px;" src="//assets.muniao.com/assets/2015/images/mumu.png" title="咨询客服"/>')
          $('#BDBridgeFixedWrap').animate({
           "top":167
           },300)
          setTimeout(function(){
           $('.index_consul').hide()
           },300)
          icur = false;
         }else{
          $(".silder_hide").html("隐藏木木")
          $('.index_consul').show()
          setTimeout(function(){
           $('#BDBridgeFixedWrap').animate({
           "top":0
           },300)
          },10)
          icur = true;
         }
        })*/
        $(".side_see_order,.tenant_tip").on("mouseover", function () {
            clearInterval(timer);
            $(this).children("div").show();
        });

        /*
        */
    })()
</script>
<!--1482227370-->
<div id="amap_container" style="display: none; position: relative; background: rgb(252, 249, 242);"
     class="amap-container">
    <object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
            type="text/html" data="about:blank"></object>
    <div class="amap-maps">
        <div class="amap-drags" style="">
            <div class="amap-layers" style="transform: translateZ(0px);">
                <div class="amap-markers" style="position: absolute; z-index: 120; top: 0px; left: 0px;"></div>
                <canvas class="amap-labels" draggable="false" width="0" height="0"
                        style="position: absolute; z-index: 99; height: 0px; width: 0px; top: 0px; left: 0px;"></canvas>
            </div>
            <div class="amap-overlays" style=""></div>
        </div>
    </div>
    <div style="display: none;"></div>
    <div class="amap-controls"></div>
    <a class="amap-logo" href="http://gaode.com/" target="_blank"><img
            src="${staticRoot}/images/mapinfo_05.png"></a>
    <div class="amap-copyright" style="display: none;"><!--v1.3.28--> © 2018 AutoNavi <span class="amap-mcode">- GS(2018)1709号</span>
    </div>
</div>
<div id="baidumap_container"
     style="display: none; overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;">
    <div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;https://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default;">
        <div class="BMap_mask"
             style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 0px; height: 0px;"></div>
        <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label
                    class="BMapLabel" unselectable="on"
                    style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label>
            </div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div>
            <div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div>
        </div>
        <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;">
            <div style="position: absolute; overflow: visible; z-index: -100; left: 0px; top: 0px; display: block; transform: translate3d(0px, 0px, 0px);">
                <img src="${staticRoot}/images/saved_resource"
                     style="position: absolute; border: none; width: 256px; height: 256px; left: -248px; top: -123px; max-width: none; opacity: 1;">
            </div>
        </div>
        <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;">
            <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div>
            <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div>
        </div>
        <div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div>
    </div>
    <div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div>
    <a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span
            style="float:right;margin-right:12px;">出口</span></a>
    <div class=" anchorBL"
         style="height: 32px; position: absolute; z-index: 30; text-size-adjust: none; bottom: 20px; right: auto; top: auto; left: 1px; display: none;">
        <a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img
                style="border:none;width:77px;height:32px"
                src="${staticRoot}/images/copyright_logo.png"></a></div>
    <div id="zoomer"
         style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(https://api.map.baidu.com/images/openhand.cur) 8 8,default">
        <div class="BMap_zoomer" style="top:0;left:0;"></div>
        <div class="BMap_zoomer" style="top:0;right:0;"></div>
        <div class="BMap_zoomer" style="bottom:0;left:0;"></div>
        <div class="BMap_zoomer" style="bottom:0;right:0;"></div>
    </div>
    <div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL"
         style="cursor: default; white-space: nowrap; color: black; background: none; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 4px; position: absolute; z-index: 10; text-size-adjust: none;">
        <span _cid="1" style="display: inline;"><span
                style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2018 Baidu - GS(2016)2089号 - 甲测资字1100930 - 京ICP证030173号 - Data © 长地万方</span></span>
    </div>
</div>
<div id="getMap" class="getMap" style="display:none;"><a href="javascript:void(0);" id="getMap_x" class="aBlue">关闭窗口</a><br>
    <iframe name="getMap_if" id="getMap_if" width="677" height="370"
            src="${staticRoot}/images/saved_resource.html" frameborder="0" scrolling="no"></iframe>
</div>

<!---有礼相送-->
<div class="downapp-layer" style="display: block;">
    <div class="left_down" style="left: 0px;">
        <img src="${staticRoot}/images/left_down_bot.png" alt="有礼相送">
    </div>
    <div class="down_app" style="left: -1263px;">
        <div class="down_app_bg"></div>
        <div class="down_app_c">
            <!--<img src="//assets.muniao.com/assets2/2015/images/down_app.png?2016/08/30" alt="点击下载">-->
            <div class="down_app_left">
                <img src="${staticRoot}/images/newdownapp.png" alt="点击下载">
            </div>
            <div class="down_app_right">
                <div class="appewm">
                    <img src="${staticRoot}/images/fkappewm.png" alt="下载app二维码">
                </div>
                <div class="androidios">
                    <h4>扫描下载APP</h4>
                    <a id="downbtn1" class="downapp_bottom" href="javascript:;">IOS下载</a>
                    <a id="downbtn2" class="downapp_bottom" href="javascript:;">Android下载</a>
                </div>
            </div>
            <a class="close_down" href="javascript:;">
                <img src="${staticRoot}/images/close_down.png" alt="点击关闭">
            </a>
        </div>
    </div>
</div>
<style>
    .down_app {
        background: transparent;
        opacity: 1;
    }

    .down_app_bg {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: #000;
        opacity: 0.7;
        -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
        filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
    }

    .down_app_left {
        position: absolute;
        left: -40px;
        top: -117px;
        z-index: 1;
    }

    .down_app_right {
        position: absolute;
        right: -15px;
        top: -10px;
        width: 375px;
        height: 168px;
        background: #11172e;
        z-index: 1;
    }

    .appewm {
        float: left;
        margin: 26px 43px;
    }

    .appewm img {
        width: 116px;
    }

    .androidios {
        float: left;
    }

    .androidios h4 {
        font-size: 20px;
        color: #FFFFFF;
        margin: 25px 0px 14px;
    }

    .downapp_bottom {
        display: block;
        width: 110px;
        height: 28px;
        -webkit-border-radius: 14px;
        -moz-border-radius: 14px;
        border-radius: 14px;
        border: 1px solid #FFFFFF;
        color: #FFFFFF;
        text-align: center;
        line-height: 28px;
        margin-top: 10px;
    }
</style>
<script>
    $(".down_app").css({"left": 0});
    $(".left_down").css({"left": "-120px"})
    downapp();
    $(window).scroll(function () {
        downapp()
    })

    function downapp() {
        var t = $(this).scrollTop();
        if (t > 400) {
            $(".downapp-layer").show();
        } else {
            $(".downapp-layer").hide();
        }
    }

    $(".left_down").click(function () {
        $(this).animate({
            "left": "-120px"
        }, 300);
        setTimeout(function () {
            $(".down_app").animate({
                "left": 0
            }, 500)
        }, 400);
    });
    $(".close_down").click(function () {
        S.Cookie("Bsksdjd", "down_app");
        $(".down_app").animate({
            "left": -$(window).width()
        }, 500);
        setTimeout(function () {
            $(".left_down").animate({
                "left": "0"
            }, 300)
        }, 500);
    });
    S("downbtn2").on("click", function () {
        var url = "http://appapi.muniao.com/server/iuiue/?os=apk";
        try {
            window.open(url);
        }
        catch (e) {
            window.location.href = url;
        }
    });
    S("downbtn1").on("click", function () {
        var url = "http://appapi.muniao.com/server/iuiue/?os=ios";
        try {
            window.open(url);
        }
        catch (e) {
            window.location.href = url;
        }
    });
    (function () {
        if (S.Cookie("start%5Fdate%5Fu")) {
            S("start_date").val(S.Cookie("start%5Fdate%5Fu"));
        }
        if (S.Cookie("end%5Fdate%5Fu")) {
            S("end_date").val(S.Cookie("end%5Fdate%5Fu"));
        }
        $(".left_down").click(function () {
            $(".network").animate({
                "left": "-300px"
            }, 300);
        });
        $(".close_down").click(function () {
            $(".network").animate({
                "left": "0"
            }, 300);
        });
        $(".close_aq").click(function () {
            $(".network").hide();
        });
    })();
</script>

<!--引用百度地图start-->
<script type="text/javascript" src="${staticRoot}/images/api"></script>
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
        var map = new BMap.Map("roommap", {enableSendToPhone: false, enableMapClick: false}); //在百度地图容器中创建一个地图
        var point = new BMap.Point(lat, lng); //定义一个中心点坐标
        map.centerAndZoom(point, 15); //设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; //将map变量存储在全局


        //向地图添加标注
        var bounds = map.getBounds();
        var point = new BMap.Point(lat, lng);
        var marker = new BMap.Marker(point);
        var label = new BMap.Label(address, {
            "offset": new BMap.Size(9, -15),
            enableSendToPhone: false,
            enableMapClick: false
        });
        marker.setLabel(label);
        map.addOverlay(marker);
        marker.addEventListener("click", function () {
            this.openInfoWindow(new BMap.InfoWindow(title, opts));
        });

    }

    // 编写自定义函数,创建标注
    function addMarker(point, index) {
        var myIcon = new BMap.Icon("http://api.map.baidu.com/img/markers.png", new BMap.Size(23, 25), {
            offset: new BMap.Size(10, 25),				  // 指定定位位置
            imageOffset: new BMap.Size(0, 0 - index * 25)   // 设置图片偏移
        });
        var marker = new BMap.Marker(point, {icon: myIcon});
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
        var ctrl_nav = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        //ar ctrl_ove = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 });
        //map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        //ar ctrl_sca = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
        //map.addControl(ctrl_sca);
    }
</script>
<style>
    #getmap {
        display: none;
        border-radius: 5px;
        box-shadow: 1px 2px 9px rgba(0, 0, 0, 0.55);
        background: #FFF;
        border: 1px solid #dedede;
        z-index: 999;
        text-align: right;
        left: 50%;
        top: 50%;
        margin-left: -350px !important;
        margin-top: -200px !important;
        position: fixed !important;
        position: absolute;
        _top: expression(eval(document.compatMode &&document.compatMode=='CSS1Compat') ?documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 : /*IE6*/ document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2);
    }

    #roommap {
        float: left;
        margin: 0 auto;
        width: 677px;
        height: 360px;
        overflow: hidden;
        z-index: 0;
        background-color: rgb(243, 241, 236);
        color: rgb(0, 0, 0);
    }
</style>
<div id="getmap">
    <div style="cursor:pointer;" onclick="$(&#39;#getmap&#39;).hide();map.clearOverlays();">关闭</div>
    <div id="roommap"></div>
</div>
<!--引用百度地图end-->


<style>
    .s_mn_hotdibiao {
        overflow: hidden;
        padding: 0 50px 0 147px;
    }
</style>
<link href="${staticRoot}/images/w_style(1).css" rel="stylesheet" type="text/css">
<div class="w_footerbox" id="s_mn_footerbox">
    <!--底部微博微信begin-->
    <div class="w_footer_contactbox">
        <div class="w_footer_weibo"><a href="http://weibo.com/rizupingtai" rel="nofollow" target="_blank"></a></div>
        <div class="w_footer_weixin">
            <a id="w_footer_weixin" style="cursor: pointer;"></a>
            <div class="w_footer_ewm" id="w_footer_ewm" style="display:none;"><img
                    src="${staticRoot}/images/footer_ewm.png"></div>
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
        <div style="color:#555;clear:both;">
            <span style="float:left;width:141px;display:block;">北京短租房信息：</span>
            <span style="float:left;width:1000px;display:block;">找北京短租房，木鸟短租为您提供了北京短租房预订、实时短租房价格、便宜短租房预定以及北京住宿推荐，精选了34720套北京短租房、短租公寓、家庭旅馆、普通民宅、旅馆/宾馆、别墅等供您选择，网上预定北京短租房还可享受一定优惠，且比酒店便宜将近50%。不管您是资深驴友还是出差人士建议您提前选择预定心仪的性价比高的短租房。北京短租房预定，选择木鸟短租。</span>
            <br style="clear:both;">
        </div>
        <!-- **按位置找短租房-->

        <!-- **热门房源类型-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                                        <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-1-0-0-0-1.html"
                                                       title="北京民居">
                                                        北京民居
                                                    </a>
                                        </span> <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-2-0-0-0-1.html"
                                                       title="北京客栈">
                                                        北京客栈
                                                    </a>
                                        </span> <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-4-0-0-0-1.html"
                                                       title="北京公寓">
                                                        北京公寓
                                                    </a>
                                        </span> <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-7-0-0-0-1.html"
                                                       title="北京独栋别墅">
                                                        北京独栋别墅
                                                    </a>
                                        </span> <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-9-0-0-0-1.html"
                                                       title="北京四合院">
                                                        北京四合院
                                                    </a>
                                        </span> <span class="w_listspan3 w_listspan3_foot">
                                                    <a href="https://www.muniao.com/beijing/null-0-0-0-12-0-0-0-1.html"
                                                       title="北京农家院">
                                                        北京农家院
                                                    </a>
                                        </span>

                </div>
            </div>
            <div class="s_mn_footercity_tit" title="北京热门房源类型：">北京热门房源类型：</div>
            <div style="display: block;" class="s_mn_footercity_more"></div>
        </li>
        <!-- **主题特色短租房-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="https://www.muniao.com/features_housing_beijing_1.html" target="_blank"
                       title="北京别墅 ">北京别墅 </a>
                    <a href="https://www.muniao.com/features_housing_beijing_2.html" target="_blank"
                       title="北京情侣房">北京情侣房</a>
                    <a href="https://www.muniao.com/features_housing_beijing_4.html" target="_blank"
                       title="北京木屋">北京木屋</a>
                    <a href="https://www.muniao.com/features_housing_beijing_5.html" target="_blank" title="北京主题特色">北京主题特色</a>
                    <a href="https://www.muniao.com/features_housing_beijing_6.html" target="_blank"
                       title="北京四合院">北京四合院</a>
                    <a href="https://www.muniao.com/features_housing_beijing_8.html" target="_blank"
                       title="北京复式">北京复式</a>
                    <a href="https://www.muniao.com/features_housing_beijing_12.html" target="_blank" title="北京家庭公寓">北京家庭公寓</a>

                </div>
            </div>
            <div class="s_mn_footercity_tit" title="北京主题特色短租房：">北京主题特色短租房：</div>
            <div style="display: block;" class="s_mn_footercity_more"></div>
            <!--热门短租-->
        </li>
        <!--热门短租-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="https://www.muniao.com/beijing/" title="北京短租" target="_blank">北京短租房</a><a
                        href="https://www.muniao.com/shanghai/" title="上海短租" target="_blank">上海短租</a><a
                        href="https://www.muniao.com/chongqing/" title="重庆短租" target="_blank">重庆短租房</a><a
                        href="https://www.muniao.com/tianjin/" title="天津短租" target="_blank">天津短租房</a><a
                        href="https://www.muniao.com/qingdao/" title="青岛短租" target="_blank">青岛短租房</a><a
                        href="https://www.muniao.com/qinhuangdao/" title="秦皇岛短租" target="_blank">秦皇岛短租房</a><a
                        href="https://www.muniao.com/sanya/" title="三亚短租" target="_blank">三亚短租房</a><a
                        href="https://www.muniao.com/dalian/" title="大连短租" target="_blank">大连短租房</a><a
                        href="https://www.muniao.com/weihai/" title="威海短租" target="_blank">威海短租房</a><a
                        href="https://www.muniao.com/rizhao/" title="日照短租" target="_blank">日照短租房</a><a
                        href="https://www.muniao.com/yantai/" title="烟台短租" target="_blank">烟台短租房</a><a
                        href="https://www.muniao.com/xiamen/" title="厦门短租" target="_blank">厦门短租房</a><a
                        href="https://www.muniao.com/chengde/" title="承德短租" target="_blank">承德短租房</a><a
                        href="https://www.muniao.com/dali/" title="大理短租" target="_blank">大理短租房</a><a
                        href="https://www.muniao.com/beihai/" title="北海短租" target="_blank">北海短租房</a><a
                        href="https://www.muniao.com/shenzhen/" title="深圳短租" target="_blank">深圳短租房</a><a
                        href="https://www.muniao.com/shenyang/" title="沈阳短租" target="_blank">沈阳短租房</a><a
                        href="https://www.muniao.com/chengdu/" title="成都短租" target="_blank">成都短租房</a><a
                        href="https://www.muniao.com/suzhou/" title="苏州短租" target="_blank">苏州短租房</a><a
                        href="https://www.muniao.com/hangzhou/" title="杭州短租" target="_blank">杭州短租房</a><a
                        href="https://www.muniao.com/xian/" title="西安短租" target="_blank">西安短租房</a><a
                        href="https://www.muniao.com/guangzhou/" title="广州短租" target="_blank">广州短租房</a><a
                        href="https://www.muniao.com/changsha/" title="长沙短租" target="_blank">长沙短租房</a><a
                        href="https://www.muniao.com/kunming/" title="昆明短租" target="_blank">昆明短租房</a><a
                        href="https://www.muniao.com/nanjing/" title="南京短租" target="_blank">南京短租房</a><a
                        href="https://www.muniao.com/wuhan/" title="武汉短租" target="_blank">武汉短租房</a><a
                        href="https://www.muniao.com/zhengzhou/" title="郑州短租" target="_blank">郑州短租房</a><a
                        href="https://www.muniao.com/shijiazhuang/" title="石家庄短租" target="_blank">石家庄短租房</a><a
                        href="https://www.muniao.com/wuxi/" title="无锡短租" target="_blank">无锡短租房</a><a
                        href="https://www.muniao.com/haerbin/" title="哈尔滨短租" target="_blank">哈尔滨短租房</a><a
                        href="https://www.muniao.com/nanchang/" title="南昌短租" target="_blank">南昌短租房</a><a
                        href="https://www.muniao.com/haikou/" title="海口短租" target="_blank">海口短租房</a><a
                        href="https://www.muniao.com/huangshan/" title="黄山短租" target="_blank">黄山短租房</a><a
                        href="https://www.muniao.com/zhuhai/" title="珠海日租房" target="_blank">珠海日租房</a><a
                        href="https://www.muniao.com/ningbo/" title="宁波日租房" target="_blank">宁波日租房</a><a
                        href="https://www.muniao.com/changchun/" title="长春日租房" target="_blank">长春日租房</a><a
                        href="https://www.muniao.com/yangzhou/" title="扬州日租房" target="_blank">扬州日租房</a><a
                        href="https://www.muniao.com/tangshan/" title="唐山日租房" target="_blank">唐山日租房</a><a
                        href="https://www.muniao.com/huludao/" title="葫芦岛日租房" target="_blank">葫芦岛日租房</a><a
                        href="https://www.muniao.com/taian/" title="泰安日租房" target="_blank">泰安日租房</a><a
                        href="https://www.muniao.com/guiyang/" title="贵阳短租公寓" target="_blank">贵阳短租公寓</a><a
                        href="https://www.muniao.com/guilin/" title="桂林日租房" target="_blank">桂林日租房</a><a
                        href="https://www.muniao.com/xiangxi/" title="湘西日租房" target="_blank">湘西日租房</a><a
                        href="https://www.muniao.com/hefei/" title="合肥日租房" target="_blank">合肥日租房</a><a
                        href="https://www.muniao.com/jinzhong/" title="晋中日租房" target="_blank">晋中日租房</a><a
                        href="https://www.muniao.com/xining/" title="西宁日租房" target="_blank">西宁日租房</a><a
                        href="https://www.muniao.com/fuzhou/" title="福州日租房" target="_blank">福州日租房</a><a
                        href="https://www.muniao.com/baoding/" title="保定日租房" target="_blank">保定日租房</a><a
                        href="https://www.muniao.com/zhoushan/" title="舟山日租房" target="_blank">舟山日租房</a><a
                        href="https://www.muniao.com/dongguan/" title="东莞日租房" target="_blank">东莞日租房</a>
                </div>
            </div>
            <div class="s_mn_footercity_tit">热门短租：</div>
            <div style="display: block;" class="s_mn_footercity_more">+展开</div>
        </li>

        <!-- **热门地标-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="https://www.muniao.com/beijing/landmark_2129-0-0-0-0-0-0-0-1.html" title="北京化工大学附近日租房"
                       target="_self">北京化工大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2130-0-0-0-0-0-0-0-1.html" title="北京建筑工程学院附近日租房"
                       target="_self">北京建筑工程学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2131-0-0-0-0-0-0-0-1.html" title="北京交通大学附近日租房"
                       target="_self">北京交通大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2132-0-0-0-0-0-0-0-1.html" title="北京科技大学附近日租房"
                       target="_self">北京科技大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2133-0-0-0-0-0-0-0-1.html" title="北京理工大学附近日租房"
                       target="_self">北京理工大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2134-0-0-0-0-0-0-0-1.html" title="北京联合大学附近日租房"
                       target="_self">北京联合大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2135-0-0-0-0-0-0-0-1.html" title="北京林业大学附近日租房"
                       target="_self">北京林业大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2136-0-0-0-0-0-0-0-1.html" title="北京农学院附近日租房"
                       target="_self">北京农学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2137-0-0-0-0-0-0-0-1.html" title="北京师范大学附近日租房"
                       target="_self">北京师范大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2138-0-0-0-0-0-0-0-1.html" title="北京石油化工学院附近日租房"
                       target="_self">北京石油化工学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2139-0-0-0-0-0-0-0-1.html" title="北京体育大学附近日租房"
                       target="_self">北京体育大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2140-0-0-0-0-0-0-0-1.html" title="北京外国语大学附近日租房"
                       target="_self">北京外国语大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2141-0-0-0-0-0-0-0-1.html" title="北京舞蹈学院附近日租房"
                       target="_self">北京舞蹈学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2142-0-0-0-0-0-0-0-1.html" title="北京物资学院附近日租房"
                       target="_self">北京物资学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2143-0-0-0-0-0-0-0-1.html" title="北京协和医学院附近日租房"
                       target="_self">北京协和医学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2145-0-0-0-0-0-0-0-1.html" title="北京印刷学院附近日租房"
                       target="_self">北京印刷学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2146-0-0-0-0-0-0-0-1.html" title="北京邮电大学附近日租房"
                       target="_self">北京邮电大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2147-0-0-0-0-0-0-0-1.html" title="北京语言大学附近日租房"
                       target="_self">北京语言大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2148-0-0-0-0-0-0-0-1.html" title="北京中医药大学附近日租房"
                       target="_self">北京中医药大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2150-0-0-0-0-0-0-0-1.html" title="国际关系学院附近日租房"
                       target="_self">国际关系学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2152-0-0-0-0-0-0-0-1.html" title="清华大学附近日租房"
                       target="_self">清华大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2153-0-0-0-0-0-0-0-1.html" title="首都经济贸易大学附近日租房"
                       target="_self">首都经济贸易大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2154-0-0-0-0-0-0-0-1.html" title="首都师范大学附近日租房"
                       target="_self">首都师范大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2155-0-0-0-0-0-0-0-1.html" title="首都体育学院附近日租房"
                       target="_self">首都体育学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2156-0-0-0-0-0-0-0-1.html" title="首都医科大学附近日租房"
                       target="_self">首都医科大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2157-0-0-0-0-0-0-0-1.html" title="首钢工学院附近日租房"
                       target="_self">首钢工学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2158-0-0-0-0-0-0-0-1.html" title="外交学院附近日租房"
                       target="_self">外交学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2160-0-0-0-0-0-0-0-1.html" title="中国劳动关系学院附近日租房"
                       target="_self">中国劳动关系学院附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2161-0-0-0-0-0-0-0-1.html" title="中国农业大学附近日租房"
                       target="_self">中国农业大学附近日租房</a>
                    <a href="https://www.muniao.com/beijing/landmark_2162-0-0-0-0-0-0-0-1.html" title="中国青年政治学院附近日租房"
                       target="_self">中国青年政治学院附近日租房</a>

                </div>
            </div>
            <div class="s_mn_footercity_tit">北京热门地标：</div>
            <div style="display: block;" class="s_mn_footercity_more">+展开</div>
        </li>
        <!-- **周边短租推荐-->

        <!-- **周边短租推荐-->
        <!-- **热门住宿推荐-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="https://www.muniao.com/zhuanti/college_1beijing/" target="_blank">北京各学校周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_yhyw/" target="_blank">运河苑温泉度假村周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_dqs/" target="_blank">大石桥胡同周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_bjm/" target="_blank">北京民俗博物馆分馆周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_kdz/" target="_blank">看丹中学周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_nl/" target="_blank">年轮园周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_zhss/" target="_blank">拈花寺周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_bjlhdxsf/" target="_blank">北京联合大学师范学院周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_gzz/" target="_blank">龚自珍故居周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_wj/" target="_blank">北京市望京实验学校周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_xdf/" target="_blank">新东方美食城周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_zhn/" target="_blank">中华民族博物馆周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_ggng/" target="_blank">北京观光南瓜园周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_slt/" target="_blank">北京市三里屯一中周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_sgn/" target="_blank">石锅牛肉城周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_xdja/" target="_blank">北京夏都佳家火锅城周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_wh/" target="_blank">维人和火锅城周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_ft/" target="_blank">垡头中学周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_lsc/" target="_blank">五棵松体育馆周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_ylt/" target="_blank">北京御林汤泉度假村周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_tqxg/" target="_blank">汤泉行宫温泉周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_esw/" target="_blank">北京市第二十五中学周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_hpy/" target="_blank">北京教区西胡林天主堂周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_hmk/" target="_blank">红门快餐城周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_gxs/" target="_blank">鬼笑石周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_fcm/" target="_blank">阜成门周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_wyf/" target="_blank">雾雨飞虹谷风景区周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_bty/" target="_blank">芭堤雅酒店温泉周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/college_ewf/" target="_blank">北京市第二外国语学院附属中学周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_tzlh/" target="_blank">通州隆鹤国际温泉周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/spots_mzda/" target="_blank">密宗殿周边家庭旅馆</a>
                    <a href="https://www.muniao.com/zhuanti/14210_search/" target="_blank">北京市第一一九中学(建国里一巷)附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/15493_search/" target="_blank">南邵地铁站A口附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/9507_search/" target="_blank">长阳公园附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/14686_search/" target="_blank">北京现代音乐研修学院附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/13285_search/" target="_blank">格林豪泰酒店光明桥店-会议室附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/15214_search/" target="_blank">鹏润家园附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/15929_search/" target="_blank">北京澳华学校附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/8583_search/" target="_blank">名瑄造型（动物园店）附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/15060_search/" target="_blank">南新园小区附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/5405_search/" target="_blank">中润尚味饮食机场店附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/15380_search/" target="_blank">融域嘉园附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/13955_search/" target="_blank">北京市六一中附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/6189_search/" target="_blank">物美(万达店)附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/6558_search/" target="_blank">天通苑基督教堂附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/5788_search/" target="_blank">定福庄附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/13466_search/" target="_blank">尚韵轩博物馆附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/5588_search/" target="_blank">三营门宠物医院附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/11820_search/" target="_blank">采育镇第一中心小学附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/6454_search/" target="_blank">北京嘉里中心附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/12617_search/" target="_blank">八大处公园附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/5027_search/" target="_blank">北京旅游短租</a>
                    <a href="https://www.muniao.com/zhuanti/5245_search/" target="_blank">北京别墅聚会可过夜</a>
                    <a href="https://www.muniao.com/zhuanti/9380_search/" target="_blank">新发地附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/8930_search/" target="_blank">中侨国际旅游有限公司附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/7711_search/" target="_blank">伊利大厦附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/9280_search/" target="_blank">京粮大厦附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/9369_search/" target="_blank">八宝山附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/14654_search/" target="_blank">卢沟桥第一小学校附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/13685_search/" target="_blank">榆树庄公园附近短租公寓</a>
                    <a href="https://www.muniao.com/zhuanti/12691_search/" target="_blank">聚鑫龙顺台球厅附近短租公寓</a>

                </div>
            </div>
            <div class="s_mn_footercity_tit">北京热门住宿推荐：</div>
            <div style="display: block;" class="s_mn_footercity_more">+展开</div>
        </li>
        <!-- **热门住宿推荐-->
        <!-- **友情链接-->
        <li>
            <div class="s_mn_footerhot">
                <div class="s_mn_hotdibiao">
                    <a href="http://www.yipu.com.cn/beijing/" target="_blank">北京商业地产</a>
                    <a href="http://bj.tobosu.com/zx/" target="_blank">北京装修公司</a>
                    <a href="http://bj.to8to.com/company/" target="_blank">北京装修公司</a>
                    <a href="http://beijing.cncn.com/xianlu/" target="_blank">北京旅游线路</a>
                    <a href="http://bj.cityhouse.cn/" target="_blank">北京房产</a>
                    <a href="http://www.meilele.com/beijing/" target="_blank">北京家具</a>
                    <a href="http://www.xaoyo.com/beijing-30/" target="_blank">北京天气预报</a>
                    <a href="http://chengdu.anjuke.com/market/" target="_blank">成都二手房房价</a>
                    <a href="http://www.ic98.com/supply/" target="_blank">供应信息网</a>
                    <a href="http://beijing.uoko.com/" target="_blank">北京租房网</a>
                    <a href="http://www.jc001.cn/area-bj" target="_blank">北京建材</a>
                    <a href="http://qiche.tieyou.com/yuding-beijing/" target="_blank">北京长途汽车票网上订票</a>
                    <a href="http://www.wy100.com/chufang" target="_blank">厨房装修效果图</a>
                    <a href="http://www.cnlist.org/beijing/" target="_blank">北京企业名录大全</a>
                    <a href="http://zx.meilele.com/chufang/" target="_blank">厨房设计</a>
                    <a href="http://beijing.glzhuang.com/" target="_blank">北京装修公司</a>
                    <a href="http://bj.mogoroom.com/" target="_blank">北京租房网</a>
                    <a href="http://www.shouqizulin.com/" target="_blank">北京首汽租车</a>
                    <a href="http://www.qulv.com/" target="_blank">海岛游</a>
                    <a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>
                    <a href="http://poi.mapbar.com/beijing/" target="_blank">北京地图查询</a>
                    <a href="http://www.bole.com.cn/" target="_blank">猎头公司</a>
                    <a href="http://furniture.jmw.com.cn/" target="_blank">家具加盟</a>
                    <a href="http://siping.saofang.cn/" target="_blank">四平二手房</a>
                    <a href="http://xiaoxue.koolearn.com/quweixuexi/" target="_blank">趣味测试</a>

                </div>
            </div>
            <div class="s_mn_footercity_tit">北京友情链接：</div>
            <div style="display: block;" class="s_mn_footercity_more">+展开</div>
        </li>


    </ul>
    <script>
        $(function () {
            var s = $("#indes").val();
            if (s == 1) {
                getindex();
            }
        })

        function getindex() {
            var list = [{
                "title": "珠海短租房公寓",
                "link": "https://www.muniao.com/zhuhai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "中山短租房公寓",
                "link": "https://www.muniao.com/zhongshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "郑州短租房公寓",
                "link": "https://www.muniao.com/zhengzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "张家界短租房公寓",
                "link": "https://www.muniao.com/zhangjiajie/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西双版纳短租房公寓",
                "link": "https://www.muniao.com/xishuangbanna/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西宁短租房公寓",
                "link": "https://www.muniao.com/xining/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "香港短租房公寓",
                "link": "https://www.muniao.com/xianggang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "西安短租房公寓",
                "link": "https://www.muniao.com/xian/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "厦门短租房公寓",
                "link": "https://www.muniao.com/xiamen/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "无锡短租房公寓",
                "link": "https://www.muniao.com/wuxi/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "武汉短租房公寓",
                "link": "https://www.muniao.com/wuhan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "威海短租房公寓",
                "link": "https://www.muniao.com/weihai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "天津短租房公寓",
                "link": "https://www.muniao.com/tianjin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "太原短租房公寓",
                "link": "https://www.muniao.com/taiyuan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "苏州短租房公寓",
                "link": "https://www.muniao.com/suzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "石家庄短租房公寓",
                "link": "https://www.muniao.com/shijiazhuang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "深圳短租房公寓",
                "link": "https://www.muniao.com/shenzhen/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "沈阳短租房公寓",
                "link": "https://www.muniao.com/shenyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "上海短租房公寓",
                "link": "https://www.muniao.com/shanghai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "三亚短租房公寓",
                "link": "https://www.muniao.com/sanya/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "日照短租房公寓",
                "link": "https://www.muniao.com/rizhao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "青岛短租房公寓",
                "link": "https://www.muniao.com/qingdao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "盘锦短租房公寓",
                "link": "https://www.muniao.com/panjin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "宁波短租房公寓",
                "link": "https://www.muniao.com/ningbo/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南宁短租房公寓",
                "link": "https://www.muniao.com/nanning/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南京短租房公寓",
                "link": "https://www.muniao.com/nanjing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南戴河短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/nandaihe-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "南昌短租房公寓",
                "link": "https://www.muniao.com/nanchang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "洛阳短租房公寓",
                "link": "https://www.muniao.com/luoyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "兰州短租房公寓",
                "link": "https://www.muniao.com/lanzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "昆明短租房公寓",
                "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "济南短租房公寓",
                "link": "https://www.muniao.com/jinan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "吉林短租房公寓",
                "link": "https://www.muniao.com/jilinshi/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "葫芦岛短租房公寓",
                "link": "https://www.muniao.com/huludao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "惠州短租房公寓",
                "link": "https://www.muniao.com/huizhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "呼和浩特短租房公寓",
                "link": "https://www.muniao.com/huhehaote/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "黄山短租房公寓",
                "link": "https://www.muniao.com/huangshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "合肥短租房公寓",
                "link": "https://www.muniao.com/hefei/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "海口短租房公寓",
                "link": "https://www.muniao.com/haikou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "哈尔滨短租房公寓",
                "link": "https://www.muniao.com/haerbin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "贵阳短租房公寓",
                "link": "https://www.muniao.com/guiyang/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "桂林短租房公寓",
                "link": "https://www.muniao.com/guilin/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "广州短租房公寓",
                "link": "https://www.muniao.com/guangzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "大连短租房公寓",
                "link": "https://www.muniao.com/dalian/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "重庆短租房公寓",
                "link": "https://www.muniao.com/chongqing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "成都短租房公寓",
                "link": "https://www.muniao.com/chengdu/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "常州短租房公寓",
                "link": "https://www.muniao.com/changzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "长春短租房公寓",
                "link": "https://www.muniao.com/changchun/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北京短租房公寓",
                "link": "https://www.muniao.com/beijing/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北海短租房公寓",
                "link": "https://www.muniao.com/beihai/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "北戴河短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/beidaihe-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "保定短租房公寓",
                "link": "https://www.muniao.com/baoding/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "营口短租房公寓",
                "link": "https://www.muniao.com/yingkou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "秦皇岛短租房公寓",
                "link": "https://www.muniao.com/qinhuangdao/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "昆山短租房公寓",
                "link": "https://www.muniao.com/kunming/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "杭州短租房公寓",
                "link": "https://www.muniao.com/hangzhou/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "长沙短租房公寓",
                "link": "https://www.muniao.com/changsha/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "佛山短租房公寓",
                "link": "https://www.muniao.com/foshan/null-0-0-0-4-0-0-0-1.html"
            }, {
                "title": "大同短租房公寓",
                "link": "https://www.muniao.com/datong/null-0-0-0-4-0-0-0-1.html"
            }, {"title": "泉州短租房公寓", "link": "https://www.muniao.com/quanzhou/null-0-0-0-4-0-0-0-1.html"}];
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
                    $('html,body').animate({scrollTop: newTopHeight}, 300);
                }
            }
        });
    </script>
    <div class="w_footer_nav">
        <div class="s_mn_footer_nav">
            <a href="https://www.muniao.com/single_10.html" rel="nofollow" target="_blank" title="免责声明">免责声明</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_2.html" rel="nofollow" target="_blank" title="关于我们">关于我们</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_3.html" target="_blank" title="木鸟短租客服">联系我们</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_4.html" rel="nofollow" target="_blank" title="法律声明">法律声明</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_5.html" rel="nofollow" target="_blank" title="新手指南">新手指南</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_1.html" rel="nofollow" target="_blank" title="帮助中心">帮助中心</a><span
                class="m10">|</span>

            <a href="http://www.muniao.com/" target="_blank" title="短租房">短租房</a><span class="m10">|</span>
            <a href="https://www.muniao.com/list_news_0_1.html" target="_blank" title="新闻资讯">新闻资讯</a><span
                class="m10">|</span>
            <a href="https://www.muniao.com/single_9.html" rel="nofollow" target="_blank" title="媒体报道">媒体报道</a>
            <span class="m10">|</span>
            <a href="https://m.muniao.com/h5list/beijing.html" target="_blank" title="北京短租公寓（手机版）">北京短租公寓（手机版）</a>


        </div>
        <div class="s_mn_footer_nav f12">客服电话：400-056-0055 或 010-89180879<span
                class="m10">客户服务：service@muniao.com</span><span class="m10">意见反馈：feedback@muniao.com</span></div>
        <div class="s_mn_footer_nav f12">
            网站备案/许可证号：京ICP备12043553号-3&nbsp;京公网安备11010802011855号&nbsp;北京爱游易科技有限公司&nbsp;
        </div>
        <div style="display:none;">
            <script>
                var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                document.write(unescape("%3Cspan id='cnzz_stat_icon_1000373664'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/z_stat.php%3Fid%3D1000373664' type='text/javascript'%3E%3C/script%3E"));
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
            </script>
            <span id="cnzz_stat_icon_1000373664"><a href="http://www.cnzz.com/stat/website.php?web_id=1000373664"
                                                    target="_blank" title="站长统计">站长统计</a></span>
            <script src="${staticRoot}/images/z_stat.php" type="text/javascript"></script>
            <script src="${staticRoot}/images/core.php" charset="utf-8" type="text/javascript"></script>
            <script src="${staticRoot}/images/h.js.下载" type="text/javascript"></script>
            <a href="http://tongji.baidu.com/hm-web/welcome/ico?s=59c4ac1df66ae9bdb2ce804f09084ea1" target="_blank"><img
                    border="0" src="${staticRoot}/images/21.gif" width="20" height="20"></a>
            <script src="${staticRoot}/images/11.0.1.js.下载" id="sozz"></script>
            <script charset="utf-8" src="${staticRoot}/images/ab77b6ea7f3fbf79.js.下载"></script>
            <!-- cnzz统计代码：-->

        </div>
        <div class="s_mn_security">
            <ul class="s_mn_security_list">
                <li><a href="http://net.china.cn/chinese/index.htm" rel="nofollow" title="信息举报中心" target="_blank"><img
                        src="${staticRoot}/images/pic1.jpg" alt="信息举报中心" title="信息举报中心" width="109"
                        height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://www.cyberpolice.cn/" rel="nofollow" title="网络110" target="_blank"><img
                        src="${staticRoot}/images/pic2.jpg" alt="网络110" title="网络110" width="109"
                        height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://www.bjjubao.org/" rel="nofollow" title="互联网举报中心" target="_blank"><img
                        src="${staticRoot}/images/pic3.jpg" alt="互联网举报中心" title="互联网举报中心" width="109"
                        height="45" style="border-radius: 2px;"></a></li>
                <li><a href="http://webscan.360.cn/index/checkwebsite/url/muniao.com" rel="nofollow" title="安全检测"
                       target="_blank"><img src="${staticRoot}/images/pic6.jpg" alt="安全检测" title="安全检测"
                                            width="109" height="45" style="border-radius: 2px;"></a></li>
                <li>

                </li>
            </ul>
        </div>
        <!--Pc站百度统计代码：-->

    </div>

</div>


<style>
    /**/
    #baidumap_container {
        width: 600px;
        height: 400px;
    }

    .label {
        margin-left: 20px;
        font-weight: bold;
        font-size: 14px;
    }

    .tangram-suggestion-main {
        width: 800px;
        z-index: 800;
    }

    .tangram-suggestion--TANGRAM__t {
        width: 312px;
        border: 1px solid #e3e3e3;
    }

    .tangram-suggestion {
        border: none;
        width: 312px;
    }

    .tangram-suggestion table {
        width: 312px;
        background: #fff;
        border: 1px solid #DDDDDD;
    }

    .tangram-suggestion table tr {
        height: 35px;
        font-size: 14px;
        color: #555;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .tangram-suggestion table td {
        padding: 0 10px;
    }

    .tangram-suggestion table b {
        color: #FF6C5C;
        font-weight: normal;
    }

    .tangram-suggestion-grey {
        float: right;
    }

    .tangram-suggestion .route-icon {
        background: url(http://webmap1.map.bdstatic.com/wolfman/static/common/images/ui3/tools/suggestion-icon_013979b.png) no-repeat 0 -12px !important;
    }

    .tangram-suggestion-grey {
        position: absolute;
        right: 10px;
    }

    /*
                                                                    */
    .s_mn_house_information dl {
        display: inline-block;
        width: auto;
        *display: block;
        *float: left;
    }

    .s_mn_house_information dd {
        display: inline-block;
        font: 14px/30px "Microsoft Yahei";
        height: 60px;
        color: #bbbbbb;
        margin: 0 7px;
    }

    .s_mn_house_information a {
        padding: 0;
        margin: 0;
    }

    /*longrent*/
    /*.lang_switch {
            width: 38px;
            height: 23px;
            top: 10px;
            left: 10px;
            margin-right: 15px;
            float: left;
            position: relative;
            padding: 4px;
            background: url(//assets.muniao.com/assets2/2015/images/switch_bg.png) no-repeat;
            border-radius: 3px;
        }*/

    .swit_bot a {
        display: block;
        width: 38px;
        height: 23px;
        line-height: 23px;
        color: #aaaaaa;
        font-size: 12px;
        text-align: center;
        padding: 0;
        float: left;
    }

    .swit_bot a:hover {
        padding: 0;
    }

    .swit_bg {
        width: 38px;
        height: 23px;
        background: url(//assets.muniao.com/assets2/2015/images/slide_bg.png) no-repeat;
        border-radius: 2px;
        position: absolute;
        z-index: 1;
        transition: .3s;
        -webkit-transition: .3s;
        -moz-transition: .3s;
        -ms-transition: 0.3s;
        -o-transition: 0.3s;
        transform: translateX(0);
        -o-transform: translateX(0);
        -moz-transform: translateX(0);
        -ms-transform: translateX(0);
        -webkit-transform: translateX(0);
    }

    .swit_bot {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 2;
        padding: 4px;
        text-indent: 0;
    }

    a.switch_l {
        color: #FFFFFF;
    }

    .swit_new {
        display: inline-block;
        width: 36px;
        height: 27px;
        position: absolute;
        top: -19px;
        right: -22px;
    }

    .langz_active {
        transform: translateX(38px);
        -webkit-transform: translateX(38px);
        -moz-transform: translateX(38px);
        -ms-transform: translateX(38px);
        -o-transform: translateX(38px);
    }

    a.color_a {
        color: #AAAAAA;
    }

    a.color_f {
        color: #FFFFFF;
    }

    /**/
    .s_mn_screen_list li {
        height: 28px;
    }

    .getMap {
        background: #FFF;
        border: 1px solid #dedede;
        line-height: 30px;
        height: 400px;
        font-size: 12px;
        font-weight: bold;
        z-index: 999;
        padding: 2px 2px 2px 2px;
        width: 677px;
        text-align: right;
        left: 50%;
        top: 50%;
        margin-left: -350px !important; /*FF IE7 该值为本身宽的一半 */
        margin-top: -200px !important; /*FF IE7 该值为本身高的一半*/
        margin-top: 0px;
        position: fixed !important; /* FF IE7*/
        position: absolute; /*IE6*/
        _top: expression(eval(document.compatMode &&document.compatMode=='CSS1Compat') ?documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 : /*IE6*/ document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2); /*IE5 IE5.5*/
    }

    .popIframe {
        background: #666;
        display: none;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0; /*FF IE7*/
        filter: alpha(opacity=70); /*IE*/
        opacity: 0.7;
        position: relative; /*FF*/
        z-index: 1;
        position: fixed !important; /*FF IE7*/
        position: absolute; /*IE6*/
        _top: expression(eval(document.compatMode && document.compatMode=='CSS1Compat') ? documentElement.scrollTop + (document.documentElement.clientHeight-this.offsetHeight)/2 : /*IE6*/ document.body.scrollTop + (document.body.clientHeight - this.clientHeight)/2);
    }

    .s_mn_page_bar {
        height: 30px;
        padding: 5px 0px;
        margin: 25px 0;
        display: inline-block;
    }

    .page_city {
        display: inline-block;
        margin: 0 20px;
        color: #555555;
        font-size: 14px;
    }

    .page_city a {
        color: #19B5FE;
    }

    .s_mn_search_landmark_select {
        position: absolute;
        top: 40px;
        left: 0;
        z-index: 999;
        width: 308px;
        border: 1px solid #e3e3e3;
        background: #fff;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        box-shadow: 0px 0px 3px #ddd;
        max-height: 535px;
        overflow: hidden;
    }

    .s_mn_search_landmark_select .search_list span {
        color: #FF6C5C;
    }

    .s_mn_search_landmark_select .search_list {
        margin-top: 10px;
    }

    .s_mn_search_landmark_select .search_list li {
        padding: 0 10px;
    }

    .s_mn_search_landmark_select .search_list li:hover {
        background: #FFF0E8;
    }

    .s_mn_search_landmark_select .search_list li:hover a {
    }

    .s_mn_search_landmark_select .search_list a {
        font-size: 14px;
        color: #555;
        display: block;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        height: 35px;
        line-height: 35px;
    }

    .s_mn_search_landmark_select .search_none {
        font-size: 12px;
        color: #ccc;
    }

    .w_snonebox {
        height: 320px;
    }

    .list-downapp {
        text-align: center;
        margin-top: 20px;
    }

    .list-downapp p {
        font-size: 13px;
        color: #ff6c5c;
        margin-top: 7px;
    }
</style>


<iframe id="popIframe" class="popIframe" style="display:none" frameborder="0"
        src="${staticRoot}/images/saved_resource(1).html"></iframe>
<script type="text/javascript" src="${staticRoot}/images/lnkr5.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/validate-site.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/lnkr30_nt.min.js.下载"></script>
<script type="text/javascript" src="${staticRoot}/images/code"></script>
</body>
</html>