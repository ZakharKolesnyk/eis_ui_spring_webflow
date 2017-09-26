package com.chisw.service.contractService;

import com.chisw.service.enums.AssuranceType;
import com.chisw.service.enums.StepType;

public interface ContractService  {

    StepType[] stepTypes();

    AssuranceType[] assuranceTypes();
}
