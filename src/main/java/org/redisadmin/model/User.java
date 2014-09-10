package org.redisadmin.model;

import sun.security.provider.MD5;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by deepak on 21/8/14.
 */
public class User {

    private String name;
    private String username;
    private String password;
    private boolean admin = false;

    public User(String name, String username, String password) {
        this.name = name;
        this.username = username;
        this.password = password;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean isAdmin(){ return admin; }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }


    public boolean register() {
        Connection connection = null;
        try {
            connection = Database.getConnection();
            String sql = "insert into users (name, username, password) values(?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, name);
            preparedStatement.setString(2, username);

            String hashedPassword = getMD5Hash(password);
            preparedStatement.setString(3, hashedPassword);

            int status = preparedStatement.executeUpdate();
            return true;
        }
        catch (SQLException e) {
            return false;
        }
    }

    private String getMD5Hash(String password){
        try {
            MessageDigest messageDigest = null;
            messageDigest = MessageDigest.getInstance("MD5");
            byte[] hash = messageDigest.digest(password.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < hash.length; ++i) {
                sb.append(Integer.toHexString((hash[i] & 0xFF) | 0x100).substring(1,3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
           return "Hash Error";
        }
    }

    public boolean authenticate(){

        try {
            String sql = "select name, username,password, usertype from users where username=? ";
            PreparedStatement preparedStatement = null;
            preparedStatement = Database.getConnection().prepareStatement(sql);
            preparedStatement.setString(1, username);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String hashedPassword = getMD5Hash(password);
                String dbPassowrd = resultSet.getString("password");

                if(dbPassowrd.equals(hashedPassword)){
                    name = resultSet.getString("name");
                    if(resultSet.getInt("usertype") == 1){
                        admin = true;
                    }
                    return true;
                }
            }
            return  false;
        } catch (SQLException e) {
            return false;
        }
    }


    private String getSelectQuery() {
        String sql;
        sql = "select name, username,password from users where username='" + username + "'";
        return sql;
    }

    public boolean validateConstraints() {
        return validateName() && validateUsername() && validatePassword();
    }

    private boolean validatePassword() {
        if(password.length() >= 8 && password.length() <= 16){
            return true;
        }
        return false;
    }

    private boolean validateUsername() {
        if(username.length() >= 4 && username.length() <= 16){
            return true;
        }
        return false;
    }

    private boolean validateName() {
        if(name.equals("")){
            return false;
        }
        return true;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        User user = new User("shashwat","shashwat4","password");
        user.register();
    }
}
