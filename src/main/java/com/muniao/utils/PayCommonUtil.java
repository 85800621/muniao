package com.muniao.utils;

import org.apache.log4j.Logger;

import java.text.SimpleDateFormat;
import java.util.*;

public class PayCommonUtil {
    private static Logger logger = Logger.getLogger(PayCommonUtil.class);
    public static boolean isTenpaySign(String characterEncoding, SortedMap<Object,
                Object> packageParams, String API_KEY) {
//        logger.info ( "1111111111111111111111进入了 PayCommonUtil.isTenpaySign()方法~-。-。-。-。-。-。-。-。-。-。-。-" );
        StringBuffer sb = new StringBuffer();
        Set es = packageParams.entrySet();

        Set<Object> objects = packageParams.keySet ();
//        logger.info ( "遍历packageParams.keySet ()，观察是否含有 sign 值" );
        for (Object object : objects) {
            logger.info ( "键："+object.toString () );
        }

        Iterator it = es.iterator();
//        logger.info ( "1111111111111进入了 迭代方法isTenpaySign~之前-。-。-。-。-。-。-。-。-。-。-。-" );
        while(it.hasNext()) {
            Map.Entry entry = (Map.Entry)it.next();
            String k = (String)entry.getKey();
            String v = (String)entry.getValue();
//            logger.info ( "1111111111111进入了 if(!\"sign\".equals(k) && null != v && !\"\".equals(v)~之前-。-。-。-。-。-。-。-。-。-。-。-" );
            if(!"sign".equals(k) && null != v && !"".equals(v)) {
                sb.append(k + "=" + v + "&");
            }
        }
//        logger.info ( "1111111111111进入了 迭代方法isTenpaySign~之后-。-。-。-。-。-。-。-。-。-。-。-" );
        sb.append("key=" + API_KEY);
        String mysign = MD5Util.MD5Encode(sb.toString(),
                characterEncoding).toLowerCase();
//        logger.info ( "mysign::::::::"+mysign);

        Object sign = packageParams.get ( "sign" );
        if(sign==null){
//            logger.info ( "sign::::::::"+"sign为null~~~~~~~~~~");
        }else{
//            logger.info ( "sign::::::::"+sign.toString ());
            String tenpaySign = ((String)packageParams.get("sign")).toLowerCase();
//            logger.info ( "tenpaySign::::::::"+tenpaySign+"1111111111111进入了 迭代方法isTenpaySign~之后-。-。-。-。-。-。-。-。-。-。-。-" );
            return tenpaySign.equals(mysign);
        }

        return true;


    }

    public static String createSign(String characterEncoding, SortedMap<Object,
            Object> packageParams, String API_KEY) {
        StringBuffer sb = new StringBuffer();
        Set es = packageParams.entrySet();
        Iterator it = es.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String k = (String) entry.getKey();
            String v = (String) entry.getValue();
            if (null != v && !"".equals(v) && !"sign".equals(k) &&
                    !"key".equals(k)) {
                sb.append(k + "=" + v + "&");
            }
        }
        sb.append("key=" + API_KEY);
        String sign = MD5Util.MD5Encode(sb.toString(),
                characterEncoding).toUpperCase();
        return sign;
    }

    public static String getRequestXml(SortedMap<Object, Object> parameters) {
        StringBuffer sb = new StringBuffer();
        sb.append("<xml>");
        Set es = parameters.entrySet();
        Iterator it = es.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String k = (String) entry.getKey();
            String v = (String) entry.getValue();
            if ("attach".equalsIgnoreCase(k) || "body".equalsIgnoreCase(k) ||
                    "sign".equalsIgnoreCase(k)) {
                sb.append("<" + k + ">" + "<![CDATA[" + v + "]]></" + k + ">");
            } else {
                sb.append("<" + k + ">" + v + "</" + k + ">");
            }
        }
        sb.append("</xml>");
        return sb.toString();
    }

    public static int buildRandom(int length) {
        int num = 1;
        double random = Math.random();
        if (random < 0.1) {
            random = random + 0.1;
        }
        for (int i = 0; i < length; i++) {
            num = num * 10;
        }
        return (int) ((random * num));
    }

    public static String getCurrTime() {
        Date now = new Date();
        SimpleDateFormat outFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String s = outFormat.format(now);
        return s;
    }

    public static String weixin_pay( String order_price,String body,String
            out_trade_no) throws Exception {
        System.out.println("!!!!!!!!!!!!!!!!!!!!!");
        String appid = PayConfigUtil.APP_ID; // appid
        //String appsecret = PayConfigUtil.APP_SECRET; // appsecret
        String mch_id = PayConfigUtil.MCH_ID; // ࠟӱݩ
        String key = PayConfigUtil.API_KEY; // key
        String currTime = PayCommonUtil.getCurrTime();
        String strTime = currTime.substring(8, currTime.length());
        String strRandom = PayCommonUtil.buildRandom(4) + "";
        String nonce_str = strTime + strRandom;
        String spbill_create_ip = PayConfigUtil.CREATE_IP;
        String notify_url = PayConfigUtil.NOTIFY_URL;
        String trade_type = "NATIVE";
        SortedMap<Object,Object> packageParams = new TreeMap<Object,Object>();
        packageParams.put("appid", appid);
        packageParams.put("mch_id", mch_id);
        packageParams.put("nonce_str", nonce_str);
        packageParams.put("body", body);
        packageParams.put("out_trade_no", out_trade_no);
        packageParams.put("total_fee", order_price);
        packageParams.put("spbill_create_ip", spbill_create_ip);
        packageParams.put("notify_url", notify_url);
        packageParams.put("trade_type", trade_type);
        String sign = PayCommonUtil.createSign("UTF-8", packageParams,key);
        packageParams.put("sign", sign);
        String requestXML = PayCommonUtil.getRequestXml(packageParams);
        System.out.println(requestXML);
        String resXml = HttpUtil.postData(PayConfigUtil.UFDOOER_URL, requestXML);
        System.out.println(resXml);
        Map map = XMLUtil.doXMLParse(resXml);
        String urlCode = (String) map.get("code_url");
        return urlCode;
    }
}
