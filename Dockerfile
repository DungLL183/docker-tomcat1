FROM tomcat:9.0.71
LABEL maintainer="nguyen.dung@gmail.com"
COPY **/target/*.war /usr/local/tomcat/webapps
