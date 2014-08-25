package org.redisadmin.controller;

import javafx.util.Pair;
import org.redisadmin.model.RedisAccessModel;

import java.util.List;

/**
 * Created by shashwat001 on 22/8/14.
 */
public class ListKeys {
    List<String> stringList;
    List<String> hashList;
    List<String> setList;
    List<String> listList;
    List<String> zsetList;

    public List<String> listStringKeys(String host, int port){
        return listKeys(host, port, "string");
    }
    public List<String> listHashKeys(String host, int port){
        return listKeys(host, port, "hash");
    }
    public List<String> listSetKeys(String host, int port){
        return listKeys(host, port, "set");
    }
    public List<String> listListKeys(String host, int port){
        return listKeys(host, port, "list");
    }
    public List<String> listZsetKeys(String host, int port){
        return listKeys(host, port, "zset");
    }
    public List<String> listKeys(String host, int port, String type){
        RedisAccessModel redisAccessModel = new RedisAccessModel(host,port);
        List<Pair<String, String>> allKeys = redisAccessModel.getKeys();
        List<String> selectedKeys = null;
        for(Pair<String, String> key : allKeys){
            if(key.getValue().equals(type))
                selectedKeys.add(key.getKey());
        }
        redisAccessModel.close();
        return selectedKeys;
    }
}
