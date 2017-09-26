package com.chisw.service.pojo;

import com.chisw.service.enums.AssuranceType;
import com.chisw.service.enums.StepType;

import java.io.Serializable;

import static com.chisw.service.enums.StepType.ONE;

public class Contract implements Serializable {

    private String serialElectAuction = "!!!!serialElectronicAuction";

    private StepType stepType = ONE;

    private AssuranceType assuranceType;

    private Costumer costumer = new Costumer();

    private boolean purchaseInfoLocatedInEIS = false;

    public Contract() {
    }

    public boolean isPurchaseInfoLocatedInEIS() {
        return purchaseInfoLocatedInEIS;
    }

    public void setPurchaseInfoLocatedInEIS(boolean purchaseInfoLocatedInEIS) {
        this.purchaseInfoLocatedInEIS = purchaseInfoLocatedInEIS;
    }

    public String getSerialElectAuction() {
        return serialElectAuction;
    }

    public StepType getStepType() {
        return stepType;
    }

    public void setStepType(StepType stepType) {
        this.stepType = stepType;
    }

    public AssuranceType getAssuranceType() {
        return assuranceType;
    }

    public void setAssuranceType(AssuranceType assuranceType) {
        this.assuranceType = assuranceType;
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
