package org.redisadmin.model;

import org.apache.log4j.Logger;
import org.redisadmin.controller.RedisKeyState;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.ScanResult;
import redis.clients.jedis.Tuple;
import redis.clients.jedis.exceptions.JedisException;

import java.util.*;

/**
 * Created by shashwat001 on 22/8/14.
 */
public class RedisAccessModel {
    String host = null;
    int port = 0;
    Jedis jedis = null;
    private static final Map<String,String> ControllerToModelMap;
    static{
        ControllerToModelMap = new HashMap<String, String>();
        ControllerToModelMap.put("STRING","string");
        ControllerToModelMap.put("LIST","list");
        ControllerToModelMap.put("HASH","hash");
        ControllerToModelMap.put("SET","set");
        ControllerToModelMap.put("ZSET","zset");

    }


    private final Logger logger = Logger.getLogger(RedisAccessModel.class);

    public RedisAccessModel(String host, int port) {
        this.host = host;
        this.port = port;
        try {
            JedisPool jedisPool = new JedisPool(host,port);
            jedis = jedisPool.getResource();
            logger.info("Jedis Connected");
        }
        catch (JedisException e){
            logger.info("Jedis connection failed");
        }
    }

    public void close(){
        jedis.close();
    }



    public RedisKeyState getNextKeyState(RedisKeyState currentRedisKeyState) {
        logger.info("Entering getNextKeyState function");
        logger.info("Keytype is "+currentRedisKeyState.type);

        RedisKeyState nextKeyState = new RedisKeyState();
        logger.info("Current key state= cursor:"+currentRedisKeyState.cursor+" count:"+currentRedisKeyState.ignorableCount+" type:"+currentRedisKeyState.type);

        String redisKeyTypeMap = ControllerToModelMap.get(currentRedisKeyState.type);

        List<String> returnKeyList = new ArrayList<String>();
        ScanResult<String> scanResult;
        String nextCursor = currentRedisKeyState.cursor;
        int ignorableCount = currentRedisKeyState.ignorableCount;


        scanResult = jedis.scan(nextCursor);
        ArrayList<String> keyList = getKeyList(scanResult.getResult(),redisKeyTypeMap);

        keyList = new ArrayList<String>(keyList.subList(ignorableCount,keyList.size()));

        int totalKeysFetched = keyList.size();
        logger.info("totalKeysFetched:"+totalKeysFetched);
        boolean noMoreKeysExist = false;
        while(totalKeysFetched < RedisKeyState.MaxKeyListCount) {

            returnKeyList.addAll(keyList);
            ignorableCount = 0;
            if((nextCursor = scanResult.getStringCursor()).equals("0")){
                noMoreKeysExist = true;
                break;
            }
            scanResult = jedis.scan(nextCursor);
            keyList = getKeyList(scanResult.getResult(),redisKeyTypeMap);
            totalKeysFetched = totalKeysFetched + keyList.size();
        }
        if(noMoreKeysExist){
            logger.info("No more key exist");
            nextKeyState.ignorableCount = 0;
            nextKeyState.cursor = "0";
            nextKeyState.keyList = returnKeyList;
        }
        else{
            logger.info("Break with more key exist");
            int keysNotToBeAdded = totalKeysFetched - RedisKeyState.MaxKeyListCount;
            int keysToBeAdded = keyList.size() - keysNotToBeAdded;

            for (int keyIterator = 0; keyIterator < keysToBeAdded; keyIterator++) {
                returnKeyList.add(keyList.get(keyIterator));
            }
            nextKeyState.cursor = nextCursor;
            nextKeyState.ignorableCount = keysToBeAdded+ignorableCount;
            nextKeyState.keyList = returnKeyList;

        }
        logger.info("Final state= cursor:"+nextKeyState.cursor+" count:"+nextKeyState.ignorableCount);

        logger.info("Leaving getNextKeyState function");
        return nextKeyState;
    }

    ArrayList<String> getKeyList(List<String> scanList, String keyType){
        ArrayList<String> returnKeyList = new ArrayList<String>();
        for(String key : scanList){
            if(jedis.type(key).equals(keyType))
                returnKeyList.add(key);
        }
        return returnKeyList;
    }


    public static void main(String[] args) {
        RedisAccessModel redisAccessModel = new RedisAccessModel("172.16.137.198",7000);
        RedisKeyState redisKeyState = new RedisKeyState("0",12,"STRING");
        RedisKeyState nextKeyState = redisAccessModel.getNextKeyState(redisKeyState);
        redisAccessModel.close();
    }

    public String getStringValue(String key) {
        return jedis.get(key);
    }

    public Map<String,String> getHashValue(String key){
        return jedis.hgetAll(key);
    }

    public List<String> getListValue(String key){
        List<String> valueList = new LinkedList<String>();
        Long listLength = jedis.llen(key);
        for (int listIterator = 0; listIterator < listLength; listIterator++) {
            valueList.add(jedis.lindex(key,listIterator));
        }
        return valueList;
    }

    public Set<String> getSetValue(String key){
        Set<String> smembers = jedis.smembers(key);
        return smembers;
    }

    public Set<Tuple> getZsetValue(String key){
        Set<Tuple> tuples = jedis.zrangeWithScores(key, 0, -1);
        return tuples;
    }

    public Status addStringKeyValue(String key, String value) {
        if(jedis.exists(key)){
            return Status.FAILURE;
        }
        jedis.set(key, value);
        return Status.SUCCESS;
    }

    public Status addHashKeyValue(String key, Map<String, String> value) {
        if(jedis.exists(key)){
            return Status.FAILURE;
        }
        jedis.hmset(key,value);
        return Status.SUCCESS;
    }

    public Status addListKeyValue(String key, List<String> values) {
        if(jedis.exists(key)){
            return Status.FAILURE;
        }
        for(String value : values)
            jedis.lpush(key,value);
        return Status.SUCCESS;
    }

    public Status addSetKeyValue(String key, Set<String> values) {
        if(jedis.exists(key)){
            return Status.FAILURE;
        }
        for(String value : values)
            jedis.sadd(key,value);
        return Status.SUCCESS;
    }

    public Status addZsetKeyValue(String key, Set<Tuple> values) {
        if(jedis.exists(key)){
            return Status.FAILURE;
        }
        for(Tuple value : values)
            jedis.zadd(key,value.getScore(),value.getElement());
        return Status.SUCCESS;
    }
}

