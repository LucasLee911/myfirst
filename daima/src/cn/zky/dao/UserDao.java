package cn.zky.dao;

import cn.zky.entity.User;
import cn.zky.util.BaseDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends BaseDB {

    private static String sql;
    private Connection conn;
    private ResultSet rs;
    private PreparedStatement pst;

    /**
     * 登陆
     */
    public User Login(String username, String password) {
        User user = new User();
        boolean flag = false;
        conn = getConn();
        sql = "select id,money from t_user where username=? and password=?";
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if (rs.next()) {
                flag = true;
                user.setId(rs.getInt("id"));
                user.setUsername(username);
                user.setPassword(password);
                user.setMoney(rs.getInt("money"));
            } else {
                flag = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     *注册
     */
    public boolean Logon(String username,String password){
        sql="insert into t_user (username,password) values(?,?)";
        Object params[]={username,password};
        int count = executeZSG(sql,params);
        if (count>0){
            return true;
        }else {
            return false;
        }
    }





}
