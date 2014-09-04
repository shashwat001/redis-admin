package org.redisadmin.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.redisadmin.model.RedisAccessModel;
import redis.clients.jedis.Tuple;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by shashwat001 on 1/9/14.
 */
public class GetKeyValuesServlet extends HttpServlet {
    private static final Logger logger = Logger.getLogger(GetKeyValuesServlet.class);
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("Entering GetKeyValueServlet");
        PrintWriter out = response.getWriter();
        Cookie[] cookies = null;
        cookies = request.getCookies();

        //cookies 0:jsessiodID 1:host 2:port
        String host = cookies[1].getValue();
        int port = Integer.parseInt(cookies[2].getValue());
        logger.info("Host:"+host+"  Port: "+port);

        RedisAccessModel redisAccessModel = new RedisAccessModel(host,port);

        String key = request.getParameter("key");
        String keyType = request.getParameter("type");
        String valueJSON = "";

        if(keyType.equals("STRING")){
            valueJSON = getStringJSON(redisAccessModel,key);
        }
        else if(keyType.equals("HASH")){
            valueJSON = getHashJSON(redisAccessModel,key);
        }
        else if(keyType.equals("LIST")){
            valueJSON = getListJSON(redisAccessModel,key);
        }
        else if(keyType.equals("SET")){
            valueJSON = getSetJSON(redisAccessModel,key);
        }
        else if(keyType.equals("ZSET")){
            valueJSON = getZsetJSON(redisAccessModel,key);
        }
        else{
            logger.error("Invalid key type");
        }
        out.write(valueJSON);
        out.close();
        logger.info("Leaving GetKeyValueServlet");
    }

    private String getListJSON(RedisAccessModel redisAccessModel, String key) {
        List<String> valueList = redisAccessModel.getListValue(key);
        String JSONvalue = new Gson().toJson(valueList);
        return JSONvalue;
    }

    private String getSetJSON(RedisAccessModel redisAccessModel, String key) {
        List<String> valueSet = redisAccessModel.getSetValue(key);
        String JSONvalue = new Gson().toJson(valueSet);
        return JSONvalue;
    }

    private String getZsetJSON(RedisAccessModel redisAccessModel, String key) {
        List<Tuple> valueZset = redisAccessModel.getZsetValue(key);
        String JSONvalue = new Gson().toJson(valueZset);
        return JSONvalue;
    }

    private String getHashJSON(RedisAccessModel redisAccessModel, String key) {
        Map<String,String> hashValue = redisAccessModel.getHashValue(key);
        String JSONvalue = new Gson().toJson(hashValue);
        return JSONvalue;
    }

    private String getStringJSON(RedisAccessModel redisAccessModel, String key) {
        String value = redisAccessModel.getStringValue(key);
        return value;
    }
}
