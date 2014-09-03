package org.redisadmin.model;

public enum Status {
    SUCCESS(0),
    FAILURE(1);

    private int value;

    private Status(int value){
        this.value = value;
    }

    public int getValue() {
        return value;
    }

}
