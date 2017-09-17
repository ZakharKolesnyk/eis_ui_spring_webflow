package com.chisw.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.webflow.config.AbstractFlowConfiguration;
import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
import org.springframework.webflow.executor.FlowExecutor;

@Configuration
public class WebFlowConfig extends AbstractFlowConfiguration {
    @Bean
    public FlowDefinitionRegistry flowRegistry() {
        return getFlowDefinitionRegistryBuilder()
//                .addFlowLocation("/WEB-INF/flows/booking/booking.xml")
                .addFlowLocationPattern("/WEB-INF/flows/**/flow.xml")
                .build();
    }

    @Bean
    public FlowExecutor flowExecutor() {
        return getFlowExecutorBuilder(flowRegistry())
//                .addFlowExecutionListener(securityListener())
//                .addFlowExecutionListener(persistenceListener())
                .build();
    }
}