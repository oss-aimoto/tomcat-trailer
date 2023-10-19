FROM tomcat:9.0.80-jdk11-temurin-jammy
RUN cp -avT $CATALINA_HOME/webapps.dist/examples $CATALINA_HOME/webapps/examples
RUN sed  -i '22a -->' /usr/local/tomcat/webapps/examples/META-INF/context.xml
RUN sed  -i '21i <!--' /usr/local/tomcat/webapps/examples/META-INF/context.xml
RUN sed -i '72a allowedTrailerHeaders="testaimoto"' /usr/local/tomcat/conf/server.xml
ADD test.jsp $CATALINA_HOME/webapps/examples
