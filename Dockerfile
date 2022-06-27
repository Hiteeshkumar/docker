#git
FROM alpine/git as repo
WORKDIR /app
RUN git clone https://github.com/Hiteeshkumar/Hiteesh.git


#Tomcat

FROM tomcat:8.0.20-jre8
COPY --from=repo /app/Hiteesh/index.html /usr/local/tomcat/webapps/ROOT/index.html
