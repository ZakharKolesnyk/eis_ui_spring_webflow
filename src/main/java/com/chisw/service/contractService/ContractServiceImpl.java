package com.chisw.service.contractService;

import com.chisw.service.enums.AssuranceType;
import com.chisw.service.enums.StepType;
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
}
