package cdu.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cdu.mapper.PlaceMapper;
import cdu.pojo.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PlaceServiceImpl implements PlaceServiceInf {
    @Override
    public int deletePlace(int id) {
        return placemapper.deletePlace(id);
    }

    @Override
    public int updatePlace(Place place) {
        return placemapper.updatePlace(place);
    }

    @Autowired
    private PlaceMapper placemapper;

    //    该方法要实现查询全部数据  书籍的数据从mapper层获取
//            因为Mapper层是真正查询数据库的
//    @Override
//    public List<Book> selectAll() {
//        List<Book> list = bookmapper.selectAll();
//        return list;
//    }

    @Override
    public int addPlace(Place place) {
        return placemapper.addPlace(place);
    }

    @Override
    public Place selectPlaceById(int id) {
        return placemapper.selectPlaceById(id);
    }

    @Override
    public PageInfo<Place> selectAll(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Place> list = placemapper.selectAll();

        return new PageInfo<>(list);
    }

    //
//    @Override
//    public PageInfo<Place> selectPlaceByName(Integer pageNum, Integer pageSize) {
//        PageHelper.startPage(pageNum,pageSize);
//        List<Place> list=placemapper.selectPlaceByName();
//
//        return new PageInfo<>(list);
//    }
//}
    @Override
    public List<Place> selectPlaceByName(String changdi) {
        return placemapper.selectPlaceByName(changdi);
    }
}
