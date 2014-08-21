package org.redisadmin.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by deepak on 21/8/14.
 */
public class User {
    private String name;
    private String email;
    private String passwd;

    public User(String name, String email, String passwd) {
        this.name = name;
        this.email = email;
        this.passwd = passwd;
    }

    public User(String email, String password) {
        this.email = email;
        this.passwd = password;
    }

    public void register() throws SQLException, ClassNotFoundException {
        Database database = new Database();
        String sql = getInsertQuery();
        database.execute(sql);
        database.close();
    }

    private String getInsertQuery() {
        String sql;
        sql = "insert into users (name, email, password) values( '"+name+"','"+ email+"','"+ passwd+"')";
        return sql;
    }

    public boolean validate() throws SQLException, ClassNotFoundException {
        Database database = new Database();
        String sql = getSelectQuery();
        ResultSet resultSet = database.executeQuery(sql);
        boolean userExists = false;
        while(resultSet.next()){
            name = resultSet.getString("name");
            userExists = true;
        }
        database.close();
        if(userExists )
            return true;
        else
            return false;
    }

    private String getSelectQuery() {
        String sql;
        sql = "select name, email,password from users where email='" + email + "'";
        return sql;
    }
}
