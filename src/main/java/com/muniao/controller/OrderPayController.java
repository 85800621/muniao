package com.muniao.controller;

import com.muniao.utils.PayCommonUtil;
import com.muniao.utils.ZxingUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

@Controller
@RequestMapping("/payment")
public class OrderPayController {
    Random random = new Random ();
    @RequestMapping(value="/test/{tittle}/{orderId}")
    public String payOrder(@PathVariable("orderId")int orderId,@PathVariable("tittle") String tittle, Model model,HttpServletRequest request){
        String body="1231232131";
        String price="1";
        String orderpayId = random.nextInt(100000000) + "";
        System.out.println(orderpayId);
        try {
            body = new String(body.getBytes("ISO8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        System.out.println(body);
        try{
            String url=PayCommonUtil.weixin_pay(price,body,orderpayId);
            BufferedImage image =ZxingUtil.createImage(url,300,300);
            System.out.println ("erweima:"+url);
            model.addAttribute("oid",orderpayId);
            model.addAttribute("image",image);
            request.getSession().setAttribute("image",image);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "pay";
    }
//    Random random = new Random ();
//    private static Logger logger = Logger.getLogger(TestServlet.class);
//    @RequestMapping("/payment/test")
//    public String payPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        logger.info ( "测试~！~！~！~！~！~！~！~！" );
//        String price = "1";
//        String body = req.getParameter("orders");
//        if (req.getMethod().equalsIgnoreCase("get")) {
//            body = new String(body.getBytes("ISO8859-1"), "UTF-8");
//        }
//        String orderId = random.nextInt(100000000) + "";
//        try {
//            String url = PayCommonUtil.weixin_pay(price, body, orderId);
//            System.out.println ("erweima:"+url);
//            BufferedImage image = ZxingUtil.createImage(url, 300, 300);
//            req.getSession().setAttribute("oid",orderId);
//            req.getSession().setAttribute("image", image);
//        } catch (Exception e) {
//            e.printStackTrace ();
//        }
//        System.out.println ("oid:"+orderId);
//        return "payment";
//    }
}
