package com.chisw.web.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(value = {WebConfig.class, WebFlowConfig.class})
public class RootConfig {
}

