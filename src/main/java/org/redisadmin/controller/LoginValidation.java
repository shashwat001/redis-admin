package org.redisadmin.controller;

import redis.clients.jedis.Jedis;

/**
 * Created by deepak on 20/8/14.
 */
public class LoginValidation {
    public boolean loginValidate(String username, String password){
        String checkPasswd;
        Jedis jedis = new Jedis("localhost",6000);
        //jedis.auth("foobared");
        checkPasswd = jedis.get(username);
        if(checkPasswd!=null && checkPasswd.equals(password))
            return true;
        return false;
    }
}
