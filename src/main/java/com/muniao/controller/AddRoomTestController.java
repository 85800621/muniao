package com.muniao.controller;

import com.alibaba.fastjson.JSON;
import com.muniao.entity.JsonData;
import com.muniao.entity.PostData;
import com.muniao.utils.imgUploadUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

/**
 * Created by XiaBing on 2018/6/11 (18:01)
 */

@Controller
@RequestMapping("/Room")
public class AddRoomTestController {

    @ResponseBody
    @RequestMapping("/Submit_Step1")
    public JsonData step1(String postData){

        System.out.println("+++++++++++++++" + postData);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        jsonData.setRoomid(203026);

        PostData postData1 = JSON.parseObject(postData,PostData.class);
        System.out.println("=============" + postData1);

        String jsonString = JSON.toJSONString(jsonData);

        return jsonData;
    }

    @ResponseBody
    @RequestMapping("/Submit_Step2")
    public JsonData step2(String postData,String JsonParams,int roomid){

        System.out.println("进入第二步");
        System.out.println("+++++++++++++++" + postData);
        System.out.println("===============" + JsonParams);
        System.out.println("房间id---------" + roomid);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        jsonData.setRoomid(203026);

        String jsonString = JSON.toJSONString(jsonData);

        return jsonData;
    }

    @ResponseBody
    @RequestMapping("/Submit_Step3")
    public JsonData step3(String postData){

        System.out.println("进入第三步");
        System.out.println("+++++++++++++++" + postData);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        jsonData.setRoomid(203026);

        return jsonData;
    }

    @ResponseBody
    @RequestMapping("/Submit_Step4")
    public JsonData step4(String postData){

        System.out.println("进入第四步");
        System.out.println("+++++++++++++++" + postData);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        jsonData.setRoomid(203026);

        return jsonData;
    }

    @ResponseBody
    @RequestMapping("/Submit_Step5")
    public JsonData step5(String postData){

        System.out.println("进入第五步");
        System.out.println("+++++++++++++++" + postData);

        JsonData jsonData = new JsonData();
        jsonData.setStatus(0);
        jsonData.setRoomid(203026);

        return jsonData;
    }

    @RequestMapping("/fileupload")
    public String fileupload(){
        try {
            imgUploadUtil.upload("C:\\javaFile\\0228.png","upload","0228.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("文件上传完成");
        return "/index";
    }


}
