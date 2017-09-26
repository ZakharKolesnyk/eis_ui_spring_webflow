package com.chisw.service.contractService;

import com.chisw.service.enums.AssuranceType;
import com.chisw.service.enums.StepType;
import com.chisw.service.enums.TypeSourceFinancing;
import org.springframework.stereotype.Service;

@Service
public class ContractServiceImpl implements ContractService {

    @Override
    public StepType[] stepTypes(){
        return StepType.values();
    }

    @Override
    public AssuranceType[] assuranceTypes(){
        return AssuranceType.values();
    }

    @Override
    public TypeSourceFinancing[]typeSourceFinancings(){
        return TypeSourceFinancing.values();
    }
}
