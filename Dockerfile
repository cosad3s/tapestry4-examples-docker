FROM mgombocz/jdk5:latest

WORKDIR /app/

RUN apt-get update && apt-get install unzip

RUN wget https://archive.apache.org/dist/tomcat/tomcat-6/v6.0.53/bin/apache-tomcat-6.0.53.zip && unzip apache-tomcat-6.0.53.zip
RUN wget https://archive.apache.org/dist/commons/logging/binaries/commons-logging-1.1.zip && unzip commons-logging-1.1.zip
RUN cp commons-logging-1.1/commons-logging-1.1.jar /app/apache-tomcat-6.0.53/lib
RUN cp commons-logging-1.1/commons-logging-adapters-1.1.jar /app/apache-tomcat-6.0.53/lib
RUN cp commons-logging-1.1/commons-logging-api-1.1.jar /app/apache-tomcat-6.0.53/lib

RUN wget https://archive.apache.org/dist/tapestry/tapestry-project-4.1.6-full.zip && unzip tapestry-project-4.1.6-full.zip
RUN cp tapestry-project-4.1.6/apps/tapestry-TimeTracker-4.1.6.war apache-tomcat-6.0.53/webapps/
RUN cp tapestry-project-4.1.6/apps/tapestry-Workbench-4.1.6.war apache-tomcat-6.0.53/webapps/

RUN chmod -R +rx /app/apache-tomcat-6.0.53

EXPOSE 8080
CMD ["/app/apache-tomcat-6.0.53/bin/catalina.sh", "run"]
