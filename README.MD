# LightWing SHIRO JWT示例
### Author Clarence
---
## 介绍
#### 此项目为长沙轻翼网络科技有限公司SpringBoot整合Shiro & JSON Web Token的项目模板。

## 依赖POM

```


    <!-- SpringBoot主版本 -->
    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>2.1.4.RELEASE</version>
        <relativePath/> <!-- lookup parent from repository -->
    </parent>
    

    <!--Shiro-Spring 权限框架 v1.4.0-->
    <dependency>
        <groupId>org.apache.shiro</groupId>
        <artifactId>shiro-spring</artifactId>
        <version>1.4.0</version>
    </dependency>

    <!--Java JWT(JSON Web Token)解决方案-->
    <dependency>
        <groupId>com.auth0</groupId>
        <artifactId>java-jwt</artifactId>
        <version>3.2.0</version>
    </dependency>

    <!-- MyBatis Plus 3.1.0 -->
    <dependency>
            <groupId>com.baomidou</groupId>
            <artifactId>mybatis-plus-boot-starter</artifactId>
            <version>3.1.0</version>
    </dependency>

    <!-- Lombok注解插件 -->
    <dependency>
        <groupId>org.projectlombok</groupId>
        <artifactId>lombok</artifactId>
        <optional>true</optional>
    </dependency>

    <!-- SpringBoot JDBC依赖 -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-jdbc</artifactId>
    </dependency>

    <!-- SpringBoot Web模块依赖 -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <!-- SpringBoot Starter依赖 -->
    <dependency>
        <groupId>org.mybatis.spring.boot</groupId>
        <artifactId>mybatis-spring-boot-starter</artifactId>
        <version>2.0.1</version>
    </dependency>

    <!-- MySQL 连接器依赖 -->
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <scope>runtime</scope>
    </dependency>

```

## 项目主要目录简介
```
- main
    - java
        -  net.lightwing.shirojwt   (主目录)
            - commons   (拓展工具)
                - ResponseBean.java (数据返回类)
            - controller    (控制器)
                - ExceptionController.java  (Shiro权限异常控制器)
                - WebController.java    (DEMO权限控制器)
            - dao   (数据接口层)
                - UserDao.java  (用户接口)
            - jwt   (JWT相关层)
                - JWTFilter.java    (JWT过滤器)
                - JWTToken.java (JWT Token类)
                - JWTUtil.java  (JTW工具类 生成Token/更新Token等)
            - pojo  (实体层)
                - LPermission.java  (权限实体类)
                - LRole.java    (角色实体类)
                - LRolepermission.java  (角色权限实体类)
                - LUser.java    (用户实体类)
                - LUserrole.java    (用户角色实体类)
            - service   (数据服务层)
                - UserService.java (用户数据服务类)
            - shiro (Shiro框架配置层)
                - MyRealm.java (Shiro权限处理类)
                - ShiroConfig.java (Shiro配置类)
            - ShirojwtApplication.java  (项目启动类)
    - resources
        - mybatis (MyBatis框架目录)
            - mappers (Mappers XML目录)
                - UserDao.xml (用户数据接口 XML文件)
        - static (静态资源文件夹)
        - templates (模板文件夹)
        - application.properties (SpringBoot配置文件)
```

