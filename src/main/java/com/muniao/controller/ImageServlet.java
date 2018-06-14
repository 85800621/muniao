package com.muniao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

@Controller
public class ImageServlet {

    @RequestMapping("/payment/image")
    public void iamge(HttpServletRequest req, HttpServletResponse resp) throws
            ServletException, IOException{
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        BufferedImage image = (BufferedImage)
                req.getSession().getAttribute("image");
        if (image != null) {
            ImageIO.setUseCache(false);
            ImageIO.write(image, "JPEG", resp.getOutputStream());
        }
    }
}
