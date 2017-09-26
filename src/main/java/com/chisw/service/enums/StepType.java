package com.chisw.service.enums;

public enum StepType {
    ONE("Один этап"),
    SEVERAL("Несколько этапов");

    private String description;

    StepType(String description) {
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
