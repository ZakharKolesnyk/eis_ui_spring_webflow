package com.chisw.service.pojo;

import java.io.Serializable;

public class Costumer implements Serializable {

    private String fullname = "!!!!costumerfullname";

    private String shortname = "!!!!costumershortname";

    private String inn = "!!!!costumerINN";

    private String kpp = "!!!!costumerKPP";

    public Costumer() {
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getShortname() {
        return shortname;
    }

    public void setShortname(String shortname) {
        this.shortname = shortname;
    }

    public String getInn() {
        return inn;
    }

    public void setInn(String inn) {
        this.inn = inn;
    }

    public String getKpp() {
        return kpp;
    }

    public void setKpp(String kpp) {
        this.kpp = kpp;
    }
}
