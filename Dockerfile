FROM openjdk:8-jdk-oracle

# Create app directory
WORKDIR /developer-jobs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . .

EXPOSE 8080
CMD [ "java", "-noverify","-jar","target/developerjobs-1.0-SNAPSHOT.war"]