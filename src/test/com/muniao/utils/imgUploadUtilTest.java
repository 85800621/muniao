package com.muniao.utils;

import org.junit.Test;

/**
 * 夏冰 创建于 2018-06-06 11:20
 * 图片上传工具测试类
 */
public class imgUploadUtilTest {
    @Test
    public void upload() throws Exception {

        boolean upload = imgUploadUtil.upload("C:\\imagesServer\\images\\timg.jpg", "","33.jpg");
        System.out.println(upload);
    }

}