package com.muniao.controller;



import com.muniao.entity.*;
import com.muniao.service.CheckInCustomerService;
import com.muniao.service.Impl.CheckInCustomerServiceImpl;
import com.muniao.service.Impl.OrderDetailServiceImpl;
import com.muniao.service.Impl.OrderServiceImpl;
import com.muniao.service.Impl.RoomServiceImpl;
import com.muniao.service.OrderDetailService;
import com.muniao.service.OrderService;
import com.muniao.service.RoomService;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.bind.annotation.XmlElementRef;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    @Resource
    private CheckInCustomerService mycheckInCustomerService;
    @Resource
    private OrderService orderService;
    @Resource
    private OrderDetailService orderDetailService;
    @Resource
    private RoomService roomService;



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
    @RequestMapping(value = "/prebooking")
    public String probooking(HttpServletRequest request,Model model,HttpSession httpSession){
        User user= (User) httpSession.getAttribute("user");
        String roomId = request.getParameter("RoomId");
        String startDate=request.getParameter("StartDate");
        String endDate=request.getParameter("EndDate");
        String[] fullNames = request.getParameterValues("fullname");
        String[] idCards=request.getParameterValues("idcard");
        List<CheckInCustomer> checkInCustomers=new ArrayList <>();
        CheckInCustomer checkInCustomer=new CheckInCustomer();
        for(int i=0;i<=fullNames.length-1;i++){
            checkInCustomer.setCustomerName(fullNames[i]);
            checkInCustomer.setCustomerIDCard(idCards[i]);
            checkInCustomers.add(checkInCustomer);
        }
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        int count = fullNames.length-1;
        OrderDetail orderDetail=new OrderDetail();
        orderDetail.setBookingTime(new Date());
        orderDetail.setCheckInPopulation(count);
        try {
            orderDetail.setCheckInTime(sdf.parse(startDate));
            orderDetail.setDepartureTime(sdf.parse(endDate));
        } catch (ParseException e) {
            e.printStackTrace();
        }
       Room room = roomService.selectRoomById(Integer.parseInt(roomId));
        orderDetail.setRoom(room);
        int differdays=0;
        double eachDayPrice=room.getPrice();
        try {
            differdays = Math.abs((int) (sdf.parse(startDate).getTime()-sdf.parse(endDate).getTime())/86400000);

        } catch (ParseException e) {
            e.printStackTrace();
        }
        double totalPrice = room.getPrice()*differdays;
        orderDetail.setTotalPrice(totalPrice);
        orderDetail.setToShopPayment(0);
        orderDetailService.insertOneOrderDetail(orderDetail);
        for (CheckInCustomer check:checkInCustomers
             ) {
            check.setOrderDetailId(orderDetail.getOrderDetailId());
            mycheckInCustomerService.insertOneCheckInCustomer(check);
        }
        Order order=new Order();
        order.setOrderStatus("4-6");
        order.setOrderSellerId(room.getUser().getUserId());

        order.setOrderDetail(orderDetail);
        order.setOrderBuyerId(user.getUserId());
        orderService.insertOneOrder(order);
        model.addAttribute(order);
        return "/pay";
    }

}
