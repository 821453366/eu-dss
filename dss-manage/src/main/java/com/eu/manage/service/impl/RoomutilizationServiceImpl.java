package com.eu.manage.service.impl;

import com.eu.manage.dao.RoomutilizationDao;
import com.eu.manage.entity.Roomutilization;
import com.eu.manage.service.RoomutilizationService;
import com.eu.manage.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoomutilizationServiceImpl implements RoomutilizationService {

    @Autowired
    RoomutilizationDao roomutilizationDao;

    @Override
    public List<Map<String, Object>> showRoomutilization(PageUtil pageUtil, Roomutilization roomutilization) {
        Map<String, Object> data = new HashMap<>();

        data.put("start", (pageUtil.getCurrentIndex() - 1) * pageUtil.getPageSize());
        data.put("size", pageUtil.getPageSize());

        data.put("month", roomutilization.getMonth());
        data.put("year", roomutilization.getYear());
        data.put("type", roomutilization.getType());

        pageUtil.setTotalSize(roomutilizationDao.selectTotalSize(roomutilization));
        return roomutilizationDao.showRoomutilization(data);
    }

    @Override
    public void addRoomutilization(Roomutilization roomutilization) {
        roomutilizationDao.addRoomutilization(roomutilization);
    }

    @Override
    public List<Map<String, Object>> findRoomutilizationById(String id) {
        return roomutilizationDao.findRoomutilizationById(id);
    }

    @Override
    public void updateRoomutilization(Roomutilization roomutilization) {
        roomutilizationDao.updateRoomutilization(roomutilization);
    }

    @Override
    public void deleteRoomutilizationById(String id) {
        roomutilizationDao.deleteRoomutilizationById(id);
    }
}
