FROM docker.bintray.io/jfrog/artifactory-oss

RUN wget -P /tmp https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.44.zip && \
    unzip /tmp/mysql-connector-java-5.1.44.zip -d /tmp && \
    cp /tmp/mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar /opt/jfrog/artifactory/tomcat/lib/ && \
    rm -rf /tmp/mysql-connector-java-5.1.44.zip && \
    rm -rf /tmp/mysql-connector-java-5.1.44/

ADD ./mysql.properties /opt/jfrog/artifactory/etc/db.properties
