//package com.chisw.web.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.webflow.config.AbstractFlowConfiguration;
//import org.springframework.webflow.definition.FlowDefinition;
//import org.springframework.webflow.definition.registry.FlowDefinitionHolder;
//import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
//import org.springframework.webflow.definition.registry.FlowDefinitionRegistryImpl;
//import org.springframework.webflow.executor.FlowExecutor;
//
//@Configuration
//public class WebFlowConfig extends AbstractFlowConfiguration {
//
////    @Bean
////    public FlowDefinitionRegistry flowRegistry() {
////        return getFlowDefinitionRegistryBuilder()
////                .addFlowLocationPattern("/WEB-INF/flows/**/*.xml")
////                .build();
////    }
//
//    @Bean
//    public FlowDefinitionRegistry flowRegistry() {
//        return new FlowDefinitionRegistryImpl(){
//            {
//                registerFlowDefinition();
//
//        }};
//                .addFlowLocationPattern("/WEB-INF/flows/**/*.xml")
//                .build();
//    }
//
//    @Bean
//    public FlowExecutor flowExecutor() {
//        return getFlowExecutorBuilder(flowRegistry()).build();
//    }
//}