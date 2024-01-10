FROM  maven:3.8.3-openjdk-11-slim
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src /app
RUN mvn package
CMD ["java", "-jar", "target/simple-java-maven-app.jar"]

