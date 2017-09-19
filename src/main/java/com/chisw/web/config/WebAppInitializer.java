package com.chisw.web.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[]{WebConfig.class, /*WebSecurityConfig.class, */WebFlowConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
//        return new Class<?>[]{WebFlowConfig.class};
        return null;
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }
}