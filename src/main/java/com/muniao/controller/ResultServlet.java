package com.muniao.controller;

import com.muniao.utils.XMLUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ResultServlet {
    private static Logger logger = Logger.getLogger(ResultServlet.class);
    //模拟订单支付成功后处理
    private static Map<String,Boolean> order = new HashMap<String,Boolean>();
    @RequestMapping("/payment/result")
    public void handle(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException, IOException {
        System.out.println("success!!!!!!!!!!!!!!!!!!");
        try {
            weixin_notify(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void weixin_notify(HttpServletRequest request, HttpServletResponse
            response) throws Exception{
        System.out.println("测试是否进入此方法!");
        InputStream inputStream = request.getInputStream();
        StringBuffer sb = new StringBuffer();
        String s ;
        BufferedReader in = new BufferedReader(new InputStreamReader (inputStream,
                "UTF-8"));
        while ((s = in.readLine()) != null){
            sb.append(s);
        }
        in.close();
        inputStream.close();
        String resXml = "";
        Map xmlParse = XMLUtil.doXMLParse ( sb.toString () );
        if(xmlParse.get ( "result_code" ).equals ( "SUCCESS" )){
            order.put ( xmlParse.get ( "out_trade_no" ).toString (),true );
            resXml = "<xml>" + "<return_code><![CDATA[SUCCESS]]> </return_code>"
                    + "<return_msg><![CDATA[OK]]></return_msg>" + "</xml> ";
        }else {
            resXml = "<xml>" + "<return_code><![CDATA[FAIL]]></return_code>"
                    + "<return_msg><![CDATA[报文为空]]></return_msg>" + "</xml>";
        }
        BufferedOutputStream out = new BufferedOutputStream(
                response.getOutputStream());
        out.write(resXml.getBytes());
        out.flush();
        out.close();
        logger.info ( "resule_code:"+ xmlParse.get ( "result_code" )+"~~~结束");
    }

    @RequestMapping("/payment/ifSuccess")
    @ResponseBody
    public Boolean isSuccess(String id){
        System.out.println("successfully!!!!!!!!!!!!!");
        Boolean aBoolean = order.get ( id );
        if(aBoolean == null ||aBoolean ==false){
            return false;
        }
        return true;
    }

    @RequestMapping("/payment/gotoSuccess")
    public String gotoSuccess(){
        return "/success";
    }
}
