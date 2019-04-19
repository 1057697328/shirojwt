package net.lightwing.shirojwt;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("net.lightwing.shirojwt.dao")
public class ShirojwtApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShirojwtApplication.class, args);
    }

}
