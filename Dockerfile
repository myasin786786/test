FROM openjdk:11
ADD target/helloworld.jar helloworld.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","helloworld.jar"]
