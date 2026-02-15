# Getting Started

### Reference Documentation

For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/4.0.2/maven-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/4.0.2/maven-plugin/build-image.html)
* [Spring Web](https://docs.spring.io/spring-boot/4.0.2/reference/web/servlet.html)
* [Spring Data JPA](https://docs.spring.io/spring-boot/4.0.2/reference/data/sql.html#data.sql.jpa-and-spring-data)
* [Liquibase Migration](https://docs.spring.io/spring-boot/4.0.2/how-to/data-initialization.html#howto.data-initialization.migration-tool.liquibase)
* [Spring Boot Actuator](https://docs.spring.io/spring-boot/4.0.2/reference/actuator/index.html)

### Guides

The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Building a RESTful Web Service with Spring Boot Actuator](https://spring.io/guides/gs/actuator-service/)

### Maven Parent overrides

Due to Maven's design, elements are inherited from the parent POM to the project POM.
While most of the inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>` from the
parent.
To prevent this, the project POM contains empty overrides for these elements.
If you manually switch to a different parent and actually want the inheritance, you need to remove those overrides.

### H2 database console
The H2 database console is available at `http://localhost:8080/h2-console`
Use the following settings to connect:
- Driver Class: `org.h2.Driver`
- JDBC URL: `jdbc:h2:file:./demo-db-change`
- User Name: `sa`
- Password: (leave blank)

### Liquibase Migration
#### Check current status of Liquibase migration
```bash
mvn liquibase:status
```
#### Generate a new Liquibase migration
```bash
mvn liquibase:generateChangeLog -Dliquibase.changeLogFile=src/main/resources/db/changelog/changes/your-changelog-name.xml
```

#### Run Liquibase migration
```bash
mvn liquibase:update
```

#### Tag the changes for rollback
```bash
mvn liquibase:tag -Dliquibase.tag=your-tag-name
```

#### View the history of Liquibase changes (including tags)
```bash
mvn liquibase:history
```

#### Rollback to last ChangeSet
```bash
mvn liquibase:rollback -Dliquibase.rollbackCount=1
```

#### Rollback to a specific tag
```bash
mvn liquibase:rollback -Dliquibase.rollbackTag=your-tag-name
```