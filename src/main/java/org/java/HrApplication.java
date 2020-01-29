package org.java;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("org.java.dao")
@EnableTransactionManagement
public class HrApplication {
    public static void main(String[] args) {
        SpringApplication.run(HrApplication.class,args);
    }
}
