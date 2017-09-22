package com.chisw.service.pojo;

import java.io.Serializable;

public class Contract implements Serializable{

    private String name="contract";

    public Contract() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
