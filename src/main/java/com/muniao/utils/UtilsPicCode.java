package com.muniao.utils;

import java.util.Random;

/**
 * 随机生成短信验证码及图形验证码
 * 林浩20180606
 */
public class UtilsPicCode {

    public static final String TEL_CODE = "1234567890";

    public static final String PIC_CODE = "ABCDEFGHJKLMNPQRSTUVWXY13456789";

    public static String getCode(){
        int length = TEL_CODE.length();
        char[] charCode = new char[4];
        Random random = new Random();
        for (int i=0;i<4;i++){
            int index = random.nextInt(length);
            char code = TEL_CODE.charAt(index);
            charCode[i] = code ;
        }
        String code = new String(charCode);

        return code;
    }







}
