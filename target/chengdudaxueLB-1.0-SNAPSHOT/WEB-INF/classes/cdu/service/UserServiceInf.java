package cdu.service;

import cdu.pojo.User;

public interface UserServiceInf {

    User loginCheck(User user);

    int addUser(User user);


}
