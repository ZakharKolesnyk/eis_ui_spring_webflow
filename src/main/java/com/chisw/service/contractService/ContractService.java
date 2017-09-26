package com.chisw.service.contractService;

import com.chisw.service.enums.AssuranceType;
import com.chisw.service.enums.StepType;
import com.chisw.service.enums.TypeSourceFinancing;

public interface ContractService  {

    StepType[] stepTypes();

    AssuranceType[] assuranceTypes();

    TypeSourceFinancing[]typeSourceFinancings();
}
