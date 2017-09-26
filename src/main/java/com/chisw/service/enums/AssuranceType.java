package com.chisw.service.enums;

public enum AssuranceType {
    BANK("Банковская гарантия, выданная банком"),
    PAYMENT("Обеспечительный платеж");

    private String description;

    AssuranceType(String description) {
        this.description = description;
    }

    public String getValue(){
        return name();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
