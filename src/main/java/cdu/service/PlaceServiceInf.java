package cdu.service;

import com.github.pagehelper.PageInfo;
import cdu.pojo.Place;

import java.util.List;

public interface PlaceServiceInf {
    //List<Book> selectAll();

    int addPlace(Place place);

    Place selectPlaceById(int id);

    int updatePlace(Place place);

    int deletePlace(int id);
    //pageNum是从哪里开始查询  pageSize是查询多少个
    PageInfo<Place> selectAll(Integer pageNum, Integer pageSize);

//    PageInfo<Place> selectPlaceByName(Integer pageNum, Integer pageSize);

    List<Place> selectPlaceByName(String changdi);
}
