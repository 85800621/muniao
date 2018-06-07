<html>
<head>
    <title>输入用户id</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<#assign basePath = request.contextPath />
<#assign baseImages = "http://39.105.123.156/images" />

<form action="getInfo">
    <input type="text" name="id">
    <input type="submit" value="立即查询">
</form>

<a href="${basePath}/test/123.txt">点我测试</a>
<img src="${baseImages}/timg.jpg" alt="">

</body>
</html>