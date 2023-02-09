FROM tomcat:9.0.71
LABEL maintainer="nguyen.dung@gmail.com"

# ADD sample.war /apache-tomcat-9.0.71/webapps/
ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8088
CMD ["catalina.sh", "run"]
