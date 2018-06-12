package com.muniao.controller;

import com.muniao.entity.Date_list;
import com.muniao.entity.JsonRootBean;
import com.muniao.entity.Month_list;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @Author Scot
 * @Date 2018/6/11 18:00
 * @Name com.muniao.controller
 * @Description:
 **/
@Controller
@RequestMapping(value = "/")
public class BookingController {




    @RequestMapping(value = "new/testbooking")
    @ResponseBody
    public void testBooking(Model model){

        JsonRootBean jsonRootBean=new JsonRootBean();
        List<Month_list> month_list=new ArrayList <>();
        Month_list monthlist=new Month_list();
        List<Date_list> list=new ArrayList <>() ;
        Date_list date_list=new Date_list();
        Calendar c=Calendar.getInstance();
        c.get(Calendar.DAY_OF_WEEK);
        for(int i=1;i<=31;i++){
            date_list.setYear("2018");
            date_list.setMonth("06");
            date_list.setDate(""+i);
            i++;
            date_list.setPriceday(2004);
            list.add(date_list);
        }
        monthlist.setList(list);
        month_list.add(monthlist);
        jsonRootBean.setMonth_list(month_list);
        jsonRootBean.setMessage("ok");
        jsonRootBean.setAct("0");
        jsonRootBean.setStatus(0);
        model.addAttribute(jsonRootBean);


    }
}
