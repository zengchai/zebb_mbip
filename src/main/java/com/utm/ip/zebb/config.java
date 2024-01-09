package com.utm.ip.zebb;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class config {
    private DriverManagerDataSource dataSource() {
    DriverManagerDataSource source =  new DriverManagerDataSource();
    source.setDriverClassName("com.mysql.cj.jdbc.Driver");
    source.setUrl("jdbc:mysql://localhost:3306/mydb");
    source.setUsername("root");
    source.setPassword("aeiou12345");
    return source;
    }
    @Bean
    JdbcTemplate jdbcTemplate() {
    return new JdbcTemplate(dataSource());
    }

}
