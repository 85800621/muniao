<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <script src="/weichatPay/jquery-3.3.1.js" type="text/javascript"></script>
</head>
<body>
当前是支付页面，订单号是: ${oid} <br>请扫码支付
<img src="image">
<script>
    $(function(){
        var id = ${oid};
        setInterval(function(){check()} , 30000);
        function check(){
            $.post(
                "ifSuccess",{"id":id},function (data) {
                    if(data==true){
                        window.location.href = 'gotoSuccess';
                    }
                }
            );
        }
    })
</script>
</body>
</html>