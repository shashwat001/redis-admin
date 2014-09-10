package org.redisadmin.model;

import java.sql.*;

/**
 * Created by deepak on 21/8/14.
 */
public class Database {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/Redis";
    static final String USER = "root";
    static final String DB_PASS = "abc";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(DB_URL, USER, DB_PASS);
    }

}
