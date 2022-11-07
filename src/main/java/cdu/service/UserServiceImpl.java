package cdu.service;

import cdu.mapper.UserMapper;
import cdu.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserServiceInf{
    @Autowired
    private UserMapper usermapper;

    @Override
    public User loginCheck(User user) {
        return usermapper.loginCheck(user);
    }

    @Override
    public int addUser(User user) {
        return usermapper.addUser(user);
    }

}
