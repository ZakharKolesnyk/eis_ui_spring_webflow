package com.chisw.service.pojo;

import java.io.Serializable;

public class Contract implements Serializable {

    private String serialElectAuction = "!!!!serialElectronicAuction";

    private Costumer costumer = new Costumer();

    public Contract() {
    }

    public String getSerialElectAuction() {
        return serialElectAuction;
    }

    public void setSerialElectAuction(String serialElectAuction) {
        this.serialElectAuction = serialElectAuction;
    }

    public Costumer getCostumer() {
        return costumer;
    }

    public void setCostumer(Costumer costumer) {
        this.costumer = costumer;
    }
}
