package org.redisadmin.model;

import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.Map;

/**
 * Created by shashwat001 on 22/8/14.
 */
public class RedisModel {
    String host = null;
    int port = 0;
    Jedis jedis = null;

    public RedisModel(String host, int port) {
        this.host = host;
        this.port = port;
        jedis = new Jedis(host,port);

    }

    public Map<String,String> getStringKeys(){

    }
}
