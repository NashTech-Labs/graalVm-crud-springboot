package com.graalvm.product;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class ProductApplication {

	public static void main(String[] args) {
	SpringApplication app=	new SpringApplication(ProductApplication.class);
	app.setMainApplicationClass(ProductApplication.class);
	app.run(args);
	}

}
