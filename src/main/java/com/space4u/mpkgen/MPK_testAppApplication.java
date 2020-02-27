package com.space4u.mpkgen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {
        "com.space4u.mpkgen.controller",
        "com.space4u.mpkgen.model",
        "com.space4u.mpkgen.repository",
        "com.space4u.mpkgen.service"
})
public class MPK_testAppApplication {
    public static void main(String[] args) {
        SpringApplication.run(MPK_testAppApplication.class,args);
    }
}
