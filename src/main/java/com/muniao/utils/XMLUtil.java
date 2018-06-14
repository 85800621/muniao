package com.muniao.utils;

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

public class XMLUtil {
    public static Map doXMLParse(String strxml) throws JDOMException, IOException {
        strxml = strxml.replaceFirst("encoding=\".*\"", "encoding=\"UTF-8\"");
        if(null == strxml || "".equals(strxml)) {
            return null;
        }
        Map m = new HashMap ();
        InputStream in = new ByteArrayInputStream (strxml.getBytes("UTF-8"));
        SAXBuilder builder = new SAXBuilder();
        Document doc = builder.build(in);
        Element root = doc.getRootElement();
        List list = root.getChildren();
        Iterator it = list.iterator();
        while(it.hasNext()) {
            Element e = (Element) it.next();
            String k = e.getName();
            String v = "";
            List children = e.getChildren();
            if(children.isEmpty()) {
                v = e.getTextNormalize();
            } else {
                v = XMLUtil.getChildrenText(children);
            }
            m.put(k, v);
        }
        in.close();
        return m;
    }
    public static String getChildrenText(List children) {
        StringBuffer sb = new StringBuffer ();
        if(!children.isEmpty ()){
            Iterator it = children.iterator ();
            while (it.hasNext ()){
                Element e =(Element) it.next();
                String name = e.getName ();
                String value = e.getTextNormalize ();
                List list = e.getChildren ();
                sb.append("<" + name + ">");
                if(!list.isEmpty()) {
                    sb.append(XMLUtil.getChildrenText(list));
                }
                sb.append(value);
                sb.append("</" + name + ">");
            }
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String str = "<xml><appid><![CDATA[wx632c8f211f8122c6]]></appid><bank_type><![CDATA[CFT]]></bank_type><cash_fee><![CDATA[1]]></cash_fee><fee_type><![CDATA[CNY]]></fee_type><is_subscribe><![CDATA[N]]></is_subscribe><mch_id><![CDATA[1497984412]]></mch_id><nonce_str><![CDATA[1125594456]]></nonce_str><openid><![CDATA[oUuptwpbHwY9s9F9bDJSzP8T0QLk]]></openid><out_trade_no><![CDATA[25147366]]></out_trade_no><result_code><![CDATA[SUCCESS]]></result_code><return_code><![CDATA[SUCCESS]]></return_code><sign><![CDATA[6E949DAC071E4DF1E0953AD0D9E49E4A]]></sign><time_end><![CDATA[20180612112609]]></time_end><total_fee>1</total_fee><trade_type><![CDATA[NATIVE]]></trade_type><transaction_id><![CDATA[4200000157201806127645717015]]></transaction_id></xml>\n";
        try {
            Map map = XMLUtil.doXMLParse ( str );
            Set set = map.keySet ();
            for (Object o : set) {
                System.out.println ("key:"+o.toString ());
            }
            System.out.println ("resulecode:"+map.get ( "result_code" ));
        } catch (JDOMException e) {
            e.printStackTrace ();
        } catch (IOException e) {
            e.printStackTrace ();
        }
    }
}
