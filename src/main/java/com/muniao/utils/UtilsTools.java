package com.muniao.utils;



import com.muniao.entity.JsonResult;


/**
 * 林浩 20180606
 * 返回页面数据
 */
public class UtilsTools {
    /**
     * 注册成功code
     */
    public static final int SUCESS_REGISTER_CODE = 1 ;
    public static final String SUCESS_REGISTER = "成功注册" ;

    /**
     * 图片验证码错误
     */
    public static final int ERROR_PIC_CODE = 2 ;
    public static final String ERROR_PIC = "图片验证码错误";


    /**
     * 短信验证码错误
     */
    public static final int ERROR_SEND_CODE = 3 ;
    public static final String RRROR_SEND = "短信验证码错误" ;

    /**
     * 验证码成功发送
     */
    public static final int GETCODE = 4 ;
    public static final String GETCODESTR = "验证码成功发送" ;

    /**
     * 验证码发送失败
     */
    public static final int DOESNOT_GETCODE = 5 ;
    public static final String DOESNOT_GETCODESTR = "验证码发送失败" ;

    /**
     * 手机号码被占用
     */
    public static final int PHONEIS_EXIST = -2 ;
    public static final String PHONEIS_EXISTSTR = "手机号码已被占用";

    /**
     * 注册失败
     */
    public static final int FAIL = -2 ;
    public static final String FAIL_STR = "注册失败";


    /**
     * 返回给页面的对象封装
     * @param code
     * @param
     * @return
     */
    public static JsonResult returnJsonResult(Integer code , String username , String usertype ){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setCode(code);
        jsonResult.setUsername(username);
        jsonResult.setUsertype(usertype);
        return jsonResult;
    }

}
