# Container image that runs your code
FROM maven:3.6.3-jdk-8

COPY entrypoint.sh /entrypoint.sh
COPY maven-settings.xml /maven-settings.xml
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]