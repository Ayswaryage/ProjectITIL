package com.ProjectITIL;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"com.ProjectITIL"})
@EntityScan("com.ProjectITIL.model")
@EnableJpaRepositories("com.ProjectITIL.dao")
public class ProjectItilApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectItilApplication.class, args);
	}

}
