package cn.zky.util;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BaseDB {

    final static String DRIVER = "com.mysql.jdbc.Driver";
    final static String URL = "jdbc:mysql://localhost:3306/tour";
    final static String DBNAME = "root";
    final static String DBPASS = "000000";


    public static Connection getConn() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, DBNAME, DBPASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }


    /**
     * 通用的增删改方法
     *
     * @param sql    语句
     * @param params 参数数组
     * @return 受影响的行数
     */
    public static int executeZSG(String sql, Object[] params) {
        Connection conn = getConn();
        int num = 0;
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            setParams(pstmt, params);
            num = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return num;
    }


    /**
     * 通用的查询方法
     *
     * @param sql
     * @param params
     */
    public static List executeCha(String sql, Object[] params) {
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List tableList = new ArrayList();

        try {
            pstmt = conn.prepareStatement(sql);
            setParams(pstmt, params);
            rs = pstmt.executeQuery();
            ResultSetMetaData rsd = rs.getMetaData();


            while (rs.next()) {
                List rowList = new ArrayList();
                for (int i = 1; i <= rsd.getColumnCount(); i++) {
                    rowList.add(rs.getString(i));
                }
                tableList.add(rowList);
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return tableList;
    }

    /**
     * 循环绑定参数的方法
     *
     * @param pstmt
     * @param params
     */
    public static void setParams(PreparedStatement pstmt, Object[] params) {
        try {
            if (params == null)
                return;
            for (int i = 0; i < params.length; i++) {
                pstmt.setObject(i + 1, params[i]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void closeAll(Connection conn, Statement st, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (st != null) {
                st.close();
            }
            if (conn != null) {
                conn.close();
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
