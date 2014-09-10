package org.redisadmin.controller;

import org.apache.log4j.Logger;
import org.redisadmin.model.RedisAccessModel;
import org.redisadmin.model.RedisKey;
import org.redisadmin.model.Server;
import org.redisadmin.model.Status;
import redis.clients.jedis.Tuple;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by shashwat001 on 2/9/14.
 */
public class AddKeyValueServlet extends HttpServlet {
    private static final Logger logger = Logger.getLogger(AddKeyValueServlet.class);
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("Entering AddKeyValueServlet");


        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            UserSession.GeneralUserLoginValidation(session);
            RedisAccessModel redisAccessModel = UserSession.getRedisAccessModelObject(session);


            String keyType = request.getParameter("type");
            logger.info("keyType : "+ keyType);

            Status status = null;
            if(keyType.equals("STRING")){
                RedisKey<String> redisKeyValue = getStringKeyValueFromRequest(request);
                status = redisAccessModel.addStringKeyValue(redisKeyValue.key, redisKeyValue.value);
            }
            else if(keyType.equals("HASH")){
                RedisKey<Map<String,String>> redisKeyValue = getHashKeyValueFromRequest(request);
                status = redisAccessModel.addHashKeyValue(redisKeyValue.key,redisKeyValue.value);
            }
            else if(keyType.equals("LIST")){
                RedisKey<List<String>> redisKeyValue = getListKeyValueFromRequest(request);
                status = redisAccessModel.addListKeyValue(redisKeyValue.key,redisKeyValue.value);
            }
            else if(keyType.equals("SET")){
                RedisKey<Set<String >> redisKeyValue = getSetKeyValueFromRequest(request);
                status = redisAccessModel.addSetKeyValue(redisKeyValue.key,redisKeyValue.value);
            }
            else if(keyType.equals("ZSET")){
                RedisKey<Set<Tuple>> redisKeyValue = getZsetKeyValueFromRequest(request);
                status = redisAccessModel.addZsetKeyValue(redisKeyValue.key, redisKeyValue.value);
            }
            logger.info(status);
            out.println(status.getValue());
            out.close();
            logger.info("Leaving AddKeyValueServlet");


        }
        catch (NoGeneralUserLoginException e) {
            e.printStackTrace();
        }




    }

    private RedisKey<String> getStringKeyValueFromRequest(HttpServletRequest request) {
        String key = request.getParameter("key");
        String value = request.getParameter("value");
        return new RedisKey<String>(key,value);
    }


    private RedisKey<Map<String, String>> getHashKeyValueFromRequest(HttpServletRequest request) {
        String key = request.getParameter("key");
        int count = Integer.parseInt(request.getParameter("count"));

        Map<String,String> value = new HashMap<String, String>();

        for(int fieldIterator = 0;fieldIterator < count;fieldIterator++){
            String field = request.getParameter("inputField"+fieldIterator);
            String fieldvalue = request.getParameter("inputFieldValue"+fieldIterator);
            value.put(field,fieldvalue);
        }
        return new RedisKey<Map<String, String>>(key,value);
    }

    private RedisKey<List<String>> getListKeyValueFromRequest(HttpServletRequest request) {
        String key = request.getParameter("key");
        int count = Integer.parseInt(request.getParameter("count"));

        List<String> value = new ArrayList<String>();

        for(int fieldIterator = 0;fieldIterator < count;fieldIterator++){
            String fieldvalue = request.getParameter("inputValue"+fieldIterator);
            value.add(fieldvalue);
        }
        return new RedisKey<List<String>>(key,value);
    }

    private RedisKey<Set<String>> getSetKeyValueFromRequest(HttpServletRequest request) {
        String key = request.getParameter("key");
        int count = Integer.parseInt(request.getParameter("count"));

        Set<String> value = new HashSet<String>();

        for(int fieldIterator = 0;fieldIterator < count;fieldIterator++){
            String fieldvalue = request.getParameter("inputValue"+fieldIterator);
            value.add(fieldvalue);
        }
        return new RedisKey<Set<String>>(key,value);
    }

    private RedisKey<Set<Tuple>> getZsetKeyValueFromRequest(HttpServletRequest request) {
        String key = request.getParameter("key");
        int count = Integer.parseInt(request.getParameter("count"));

        Set<Tuple> value = new HashSet<Tuple>();

        for(int fieldIterator = 0;fieldIterator < count;fieldIterator++){
            String field = request.getParameter("inputScore"+fieldIterator);
            String fieldvalue = request.getParameter("inputScoreValue"+fieldIterator);
            value.add(new Tuple(fieldvalue, Double.valueOf(field)));
        }
        return new RedisKey<Set<Tuple>>(key,value);
    }




}
