package com.muniao.service.Impl;

import com.muniao.dao.RoomMapper;
import com.muniao.entity.Room;
import com.muniao.service.RoomService;
import com.muniao.utils.PageBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 史国纲 2018/6/7
 */
@Service
@Transactional
public class RoomServiceImpl implements RoomService{
    @Resource
    private RoomMapper roomDao;
    PageBean pageBean = new PageBean();

    /**
     * 查询所有特色房间
     * @param featureId 特色id
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> findAllByFeature(int featureId,int currentPage) {
        return roomDao.findByFeature(featureId,pageBean.getPageSize()*(currentPage-1),pageBean.getPageSize()*currentPage);
    }

    /**
     * 根据城市查询特色房间
     * @param featureId 特色id
     * @param roomLocation 城市名
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> findByFeatureCity(int featureId,String roomLocation,int currentPage) {
        return roomDao.findByFeatureCity(featureId,roomLocation,pageBean.getPageSize()*(currentPage-1),pageBean.getPageSize()*currentPage);
    }

    /**
     * 查出所有城市
     * @param featureId
     * @return
     */
    @Override
    public List<Room> findByCityList(int featureId) {
        return roomDao.findByCityList(featureId);
    }

    /**
     * 查出
     * @param featureId 特色id
     * @return
     */
    @Override
    public Integer CountFeatureList(int featureId) {
        return roomDao.CountFeatureList(featureId);
    }

    /**
     * 分页
     * @param featureId
     * @return
     */
    @Override
    public List countFeatureRoom(int featureId) {
        List pageList = new ArrayList();
        int count = roomDao.countFeatureRoom(featureId);
        int pageCount = count%pageBean.getPageSize()==0?count/pageBean.getPageSize() :count/pageBean.getPageSize()+1;
        for(int i=1;i<=pageCount;i++){
            pageList.add(i);
        }
        return pageList;
    }

    @Override
    public Integer countFeatureRoomNum(int featureId) {
        return roomDao.countFeatureRoom(featureId);
    }

    @Override
    public List<Room> findByCityName(String roomLocation,int currentPage) {
        return roomDao.selectByCity(roomLocation,pageBean.getPageSize()*(currentPage-1),pageBean.getPageSize());
    }

    /**
     * 查出所在城市的所有房间类型
     * @param roomLocation
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> selectRoomType(String roomLocation) {
        return roomDao.selectRoomType(roomLocation);
    }

    /**
     * 查出所有房间价格区间
     * @param roomLocation
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> selectRoomInterval(String roomLocation) {
        return roomDao.selectRoomInterval(roomLocation);
    }

    /**
     * 查出所有房间的出租类型
     * @param roomLocation
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> selectRoomMethod(String roomLocation) {
        return roomDao.selectRoomMethod(roomLocation);

    }

    /**
     * 查出所有房间的户型
     * @param roomLocation
     * @param currentPage
     * @return
     */
    @Override
    public List<Room> selectRoomStructure(String roomLocation) {
        return roomDao.selectRoomStructure(roomLocation);

    }

    @Override
    public List<Room> selectByCityTitle(String roomLocation,int currentPage, int typeId, int priceId, int methodId, int structureId) {
        return roomDao.selectByCityTitle(roomLocation
                ,pageBean.getPageSize()*(currentPage-1)
                ,pageBean.getPageSize(),typeId,priceId,methodId,structureId);

    }

    @Override
    public Room selectRoomById(int roomId) {
        return roomDao.selectRoomById(roomId);
    }

    @Override
    public List<Room> selectByUserId(int userId) {
        return roomDao.selectByUserId(userId);
    }

}
