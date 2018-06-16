package com.muniao.controller;

import com.muniao.entity.JsonData;
import com.muniao.utils.UploadConfig;
import com.muniao.utils.imgUploadUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by XiaBing on 2018/6/11 (18:01)
 */

@Controller
@RequestMapping("/Room")
public class UploadController {

    @Resource
    private UploadConfig uploadConfig;

    @ResponseBody
    @RequestMapping("/fileupload")
    public JsonData fileupload(MultipartFile Filedata){

        String fileName = UUID.randomUUID().toString();
        try {
            imgUploadUtil.upload(Filedata,"upload",fileName +".png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        String imgUrl = "/upload/" + fileName + ".png";
        JsonData jsonData = new JsonData();
        jsonData.setRet(0);
        jsonData.setUrl(imgUrl);
        jsonData.setMsg("上传成功");
        return jsonData;
    }

}
