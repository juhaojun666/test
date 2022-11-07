package cdu.mapper;


import cdu.pojo.User;

public interface UserMapper {
    //登录
    User loginCheck(User user);

    int addUser(User user);


}
