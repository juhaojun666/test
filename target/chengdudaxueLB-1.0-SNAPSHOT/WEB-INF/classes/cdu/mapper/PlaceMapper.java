package cdu.mapper;

import cdu.pojo.Place;

import java.util.List;

public interface PlaceMapper {
    List<Place> selectAll();

//    List<Place> selectPlaceByName();

    List<Place> selectPlaceByName(String changdi);

    int addPlace(Place place);
    //查询一个 用作回显
    Place selectPlaceById(int id);

    int updatePlace(Place place);

    int deletePlace(int id);
}
