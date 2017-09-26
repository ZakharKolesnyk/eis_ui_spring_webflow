package com.chisw.service.enums;

public enum TypeSourceFinancing {
    OWNER("Средства собственников помещений в многоквартирных домах", 1),
    MUNITIPAL("Бюджет муниципального образования", 2),
    RF_SUBJECT("Бюджет субъекта Российской Федерации", 3),
    OTHER("Иной источник финансирования\n", 4);

    private String description;
    private int businessCode;

    TypeSourceFinancing(String description, int businessCode) {
        this.description = description;
        this.businessCode = businessCode;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getBusinessCode() {
        return businessCode;
    }

    public void setBusinessCode(int businessCode) {
        this.businessCode = businessCode;
    }
}
