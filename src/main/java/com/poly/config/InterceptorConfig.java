package com.poly.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.poly.interceptor.SecurityInterceptor;
import com.poly.interceptor.LoggerInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	LoggerInterceptor loggerInterceptor;
	
	@Autowired
	SecurityInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");
		
		registry.addInterceptor(auth)
		.addPathPatterns("/admin/**")
		.excludePathPatterns("/home/login");
	

	}

}
