package org.redisadmin.model;

import com.sun.org.apache.xpath.internal.SourceTree;
import javafx.util.Pair;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.ScanResult;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by shashwat001 on 22/8/14.
 */
public class RedisAccessModel {
    String host = null;
    int port = 0;
    Jedis jedis = null;

    public RedisAccessModel(String host, int port) {
        this.host = host;
        this.port = port;
        jedis = new Jedis(host,port);

    }

    public void close(){
        jedis.close();
    }

    public List<Pair<String,String>> getKeys(){
        List<Pair<String,String>> keyList = new ArrayList<Pair<String, String>>();
        ScanResult<String> scanResult;
        String nextCursor = "0";

        int count = 0;
        do {
            scanResult = jedis.scan(nextCursor);
            nextCursor = scanResult.getStringCursor();
            for (String s : scanResult.getResult()) {
                keyList.add(new Pair<String, String>(s, jedis.type(s)));
            System.out.println("count = "+ count++);
            }
        }
        while(!nextCursor.equals("0"));
        return keyList;
    }

    public ScanResult<Map.Entry<String,String>> getHashSet(String key){
        return jedis.hscan(key,"146");
    }

    public static void main(String[] args) {
        RedisAccessModel redisAccessModel = new RedisAccessModel("172.16.137.198",6379);
//        ScanResult<Map.Entry<String, String>> hashkey = redisAccessModel.getHashSet("hashkey");
//        System.out.println(hashkey.getResult().get(1));
        redisAccessModel.getKeys();
        redisAccessModel.close();
    }
}
