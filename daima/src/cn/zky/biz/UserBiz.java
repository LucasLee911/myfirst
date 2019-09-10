package cn.zky.biz;

import cn.zky.dao.UserDao;
import cn.zky.entity.User;

public class UserBiz {
    UserDao userDao=new UserDao();
    public User Login(String username, String password) {
        return userDao.Login(username,password);
    }

    public boolean Logon(String username,String password){
        return userDao.Logon(username,password);
    }
}
