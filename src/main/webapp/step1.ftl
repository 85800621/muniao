<!DOCTYPE html>
<!-- saved from url=(0040)http://user2.muniao.com/Room/step1?utp=1 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="${staticRoot}/add/api1"></script>
    <script type="text/javascript" src="${staticRoot}/add/getscript"></script>
    <script src="${staticRoot}/add/jquery-1.10.2.min.js.下载"></script>
    <script src="${staticRoot}/add/city_info.js.下载"></script>
    <script src="${staticRoot}/add/city_cn2en.js.下载"></script>
    <link href="${staticRoot}/add/reset.css" rel="stylesheet">
    <link href="${staticRoot}/add/style.css" rel="stylesheet" type="text/css">
    <link href="${staticRoot}/add/style_single.css" rel="stylesheet">

    <script type="text/javascript">
        $(document).click(function (e) {
            var target = $(e.target);
            if (target.closest(".province-s,.province-input,.bed-type-input,.bedtype-list").length == 0 && target.closest("body").length != 0) {
                $(".bedtype-list").hide();
                $(".province-s").hide();
                $(".province-input").removeClass("input-border");
            }
            if (target.closest(".r-input,.r-input-list").length == 0) {
                $(".r-input-list").hide();
                $(".r-input").removeClass("input-border");
            }
        })

        //参数赋值
        var roomid = '';
        var room;
        $(document).ready(function () {
            if (roomid == null || roomid == '') {
                $.post("/Room/req", { step: '105' }, function (json) {
                    res = JSON.parse(json);
                    if (res.status > 0) {
                        if (res.message == "您有房源信息尚未提交，请提交或删除后添加新房源！") {
                            alert("草稿箱中有房源未提交，请提交或删除后添加新房源！");
                        } else {
                            alert(res.message);
                        }
                        location.href = '/Room/RoomIndex?utp=1';
                    }
                });
            }
            //预加载
            if (roomid != '') {
                $.post("/Room/req", { step: '102_1', data: '{"roomid":' + roomid + '}' }, function (json) {
                    room = JSON.parse(json).data.data;
                    $('#ipt_Province').val(room.province);
                    $('#ipt_City').val(room.city);
                    $('#ipt_AddressArea').val(room.area);
                    $('#ipt_AddressStreet').val(room.street);
                    $('#ipt_AddressXiaoqu').val(room.xiaoqu);
                    $('#ipt_AddressBuild').val(room.build);
                    $('#ipt_AddressUnit').val(room.unit);
                    $('#ipt_AddressDoor').val(room.door);
                    $('#ipt_MapType').val(room.maptype);
                    $('#ipt_Lng').val(room.lng);
                    $('#ipt_Lat').val(room.lat);
                    $('.t-jiedao').html(room.street);
                    $('.t-xiaoqu').html(room.xiaoqu);
                    $('.t-louhao').html(room.build);
                    $('.t-danyuan').html(room.unit);
                    $('.t-menpai').html(room.door);
                    $('#ready0').html(room.street.length);
                    $('#ready1').html(room.xiaoqu.length);
                    $('#ready2').html(room.build.length);
                    $('#ready3').html(room.unit.length);
                    $('#ready4').html(room.door.length);

                    if (room.maptype == 1 || room.maptype == 0) {
                        DDL_City(room.provinceId, room.province);
                        DDL_Area(room.cityId, room.city);
                        DDL_Map(room.areaId, room.area);

                        point = new BMap.Point(room.lng, room.lat);
                        map.centerAndZoom(point, 13);
                        createMark(point);
                        search(room.city + ' ' + room.area + ' ' + room.street + ' ' + room.xiaoqu + ' ' + room.build, 13);

                    }
                    else if (room.maptype == 2) {
                        DDL_HaiWai_City(room.lat + ',' + room.lng, room.cityEn);
                        setHaiwaiCity();
                    }
                });
            }
        });
        var tj = true;
        //提交
        function submit() {
            if (tj) {
                tj = false;
                if ($('#ipt_MapType').val() == 1) {
                    if ($('#ipt_ProvinceName').val() == '') {
                        alert('请选择省！'); $('#ipt_ProvinceName').focus(); tj = true; return false;
                    }
                    if ($('#ipt_CityName').val() == '') {
                        alert('请选择市！'); $('#ipt_CityName').focus(); tj = true; return false;
                    }
                    if ($('#ipt_AreaName').val() == '') {
                        alert('请选择区！'); $('#ipt_AreaName').focus(); tj = true; return false;
                    }
                }
                else if ($('#ipt_MapType').val() == 2) {
                    if ($('#ipt_CityEn').val() == '') {
                        alert('请选择城市！'); $('#ipt_CityEn').focus(); tj = true; return false;
                    }
                }
                if ($('#ipt_AddressStreet').val().replace(' ', '') == '') {
                    alert('请输入街道地址！'); $('#ipt_AddressStreet').focus(); tj = true; return false;
                }
                //if ($('#ipt_AddressXiaoqu').val().replace(' ', '') == '') {
                //    alert('请输入小区！'); $('#ipt_AddressXiaoqu').focus(); return false;
                //}

                var postData = {
                    roomid: roomid || 0,
                    province: $('#ipt_ProvinceName').val(),
                    city: $('#ipt_CityName').val(),
                    area: $('#ipt_AreaName').val(),
                    street: $('#ipt_AddressStreet').val(),
                    xiaoqu: $('#ipt_AddressXiaoqu').val(),
                    build: $('#ipt_AddressBuild').val(),
                    unit: $('#ipt_AddressUnit').val(),
                    door: $('#ipt_AddressDoor').val(),
                    lng: $('#ipt_Lng').val(),
                    lat: $('#ipt_Lat').val(),
                    maptype: $('#ipt_MapType').val() || 1
                };


                var datastr = JSON.stringify(postData);
                var url = 'Room/Submit_Step1';
                $.getJSON(url,{postData:datastr},function (data) {
//                    var jsonData = JSON.parse(data);
                    var jsonData = data;
                    var newroomid = jsonData.roomid;
                    if (jsonData.status == 0) {
                        if (jsonData.roomid > 0) {
//                            location.href = '/Room/Step2/' + newroomid;
                            location.href = 'step2';
                        } else {
//                            location.href = '/Room/Step2/' + roomid;
                            location.href = 'step2';
                        }
                    } else {
                        tj = true;
                    }
                })
            }
        }
        //省份列表
        var prov_list = $.getJSON('https://api2.muniao.com/v1_0?op=provincelist');
        //市列表
        function getCitys(province) {
            $.post('https://api2.muniao.com/v1_0?op=province2city', { province: province }, function (data) {
                for (var i = 0; i < data.list.length; i++) {
                    $('#div_prov_city').html($('#div_prov_city').html() + '<a data-id="' + data.list[i].id + '" data-name="' + data.list[i].city + '" href="javascript:DDL_Area(' + data.list[i].id + ',\'' + data.list[i].city + '\');">' + data.list[i].city + '</a>');
                }
            });
        }
        //区列表
        function getAreas(city) {
            $.post('https://api2.muniao.com/v1_0?op=city2area', { city: city }, function (data) {
                for (var i = 0; i < data.list.length; i++) {
                    $('#div_city_area').html($('#div_city_area').html() + '<a data-id="' + data.list[i].id + '" data-name="' + data.list[i].area + '" href="javascript:DDL_Map(' + data.list[i].id + ',\'' + data.list[i].area + '\');">' + data.list[i].area + '</a>');
                }
            });
        }

        //点击选中国家
        function DDL_Contry(id, name) {
            if (id == 1) {//国内
                $('#ipt_MapType').val(1);
                $('#div_city1').show(); $('#div_city2').hide(); $('#contry_list').hide(); $('#div_province1').show(); $('#div_area1').show();

                location.reload();
            }
            else if (id == 2) {//海外
                $('#ipt_MapType').val(2);
                $('#div_city1').hide(); $('#div_city2').show(); $('#contry_list').hide(); $('#div_province1').hide(); $('#div_area1').hide();
                setHaiwaiCity();
                initMap('allmap');
            }
            $('#contry').val(name);
            $('.t-country').html(name);
            $('.t-province').html('');
            $('.t-city').html('');
            $('.t-area').html('');
        }

        //点击选中省份
        function DDL_City(id, name) {
            $('#ipt_ProvinceName').val(name);
            $('#ipt_ProvinceId').val(id);
            $('#div_sheng').hide();
            $('#div_prov_city').html('');
            $('#div_city_area').html('');
            $('#ipt_CityName').val('');
            $('#ipt_CityId').val('');
            $('#ipt_AreaName').val('');
            $('#ipt_AreaId').val('');

            $('.t-country').html('中国');
            $('.t-province').html(name);
            $('.t-city').html('');
            $('.t-area').html('');

            getCitys(name);
            search(name, 13);
        }
        //点击选中城市
        function DDL_Area(id, name) {
            $('#ipt_CityName').val(name);
            $('#ipt_CityId').val(id);
            $('#div_prov_city').hide();
            $('#div_city_area').html('');
            $('#ipt_AreaName').val('');
            $('#ipt_AreaId').val('');

            $('.t-city').html(name);
            $('.t-area').html('');

            getAreas(name);
            search(name, 13);
        }
        //点击选中区域
        function DDL_Map(id, name) {
            $('#ipt_AreaName').val(name);
            $('#ipt_AreaId').val(id);
            $('#div_city_area').hide();

            $('.t-area').html(name);
            search(name, 13);
        }
        //点击选中海外某城市
        function DDL_HaiWai_City(latlng, name) {
            $('#ipt_CityEn').val(name);
            $('#div_haiwai_city').hide();

            $('.t-country').html('海外');
            $('.t-city').html(name);
            myLatLng = { lat: parseFloat(latlng.split(',')[0]), lng: parseFloat(latlng.split(',')[1]) };
            initMap('allmap');
        }

        //得到海外城市下拉列表
        function setHaiwaiCity() {
            var Asia_A = ""; var Asia_H = ""; var Asia_L = ""; var Asia_T = "";
            var Europe_A = ""; var Europe_H = ""; var Europe_L = ""; var Europe_T = "";
            var America_A = ""; var America_H = ""; var America_L = ""; var America_T = "";
            var Oceania_A = ""; var Oceania_H = ""; var Oceania_L = ""; var Oceania_T = "";
            var Africa_A = ""; var Africa_H = ""; var Africa_L = ""; var Africa_T = "";

            for (var j = 0; j < cityInfo.citys.length; j++) {
                //亚洲
                for (var i = 0; i < cityInfo.areagroups[2].cityids.length; i++) {
                    if (cityInfo.citys[j].id == cityInfo.areagroups[2].cityids[i]) {
                        if ("abcdefg".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Asia_A += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("hijk".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Asia_H += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("lmnopqrs".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Asia_L += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("tuvwxyz".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Asia_T += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                    }
                }
                //欧洲
                for (var i = 0; i < cityInfo.areagroups[3].cityids.length; i++) {
                    if (cityInfo.citys[j].id == cityInfo.areagroups[3].cityids[i]) {
                        if ("abcdefg".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Europe_A += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("hijk".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Europe_H += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("lmnopqrs".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Europe_L += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("tuvwxyz".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Europe_T += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                    }
                }
                //美洲
                for (var i = 0; i < cityInfo.areagroups[4].cityids.length; i++) {
                    if (cityInfo.citys[j].id == cityInfo.areagroups[4].cityids[i]) {
                        if ("abcdefg".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            America_A += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("hijk".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            America_H += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("lmnopqrs".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            America_L += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("tuvwxyz".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            America_T += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                    }
                }
                //大洋洲
                for (var i = 0; i < cityInfo.areagroups[5].cityids.length; i++) {
                    if (cityInfo.citys[j].id == cityInfo.areagroups[5].cityids[i]) {
                        if ("abcdefg".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Oceania_A += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("hijk".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Oceania_H += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("lmnopqrs".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Oceania_L += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("tuvwxyz".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Oceania_T += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                    }
                }
                //非洲
                for (var i = 0; i < cityInfo.areagroups[6].cityids.length; i++) {
                    if (cityInfo.citys[j].id == cityInfo.areagroups[6].cityids[i]) {
                        if ("abcdefg".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Africa_A += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("hijk".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Africa_H += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("lmnopqrs".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Africa_L += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                        if ("tuvwxyz".indexOf(cityInfo.citys[j].pinyin[0]) >= 0)
                            Africa_T += "<a data-name=\"" + cityInfo.citys[j].name + "\" latlng=\"" + cityInfo.citys[j].latlng + "\" href=\"javascript:DDL_HaiWai_City('" + cityInfo.citys[j].latlng + "', '" + cityInfo.citys[j].name + "');\">" + cityInfo.citys[j].name + "</a>";
                    }
                }
            }
            $("#div_Asia_A").html(Asia_A); $("#div_Asia_H").html(Asia_H); $("#div_Asia_L").html(Asia_L); $("#div_Asia_T").html(Asia_T);
            $("#div_Europe_A").html(Europe_A); $("#div_Europe_H").html(Europe_H); $("#div_Europe_L").html(Europe_L); $("#div_Europe_T").html(Europe_T);
            $("#div_America_A").html(America_A); $("#div_America_H").html(America_H); $("#div_America_L").html(America_L); $("#div_America_T").html(America_T);
            $("#div_Oceania_A").html(Oceania_A); $("#div_Oceania_H").html(Oceania_H); $("#div_Oceania_L").html(Oceania_L); $("#div_Oceania_T").html(Oceania_T);
            $("#div_Africa_A").html(Africa_A); $("#div_Africa_H").html(Africa_H); $("#div_Africa_L").html(Africa_L); $("#div_Africa_T").html(Africa_T);
        }

        //地图联动
        $(function () {
            $('#ipt_AddressStreet').keyup(function () {
                search($('#ipt_CityName').val() + ' ' + $('#ipt_AreaName').val() + ' ' + $('#ipt_AddressStreet').val(), 15);
            });
            $('#ipt_AddressXiaoqu').keyup(function () {
                search($('#ipt_CityName').val() + ' ' + $('#ipt_AreaName').val() + ' ' + $('#ipt_AddressStreet').val() + ' ' + $('#ipt_AddressXiaoqu').val(), 15);
            });
            $('#ipt_AddressBuild').keyup(function () {
                search($('#ipt_CityName').val() + ' ' + $('#ipt_AreaName').val() + ' ' + $('#ipt_AddressStreet').val() + ' ' + $('#ipt_AddressXiaoqu').val() + ' ' + $('#ipt_AddressBuild').val(), 15);
            });
        })
        //字数限制样式
        function cstyle(id, len, lim) {
            if (len <= lim) {
                $('#ready' + id).html(len);
            }
        }
    </script>
    <style type="text/css">.BMap_mask{background:transparent url(http://api0.map.bdimg.com/images/blank.gif);}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="http://api0.map.bdimg.com/images/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url(http://api0.map.bdimg.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url(http://api0.map.bdimg.com/images/mapctrls2d0.png) no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(http://api0.map.bdimg.com/images/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif) no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(http://api0.map.bdimg.com/images/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url(http://api0.map.bdimg.com/images/mapctrls1d3.gif);vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(http://api0.map.bdimg.com/images/nodeT.gif);}.BMap_vectex_node{background-image:url(http://api0.map.bdimg.com/images/node.gif);}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACYAAAAlCAYAAAAuqZsAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREJDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRENDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEOUM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJEQUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PllB9T8AAAKuSURBVHjaxFjRcdpAEAX+mVEqiFxB5AoQ HZAKElcArsBWBSgVQCoAVwCuwEoFlivwGQpI7jKrzGXn7ep0EsPO7BjLp/O73bdv9xifTqdRpCXW c+sz65n1lNy3mvzZemX9aN34C6bTKdx8HAHMgVlaX0QeaGv9J4EcBJgD9EA/hzAH7N4Cq/oAW1tf KX+vKEXP7PlMSLFvhQX32BWY49GBOIRO7FKy57wBlnoUQHu5yJX+g4mymdvgFWzkAM3JtwGgmiJw a2/pvQoEYBQCLKNI8RfuaeNjT245gAUdqgHdmkqUPiOctLdJVYkithkAVO/K5cC+M30KAZVSxboo /ybnn1eIR5r5qUyI7P4GX6nqJHskbQsxQ7wqu6aSn2qrgHLrXjqAat5ZC0WlRuzVE0J3uhtBCjRt a3qjX92JIMiOIqYtYgumzpo+7RRtu/E0zvknokMF5GgdQv4Ze/5DWL8CFVe2aNuedGsLCi1vS+WL F4WKNkL2Dnh414FnO1b1R5vKuRaxjKUF2YKBqjuCGtF6nyL5+XxOJWCcL2/CpjzdRYRuGpDShQQs ARUj9U/OnRh7Yr9/CW1JXU4fYxXoHIMCu+iB+gBLIt/LgShDYCYktGCDfCBgvyRgVQgZwTy/jIzy EnQNMZV1QCT4bJ+3XFCkS81/WijdkiYAdSak04BWtabWEmIbsNZYgU00YE+gjyErQeo31GpShVMH Yc+/dwsEzh97/D6ojT2ZMlM1XwN8WP9Ma7NAbZvbtBoEjE+jBT2TusCu5SIbI7z/wLWN1rdKi0o6 cqwTuAmYyTm5NQW/82atWvlnBbo7apxD98qDJxl7mkC76JQ2Qm0CI1xKF95Gb4oLXHJDwJlxjy/u LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACUAAAAmCAYAAABDClKtAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ bWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6 eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEz NDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNl SUQ9InhtcC5paWQ6QjA3NjMyREZDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiIHhtcE1NOkRvY3Vt ZW50SUQ9InhtcC5kaWQ6QjA3NjMyRTBDNzQ2MTFFMTlBQUM5QzlCRDZGODZCQkYiPiA8eG1wTU06 RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCMDc2MzJEREM3NDYxMUUxOUFB QzlDOUJENkY4NkJCRiIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCMDc2MzJERUM3NDYxMUUx OUFBQzlDOUJENkY4NkJCRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1w bWV0YT4gPD94cGFja2V0IGVuZD0iciI/PqheQ+MAAAEtSURBVHja7JftDYIwEIbB8JeEUXACZQPd oGygE+gGxAnQEZzAOgEdwREIDKBXUgjBIqW5Npj0kvcHpG0erveFX1WVZ8l2oBhEhRoLw/BroW8J KgeR3vMVlI5BrSwAHQZAnngmYxtMe4oIL41ZAp6iNqF4/BQTa0oBxmxAcaAHKFJY+wKtAaw0CRUJ oHjGHiY8VpqCKmYCdRkJUKmJ7Ms1gZqkqOs6w/bUGXRCOGePCcXjaItwDsW8PoZ0zhM70IeeyiZi jH/Isf+CF9MAOdCppDj+LJ6yim6j9802B6VqQa818BFjY6AHakHp9Crj15ctCaiFIi7Q/wCKLRHq vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvc+qfQQYABaiUBxugCsr AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:100%; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{height: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url(http://api0.map.bdimg.com/images/sel_body_n_top.gif) repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(http://api0.map.bdimg.com/images/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url(http://api0.map.bdimg.com/images/markers_new_ie6.png) no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url(http://api0.map.bdimg.com/images/addrPage.png?v=20121107) no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }.panoInfoBox{cursor:pointer}.panoInfoBox{position:relative;width:323px;height:101px;margin-bottom:4px;cursor:pointer}.panoInfoBox .panoInfoBoxTitleBg{width:323px;height:19px;position:absolute;left:0;bottom:0;z-index:2;background-color:#000;opacity:.7}.panoInfoBox .panoInfoBoxTitleContent{font-size:12px;color:#fff;position:absolute;bottom:2px;left:5px;z-index:3;text-decoration:none}.pano_switch_left,.pano_switch_right{position:absolute;width:28px;height:38px;cursor:pointer;background-color:#252525;background-color:rgba(37,37,37,.9)}.pano_switch_left{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left:hover{background:url(http://api0.map.bdimg.com/images/panorama/zuojiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_right:hover{background:url(http://api0.map.bdimg.com/images/panorama/youjiantou_hover.png) no-repeat;-webkit-background-size:100% 100%;background-size:100% 100%}.pano_switch_left.pano_switch_disable,.pano_switch_right.pano_switch_disable{background:0 0;border:none}.pano_poi_1,.pano_poi_2,.pano_poi_4{display:inline-block;width:16px;height:16px;vertical-align:middle;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/guide_icons_4b871b2.png) no-repeat;background-position:0 0}.pano_photo_arrow_l,.pano_photo_arrow_r{position:absolute;top:0;width:20px;height:100%;background:#f3eeee}.pano_photo_arrow_l{left:0}.pano_photo_arrow_r{right:0}.pano_arrow_l,.pano_arrow_r{display:inline-block;width:18px;height:18px;background:url(http://webmap0.map.bdimg.com/newmap/static/common/images/pano_whole/pano-icons_223a291.png) no-repeat}.pano_catlogLi{cursor:pointer;position:relative;line-height:10px;font-size:10px;text-align:center;color:#abb0b2;border:1px solid #53565c;padding:3px 0;margin-top:3px;margin-left:2px;width:90%}.pano_catlogLi:hover{color:#3DAAFC;border:1px solid #3DAAFC}.pano_catlogLiActive{color:#3DAAFC;border:1px solid #3DAAFC}.pano_arrow_l{background-position:0 -36px}.pano_arrow_r{background-position:-54px -36px}.pano_photo_arrow_l:hover .pano_arrow_l{background-position:-18px -36px}.pano_photo_arrow_r:hover .pano_arrow_r{background-position:-72px -36px}.pano_photo_arrow_l.pano_arrow_disable .pano_arrow_l{background-position:-36px -36px}.pano_photo_arrow_r.pano_arrow_disable .pano_arrow_r{background-position:-90px -36px}.pano_photo_item{position:relative;float:left;line-height:0;padding-left:8px}.pano_photo_decs{position:absolute;bottom:1px;left:0;padding:2px 0;text-indent:5px;margin-left:8px;display:inline-block;color:#fff;background:#000;opacity:.5;filter:alpha(opacity=50)9;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}.pano_photo_item img{display:inline-block;border:solid 1px #252525}.pano_photo_item:hover img{border-color:#005efc}.pano_photo_item_seleted{position:absolute;top:0;left:-100000px;border:3px solid #097df3}.pano_close{position:absolute;right:10px;top:10px;width:40px;cursor:pointer;height:40px;line-height:40px;border-radius:3px;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/close.png);background-repeat:no-repeat;background-position:center center;background-size:90%}.pano_close:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/close_hover.png)}.pano_pc_indoor_exit{position:absolute;right:60px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.pano_pc_indoor_exit:hover{background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit_hover.png);color:#2495ff}.pano_m_indoor_exit{font-size:16px;position:absolute;right:30px;top:10px;width:89px;cursor:pointer;height:40px;line-height:40px;color:#ebedf0;border-radius:3px;background-color:#252525;background-color:rgba(37,37,37,.9);background-image:url(http://api0.map.bdimg.com/images/panorama/indoor_exit.png);background-repeat:no-repeat;background-position:15px 12px}.navtrans-table tr{color:#666}.navtrans-table tr:hover{color:#333}.navtrans-navlist-icon{float:left;width:18px;height:16px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png) no-repeat 0px 0px;_background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png) no-repeat 0px 0px;margin-top:2px;margin-right:5px}.navtrans-navlist-icon.s-1{background-position:0px 0px}.navtrans-navlist-icon.s-2{background-position:-18px 0px}.navtrans-navlist-icon.s-3{background-position:-36px 0px}.navtrans-navlist-icon.s-4{background-position:-54px 0px}.navtrans-navlist-icon.s-5{background-position:-72px 0px}.navtrans-navlist-icon.s-6{background-position:-90px 0px}.navtrans-navlist-icon.s-7{background-position:0px -16px}.navtrans-navlist-icon.s-8{background-position:-18px -16px}.navtrans-navlist-icon.s-9{background-position:-36px -16px}.navtrans-navlist-icon.s-10{background-position:-54px -16px}.navtrans-navlist-icon.s-11{background-position:-72px -16px}.navtrans-navlist-icon.s-12{background-position:-90px -16px}.navtrans-navlist-icon.s-13{background-position:0px -32px}.navtrans-navlist-icon.s-14{background-position:-18px -32px}.navtrans-navlist-icon.s-18{background-position:-36px -32px}.navtrans-navlist-icon.s-19{background-position:-54px -32px}.navtrans-navlist-icon.s-20{background-position:-72px -32px}.navtrans-navlist-icon.s-21{background-position:-90px -32px}.navtrans-navlist-icon.nav-st,.navtrans-navlist-icon.nav-through{background-position:-16px -70px}.navtrans-navlist-icon.nav-ed{background-position:0px -70px}.navtrans-view{border-top:1px solid #e4e6e7;border-left:1px solid #e4e6e7;border-right:1px solid #e4e6e7}.navtrans-view:hover{cursor:pointer}.navtrans-view .navtrans-arrow{position:absolute;top:8px;right:5px;width:7px;height:4px;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_b5c3223.png);background-repeat:no-repeat;background-position:-40px -70px;margin-top:3px;margin-right:3px;_background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/nav-icon_ie6_134841b.png)}.navtrans-view.expand:hover .navtrans-arrow{background-position:-61px -70px}.navtrans-view.expand .navtrans-arrow{background-position:-54px -70px}.navtrans-view:hover .navtrans-arrow{background-position:-47px -70px}.navtrans-navlist-content{overflow:hidden}.navtrans-res{border-bottom:1px solid #E4E6E7;border-left:1px solid #E4E6E7;border-right:1px solid #E4E6E7}.navtrans-bus-icon{display:inline-block;float:left;background-image:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/ui3/mo_banner_e1aa2e6.png);background-repeat:no-repeat}.navtrans-bus-icon.bus{width:13px;height:16px;background-position:-1px -192px;position:relative;top:4px}.navtrans-bus-icon.walk{width:16px;height:18px;background-position:-63px -189px;position:relative;top:2px;left:-2px}.navtrans-bus-desc{line-height:24px;margin-left:20px}.navtrans-busstation{color:#36c;font-weight:600}.tranroute-plan-list.expand .trans-title{border-bottom:1px solid #e4e6e7;background-color:#ebf1fb}.trans-plan-content tr td:hover .bus{background-position:-15px -192px}.trans-plan-content tr td:hover .walk{background-position:-82px -189px}.suggest-plan{position:absolute;background-color:#0C88E8;padding:0px 15px;line-height:20px;color:#fff;left:0px;top:0px}.suggest-plan-des{text-align:left;padding:29px 0px 0px 25px;font-size:13px;color:#000}.bmap-clearfix{*+height:1%}.bmap-clearfix:after{content:".";display:block;height:0px;clear:both;visibility:hidden}.BMap_CityListCtrl{font-size:12px}.BMap_CityListCtrl a{text-decoration:none!important}.BMap_CityListCtrl a:hover{text-decoration:underline!important}.BMap_CityListCtrl .citylist_popup_main{border:1px solid #cdcdcd;z-index:2;position:relative;width:100%;height:100%;background:#fafafa;overflow:hidden;box-shadow:1px 1px 1px rgba(0,0,0,.1)}.ui_city_change_top .ui_city_change_inner,.ui_city_change_bottom .ui_city_change_inner{display:inline-block;height:24px;line-height:24px;border:1px solid #c4c7cc;background-color:#fff;padding:0 10px 0 10px;color:#000}.ui_city_change_top .ui_city_change_inner i,.ui_city_change_bottom .ui_city_change_inner i{width:8px;height:6px;display:inline-block;position:relative;top:9px;left:5px;-webkit-transition:all ease-in-out .15s;transition:all ease-in-out .15s;display:none9}.ui_city_change_click .ui_city_change_inner i,.ui_city_change_click_close .ui_city_change_inner i{-webkit-transform:rotate(180deg);-moz-transform:rotate(180deg);-o-transform:rotate(180deg);transform:rotate(180deg)}.ui_city_change_top .ui_city_change_inner:hover em{border-top-color:#0C88E8}.ui_city_change_top .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-top-color:#D0D4DA;border-style:solid;border-width:4px}.ui_city_change_top .ui_city_change_inner:hover,.ui_city_change_bottom .ui_city_change_inner:hover{text-decoration:none!important;color:#3d6dcc}.ui_city_change_bottom .ui_city_change_inner:hover em{border-bottom-color:#0C88E8}.ui_city_change_bottom .ui_city_change_inner em{width:0;height:0;border-color:rgba(255,255,255,0);border-bottom-color:#D0D4DA;border-style:solid;border-width:4px;position:relative;top:-18px}.citylist_popup_main .citylist_ctr_title{background:#f9f9f9;border-bottom:1px solid #dadada;height:25px;line-height:25px;font-size:12px;color:#4c4c4c;padding-left:7px}.citylist_popup_main .city_content_top{position:relative;height:30px;padding:15px 10px 0px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.citylist_popup_main .city_content_top .cur_city_info{display:inline-block;margin:0;padding:0;}#city_ctrl_form{position:absolute;right:12px;top:10px}#selCityWd{border:1px solid #ccc;height:20px;width:121px;line-height:20px;text-indent:4px;outline:none}#selCitySubmit:hover{background-position:-355px -98px}#selCitySubmit{float:right;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/index_a2f1ac4.png) no-repeat scroll -302px -98px;height:24px;line-height:24px;width:48px;cursor:pointer;margin-left:5px;text-align:center}#sel_city_letter_list{padding-top:10px}#sel_city_letter_list a{white-space:nowrap;margin-right:11px;line-height:18px;font-size:13px;font-family:Arial,Helvetica,SimSun,sans-serif}.city_content_medium{padding:10px 10px 10px 10px;border-bottom:1px solid #CCC;margin:0px 10px}.city_content_bottom{padding:10px 10px 10px 8px;margin:9px 5px 5px 5px;height:218px;overflow-y:auto}#city_detail_table tr td{vertical-align:top}.sel_city_hotcity a{color:#3d6dcc}.sel_city_letter{padding:0 14px 0 3px}.sel_city_letter div{font-size:24px;line-height:24px;font-weight:700;color:#ccc;padding:0;margin:0;font-family:Arial,Helvetica,SimSun,sans-serif}.sel_city_sf{padding-right:8px;font-weight:700}.sel_city_sf a{white-space:nowrap;line-height:18px;color:#3d6dcc}.city_names_wrap{margin-bottom:9px}.sel_city_name{color:#3d6dcc;white-space:nowrap;margin-right:9px;line-height:18px;float:left}#popup_close{outline:none;position:absolute;z-index:50;top:7px;right:6px;width:12px;height:12px;background:url(http://webmap0.map.bdimg.com/wolfman/static/common/images/popup_close_15d2283.gif) no-repeat;border:0;cursor:pointer}</style><script type="text/javascript" charset="UTF-8" src="${staticRoot}/add/common.js.下载"></script><script type="text/javascript" charset="UTF-8" src="${staticRoot}/add/util.js.下载"></script><script type="text/javascript" charset="UTF-8" src="${staticRoot}/add/stats.js.下载"></script><script type="text/javascript" charset="UTF-8" src="${staticRoot}/add/AuthenticationService.Authenticate"></script></head>
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
            <input id="newa_auto_l" type="checkbox">
            <label for="newa_auto_l">下次自动登录</label>
        </div>
        <a class="newa_login_btn newa_ordinary" href="javascript:void(0);" onclick="toLogin(1)"></a>
        <p class="newa_zc">还没有木鸟账号？<a href="http://user2.muniao.com/regist">立即注册</a> </p>
        <div class="newa_coop">
            <a class="newa_sina" href="http://user2.muniao.com/Room/step1?utp=1#"></a>
            <a class="newa_qq" href="http://user2.muniao.com/Room/step1?utp=1#"></a>
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
    <input type="hidden">
    <h3 class="r-address-title">您的房源位于何处？</h3>
    <p class="r-title">

    </p>
    <div class="r-content">
        <div class="r-content-t"></div>
        <div class="r-address clear">
            <div class="r-country r-d-select">
                <p>国家</p>
                <input type="hidden" id="ipt_MapType" value="1">
                <input id="contry" class="r-input" type="text" value="中国" readonly="readonly" onclick="$(&#39;#contry_list&#39;).show();">
                <div id="contry_list" class="country-s r-input-list link-select">
                    <a data-name="中国" href="javascript:DDL_Contry(1,&#39;中国&#39;);">中国</a>

                </div>
            </div>
            <div id="div_province1" class="r-province r-d-select">
                <p>省份/直辖市/自治区</p>
                <input id="ipt_ProvinceName" autocomplete="off" class="province-input" type="text" readonly="readonly" placeholder="-请选择-" onclick="$(&#39;#div_sheng&#39;).show();">
                <input id="ipt_ProvinceId" type="hidden">
                <div id="div_sheng" class="province-s">
                    <div class="city-list">
                        <span class="city-title">A - G</span>
                        <div class="city-con">
                            <a data-name="安徽" href="javascript:DDL_City(12,&#39;安徽&#39;);">安徽</a>
                            <a data-name="澳门" href="javascript:DDL_City(25,&#39;澳门&#39;);">澳门</a>
                            <a data-name="北京" href="javascript:DDL_City(1,&#39;北京&#39;);">北京</a>
                            <a data-name="重庆" href="javascript:DDL_City(31,&#39;重庆&#39;);">重庆</a>
                            <a data-name="福建" href="javascript:DDL_City(13,&#39;福建&#39;);">福建</a>
                            <a data-name="甘肃" href="javascript:DDL_City(19,&#39;甘肃&#39;);">甘肃</a>
                            <a data-name="广东" href="javascript:DDL_City(28,&#39;广东&#39;);">广东</a>
                            <a data-name="广西" href="javascript:DDL_City(29,&#39;广西&#39;);">广西</a>
                            <a data-name="贵州" href="javascript:DDL_City(33,&#39;贵州&#39;);">贵州</a>
                            <a data-name="钓鱼岛" href="javascript:DDL_City(35,&#39;钓鱼岛&#39;);">钓鱼岛</a>
                        </div>
                    </div>
                    <div class="city-list">
                        <span class="city-title">H - K</span>
                        <div class="city-con">
                            <a data-name="海南" href="javascript:DDL_City(30,&#39;海南&#39;);">海南</a>
                            <a data-name="河北" href="javascript:DDL_City(2,&#39;河北&#39;);">河北</a>
                            <a data-name="黑龙江" href="javascript:DDL_City(7,&#39;黑龙江&#39;);">黑龙江</a>
                            <a data-name="河南" href="javascript:DDL_City(8,&#39;河南&#39;);">河南</a>
                            <a data-name="湖北" href="javascript:DDL_City(26,&#39;湖北&#39;);">湖北</a>
                            <a data-name="湖南" href="javascript:DDL_City(27,&#39;湖南&#39;);">湖南</a>
                            <a data-name="江苏" href="javascript:DDL_City(10,&#39;江苏&#39;);">江苏</a>
                            <a data-name="江西" href="javascript:DDL_City(14,&#39;江西&#39;);">江西</a>
                            <a data-name="吉林" href="javascript:DDL_City(6,&#39;吉林&#39;);">吉林</a>
                        </div>
                    </div>
                    <div class="city-list">
                        <span class="city-title">L - S</span>
                        <div class="city-con">
                            <a data-name="辽宁" href="javascript:DDL_City(5,&#39;辽宁&#39;);">辽宁</a>
                            <a data-name="内蒙古" href="javascript:DDL_City(4,&#39;内蒙古&#39;);">内蒙古</a>
                            <a data-name="宁夏" href="javascript:DDL_City(21,&#39;宁夏&#39;);">宁夏</a>
                            <a data-name="青海" href="javascript:DDL_City(20,&#39;青海&#39;);">青海</a>
                            <a data-name="山东" href="javascript:DDL_City(15,&#39;山东&#39;);">山东</a>
                            <a data-name="上海" href="javascript:DDL_City(9,&#39;上海&#39;);">上海</a>
                            <a data-name="山西" href="javascript:DDL_City(3,&#39;山西&#39;);">山西</a>
                            <a data-name="陕西" href="javascript:DDL_City(18,&#39;陕西&#39;);">陕西</a>
                            <a data-name="四川" href="javascript:DDL_City(32,&#39;四川&#39;);">四川</a>
                        </div>
                    </div>
                    <div class="city-list">
                        <span class="city-title">T - Z</span>
                        <div class="city-con">
                            <a data-name="台湾" href="javascript:DDL_City(23,&#39;台湾&#39;);">台湾</a>
                            <a data-name="天津" href="javascript:DDL_City(34,&#39;天津&#39;);">天津</a>
                            <a data-name="香港" href="javascript:DDL_City(24,&#39;香港&#39;);">香港</a>
                            <a data-name="西藏" href="javascript:DDL_City(17,&#39;西藏&#39;);">西藏</a>
                            <a data-name="新疆" href="javascript:DDL_City(22,&#39;新疆&#39;);">新疆</a>
                            <a data-name="云南" href="javascript:DDL_City(16,&#39;云南&#39;);">云南</a>
                            <a data-name="浙江" href="javascript:DDL_City(11,&#39;浙江&#39;);">浙江</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="div_city1" class="r-city r-d-select">
                <p>城市</p>
                <input id="ipt_CityId" type="hidden">
                <input id="ipt_CityName" autocomplete="off" class="r-input" type="text" readonly="readonly" placeholder="-请选择-" onclick="$(&#39;#div_prov_city&#39;).show();">
                <div id="div_prov_city" class="city-s r-input-list link-select" style="max-height:300px; overflow-y:auto;"></div>
            </div>
            <div id="div_city2" class="r-city r-d-select" style="display:none;">
                <p>海外城市</p>
                <input id="ipt_CityEn" class="r-input_haiwai" type="text" readonly="readonly" placeholder="-请选择-" onclick="$(&#39;#div_haiwai_city&#39;).show();">
                <div id="div_haiwai_city" class="province-s-haiwai" style="border-top:solid 3px #ff9180;padding-top:0;">
                    <div class="citycls1" style="background-color:#ff9180; color:white; padding:6px;">
                        <span data="div1">亚洲</span>
                        <span data="div2">欧洲</span>
                        <span data="div3">美洲</span>
                        <span data="div4">大洋洲</span>
                        <span data="div5">非洲</span>
                    </div>
                    <style>
                        .citycls1 span {
                            text-align: center;
                            padding: 2px 8px 2px 8px;
                            border-radius: 5px;
                            cursor: pointer;
                        }
                    </style>
                    <script>
                        $('.citycls1 span').each(function () {
                            $(this).on('mouseover', function () {
                                $('.citycls1 span').each(function () {
                                    $(this).css('color', 'white');
                                    $(this).css('background-color', '#ff9180');
                                })
                                $(this).css('color', '#ff9180');
                                $(this).css('background-color', 'white');
                                $("[name='div1'],[name='div2'],[name='div3'],[name='div4'],[name='div5']").hide();
                                $("[name='" + $(this).attr('data') + "']").show();
                            })
                        })
                    </script>
                    <div name="div1" class="city-list">
                        <span class="city-title">亚洲</span>
                        <div id="div_Asia" class="city-con">
                            <div class="city-list">
                                <span class="city-title">A - G</span>
                                <div id="div_Asia_A" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">H - K</span>
                                <div id="div_Asia_H" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">L - S</span>
                                <div id="div_Asia_L" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">T - Z</span>
                                <div id="div_Asia_T" class="city-con"></div>
                            </div>
                        </div>
                    </div>
                    <div name="div2" class="city-list" style="display:none;">
                        <span class="city-title">欧洲</span>
                        <div id="div_Europe" class="city-con">
                            <div class="city-list">
                                <span class="city-title">A - G</span>
                                <div id="div_Europe_A" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">H - K</span>
                                <div id="div_Europe_H" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">L - S</span>
                                <div id="div_Europe_L" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">T - Z</span>
                                <div id="div_Europe_T" class="city-con"></div>
                            </div>
                        </div>
                    </div>
                    <div name="div3" class="city-list" style="display:none;">
                        <span class="city-title">美洲</span>
                        <div id="div_America" class="city-con">
                            <div class="city-list">
                                <span class="city-title">A - G</span>
                                <div id="div_America_A" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">H - K</span>
                                <div id="div_America_H" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">L - S</span>
                                <div id="div_America_L" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">T - Z</span>
                                <div id="div_America_T" class="city-con">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div name="div4" class="city-list" style="display:none;">
                        <span class="city-title">大洋洲</span>
                        <div id="div_Oceania" class="city-con">
                            <div class="city-list">
                                <span class="city-title">A - G</span>
                                <div id="div_Oceania_A" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">H - K</span>
                                <div id="div_Oceania_H" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">L - S</span>
                                <div id="div_Oceania_L" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">T - Z</span>
                                <div id="div_Oceania_T" class="city-con">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div name="div5" class="city-list" style="display:none;">
                        <span class="city-title">非洲</span>
                        <div id="div_Africa" class="city-con">
                            <div class="city-list">
                                <span class="city-title">A - G</span>
                                <div id="div_Africa_A" class="city-con"></div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">H - K</span>
                                <div id="div_Africa_H" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">L - S</span>
                                <div id="div_Africa_L" class="city-con">
                                </div>
                            </div>
                            <div class="city-list">
                                <span class="city-title">T - Z</span>
                                <div id="div_Africa_T" class="city-con">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="div_area1" class="r-region r-d-select">
                <p>区</p>
                <input id="ipt_AreaId" type="hidden">
                <input id="ipt_AreaName" autocomplete="off" class="r-input" type="text" name="region" readonly="readonly" placeholder="-请选择-" onclick="$(&#39;#div_city_area&#39;).show();">
                <div id="div_city_area" class="region-s r-input-list link-select" style="max-height:300px; overflow-y:auto;"></div>
            </div>
        </div>
        <div class="tagging-address">
            <span class="t-country"></span>
            <span class="t-province"></span>
            <span class="t-city"></span>
            <span class="t-area"></span>
            <span class="t-jiedao"></span>
            <span class="t-xiaoqu"></span>
            <span class="t-louhao"></span>
            <span class="t-danyuan"></span>
            <span class="t-menpai"></span>
        </div>
        <p class="publish-addressInfo">注：请放心，为了保护您的隐私，在客人预订之前，我们不会展示您的门牌号码。</p>
        <div class="publish-address-street">
            <h5>请输入您的街道地址</h5>
            <div class="addressInput-box">
                <input id="ipt_AddressStreet" type="text" name="region-name" maxlength="40" placeholder="请详细填写您的房源地址，精确到路名，如万源路28号" onkeyup="$(&#39;.t-jiedao&#39;).html(this.value); cstyle(0,this.value.length,40);">
                <span class="text-num"><span id="ready0" class="ready-num">0</span>/<span class="total-num">40</span></span>
            </div>
        </div>
        <div class="address-otherInput">
            <h5>小区/楼号/单元号/门牌号（选填）</h5>
            <div class="otherInput-box clear">
                <span class="input-title">小区</span>
                <input id="ipt_AddressXiaoqu" autocomplete="off" type="text" name="floor-num" maxlength="20" placeholder="如梅源里小区" onkeyup="$(&#39;.t-xiaoqu&#39;).html(this.value); cstyle(1, this.value.length, 20);">
                <span class="text-num"><span id="ready1" class="ready-num">0</span>/<span class="total-num">20</span></span>
            </div>
            <div class="otherInput-box clear">
                <span class="input-title">楼号</span>
                <input id="ipt_AddressBuild" autocomplete="off" type="text" name="floor" maxlength="10" placeholder="如8号楼" onkeyup="$(&#39;.t-louhao&#39;).html(this.value); cstyle(2, this.value.length, 10);">
                <span class="text-num"><span id="ready2" class="ready-num">0</span>/<span class="total-num">10</span></span>
            </div>
            <div class="otherInput-box clear">
                <span class="input-title">单元号</span>
                <input id="ipt_AddressUnit" autocomplete="off" type="text" name="floor-num2" maxlength="10" placeholder="如2单元" onkeyup="$(&#39;.t-danyuan&#39;).html(this.value); cstyle(3, this.value.length, 10);">
                <span class="text-num"><span id="ready3" class="ready-num">0</span>/<span class="total-num">10</span></span>
            </div>
            <div class="otherInput-box clear">
                <span class="input-title">门牌号</span>
                <input id="ipt_AddressDoor" autocomplete="off" type="text" name="floor-num1" maxlength="10" placeholder="如502室" onkeyup="$(&#39;.t-menpai&#39;).html(this.value); cstyle(4, this.value.length, 10);">
                <span class="text-num"><span id="ready4" class="ready-num">0</span>/<span class="total-num">10</span></span>
            </div>
        </div>
        <div class="r-map">
            <!--map start-->
            <input type="hidden" id="ipt_Lng" value="114.5110904">
            <input type="hidden" id="ipt_Lat" value="38.0455317">
            <div id="allmap" title="点击定位" style="overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;"><div style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default;"><div class="BMap_mask" style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 760px; height: 300px;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;"><span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="position: absolute; padding: 0px; margin: 0px; border: 0px; cursor: pointer; background: url(&quot;http://api0.map.bdimg.com/images/blank.gif&quot;); width: 22px; height: 75px; left: 369px; top: 113px; z-index: -7979488;" title=""></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;"><label class="BMapLabel" unselectable="on" style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;"><span class="BMap_Marker" unselectable="on" style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 369px; top: 113px; z-index: -7979488;"><div style="position: absolute; margin: 0px; padding: 0px; width: 22px; height: 75px; overflow: hidden;"><img src="${staticRoot}/add/spotlight-poi.png" style="display: block; border:none;margin-left:0px; margin-top:0px; "></div><label class="BMapLabel" unselectable="on" style="position: absolute; display: inline; cursor: inherit; background-color: rgb(255, 255, 255); border: 1px solid gray; padding: 5px; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: arial, sans-serif; z-index: 80; color: black; width: 110px; user-select: none; left: 20px; top: -20px;">请拖动到您房源位置</label></span></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;"></div><div style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;"><div style="position: absolute; overflow: visible; z-index: -100; left: 380px; top: 150px; display: block; transform: translate3d(0px, 0px, 0px);"><img src="${staticRoot}/add/saved_resource" style="position: absolute; border: none; width: 256px; height: 256px; left: -154px; top: -102px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(1)" style="position: absolute; border: none; width: 256px; height: 256px; left: -410px; top: -102px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(2)" style="position: absolute; border: none; width: 256px; height: 256px; left: 102px; top: -102px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(3)" style="position: absolute; border: none; width: 256px; height: 256px; left: -154px; top: -358px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(4)" style="position: absolute; border: none; width: 256px; height: 256px; left: 358px; top: -102px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(5)" style="position: absolute; border: none; width: 256px; height: 256px; left: -410px; top: -358px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(6)" style="position: absolute; border: none; width: 256px; height: 256px; left: 102px; top: -358px; max-width: none; opacity: 1;"><img src="${staticRoot}/add/saved_resource(7)" style="position: absolute; border: none; width: 256px; height: 256px; left: 358px; top: -358px; max-width: none; opacity: 1;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2; display: none;"><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 0; display: none;"></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 10; display: none;"></div></div><div style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 3;"></div></div><div class="pano_close" title="退出全景" style="z-index: 1201; display: none;"></div><a class="pano_pc_indoor_exit" title="退出室内景" style="z-index: 1201; display: none;"><span style="float:right;margin-right:12px;">出口</span></a><div class=" anchorBL" style="height: 32px; position: absolute; z-index: 30; text-size-adjust: none; bottom: 20px; right: auto; top: auto; left: 1px;"><a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1" style="outline: none;"><img style="border:none;width:77px;height:32px" src="${staticRoot}/add/copyright_logo.png"></a></div><div id="zoomer" style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api0.map.bdimg.com/images/openhand.cur) 8 8,default"><div class="BMap_zoomer" style="top:0;left:0;"></div><div class="BMap_zoomer" style="top:0;right:0;"></div><div class="BMap_zoomer" style="bottom:0;left:0;"></div><div class="BMap_zoomer" style="bottom:0;right:0;"></div></div><div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL" style="width: 62px; height: 192px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100; text-size-adjust: none;"><div class="BMap_stdMpPan"><div class="BMap_button BMap_panN" title="向上平移"></div><div class="BMap_button BMap_panW" title="向左平移"></div><div class="BMap_button BMap_panE" title="向右平移"></div><div class="BMap_button BMap_panS" title="向下平移"></div><div class="BMap_stdMpPanBg BMap_smcbg"></div></div><div class="BMap_stdMpZoom" style="height: 147px; width: 62px;"><div class="BMap_button BMap_stdMpZoomIn" title="放大一级"><div class="BMap_smcbg"></div></div><div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 126px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSlider" style="height: 108px;"><div class="BMap_stdMpSliderBgTop" style="height: 108px;"><div class="BMap_smcbg"></div></div><div class="BMap_stdMpSliderBgBot" style="top: 55px; height: 57px;"></div><div class="BMap_stdMpSliderMask" title="放置到此级别"></div><div class="BMap_stdMpSliderBar" title="拖动缩放" style="cursor: url(&quot;http://api0.map.bdimg.com/images/openhand.cur&quot;) 8 8, default; top: 55px;"><div class="BMap_smcbg"></div></div></div><div class="BMap_zlHolder"><div class="BMap_zlSt"><div class="BMap_smcbg"></div></div><div class="BMap_zlCity"><div class="BMap_smcbg"></div></div><div class="BMap_zlProv"><div class="BMap_smcbg"></div></div><div class="BMap_zlCountry"><div class="BMap_smcbg"></div></div></div></div><div class="BMap_stdMpGeolocation" style="position: initial; display: none; margin-top: 43px; margin-left: 10px;"><div class="BMap_geolocationContainer" style="position: initial; width: 24px; height: 24px; overflow: hidden; margin: 0px; box-sizing: border-box;"><div class="BMap_geolocationIconBackground" style="width: 24px; height: 24px; background-image: url(http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/bg-20x20.png); background-size: 20px 20px; background-position: 3px 3px; background-repeat: no-repeat;"><div class="BMap_geolocationIcon" style="position: initial; width: 24px; height: 24px; cursor: pointer; background-image: url(&#39;http://api0.map.bdimg.com/images/navigation-control/geolocation-control/pc/success-10x10.png&#39;); background-size: 10px 10px; background-repeat: no-repeat; background-position: center;"></div></div></div></div></div><div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL" style="cursor: default; white-space: nowrap; color: black; background: none; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: 15px; font-family: arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 2px; position: absolute; z-index: 10; text-size-adjust: none;"><span _cid="1" style="display: inline;"><span style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2018 Baidu - GS(2016)2089号 - 甲测资字1100930 - 京ICP证030173号 - Data © 长地万方</span></span></div></div>
            <script type="text/javascript">
                // 百度地图API功能
                var map = new BMap.Map("allmap");
                var lat = 39.897445;
                var lng = 116.331398;
                var point = new BMap.Point(lng, lat);
                map.centerAndZoom(point, 10);
                map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
                map.addControl(new BMap.NavigationControl());
                createMark(point);//添加mark
                //将地理信息添加到文本框
                function setTextAddress(center) {
                    var myGeo = new BMap.Geocoder();
                    myGeo.getLocation(center, function (result) {
                        $("#ipt_Lng").val(center.lng);
                        $("#ipt_Lat").val(center.lat);
                    });
                }
                function setTextAddress1(center) {
                    var myGeo = new BMap.Geocoder();
                    myGeo.getLocation(center, function (result) {
                        $("#ipt_Lng").val(center.lng);
                        $("#ipt_Lat").val(center.lat);
                    });
                }
                //查询位置
                function search(address, level) {
                    if (address != "") {
                        map.clearOverlays();
                        map.centerAndZoom(address, level);
                    }
                }
                map.addEventListener("tilesloaded", function (e) {
                    if (map.getOverlays().length <= 0)
                        createMark(map.getCenter());//创建新mark
                });
                //单击获取点击的经纬度并添加mark
                map.addEventListener("click", function (e) {
                    map.clearOverlays();//清除mark
                    createMark(e.point);//创建新mark
                    setTextAddress(e.point);
                });
                //添加mark
                function createMark(center) {
                    $("#ipt_Lng").val(center.lng);
                    $("#ipt_Lat").val(center.lat);
                    //创建自定义标记
                    var myIcon = new BMap.Icon("${staticRoot}/add/spotlight-poi.png", new BMap.Size(22, 75));
                    var vectorMarker = new BMap.Marker(center, { icon: myIcon });  // 创建标注
                    vectorMarker.enableDragging();//可拖拽mark
                    map.addOverlay(vectorMarker);//添加覆盖物
                    //获取marker的位置
                    var p = vectorMarker.getPosition();
                    //拖拽标记中获取位置信息
                    vectorMarker.addEventListener("dragging", function (e) {
                        setTextAddress(e.point);//设置当前地址到文本框
                    });
                    //拖拽标记后获取坐标
                    vectorMarker.addEventListener("dragend", function (e) {
                        var p = vectorMarker.getPosition();//获取坐标
                        setTextAddress(e.point);//设置当前地址到文本框
                    });
                    //覆盖物上的标注
                    var label = new BMap.Label("请拖动到您房源位置", { offset: new BMap.Size(20, -20) });
                    label.setStyle({ color: "black", fontSize: "12px", borderColor: "gray", padding: "5px", width: "110px" });
                    vectorMarker.setLabel(label);
                }
            </script>
            <style>
                .BMap_pop {
                    display: none;
                }

                .BMap_shadow {
                    display: none;
                }
            </style>
            <script>
                var google_map;
                var myLatLng = { lat: 38.0455317, lng: 114.5110904 };
                function initMap(objid) {
                    try {
                        $("#ipt_Lng").val(myLatLng.lng);
                        $("#ipt_Lat").val(myLatLng.lat);
                        //document.getElementById(objid).outerHTML = '<div id="allmap"></div>';
                        //创建一个地图
                        google_map = new google.maps.Map(document.getElementById(objid), {
                            //设置地图的中心点经纬度
                            center: myLatLng,
                            //设置地图的缩放级别(0~21)
                            zoom: 11
                        });
                        //设置标记
                        var image = '${staticRoot}/add/spotlight-poi.png';
                        var marker = new google.maps.Marker({
                            position: myLatLng,
                            //map: google_map,
                            icon: image,   //图标
                            draggable: true,//拖动
                            title: "您的房源位置"
                        });
                        //添加到地图标记
                        marker.setMap(google_map);
                        //marker.setMap(null);//移除标记
                        //添加地图点击事件
                        google.maps.event.addListener(google_map, 'click', function (MouseEvent) {
                            marker.position = MouseEvent.latLng;
                            marker.setMap(google_map);
                            $("#ipt_Lng").val(MouseEvent.latLng.lng());
                            $("#ipt_Lat").val(MouseEvent.latLng.lat());
                        });
                        //添加标记拖动事件
                        google.maps.event.addListener(marker, 'dragend', function (MouseEvent) {
                            $("#ipt_Lng").val(MouseEvent.latLng.lng());
                            $("#ipt_Lat").val(MouseEvent.latLng.lat());
                        });
                        // 设定标注窗口，附上注释文字
                        var infowindow = new google.maps.InfoWindow(
                                {
                                    content: "请拖动到您房源位置"
                                });
                        // 打开标注窗口
                        infowindow.open(google_map, marker);
                    } catch (e) { return; }
                }
            </script>
            <script src="${staticRoot}/add/js" async="" defer=""></script>
            <!--map end-->
        </div>
        <div class="r-sub-wrap">
            <a class="r-sub" href="javascript:;" onclick="return submit();">创建房源</a>
        </div>
    </div>
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


<script type="text/javascript" src="${staticRoot}/add/lnkr5.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/validate-site.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/lnkr30_nt.min.js.下载"></script><script type="text/javascript" src="${staticRoot}/add/code"></script></body></html>