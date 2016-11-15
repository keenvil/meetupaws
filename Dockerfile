# Branch out from Java
FROM 153695311236.dkr.ecr.us-east-1.amazonaws.com/keenvil/java:8
MAINTAINER Andres Vergara <andres@keenvil.com>

# Copy artifacts
COPY target/sample-0.0.1-SNAPSHOT.jar .

# Document port to be exposed
EXPOSE 8080

# The ENTRYPOINT defines the command/service to be run. Arguments are included
# (if needed) and can be also be appended to the 'docker run' command
# Development mode
# $ docker run -it 153695311236.dkr.ecr.us-east-1.amazonaws.com/keenvil/meetupaws:latest
# Development mode with local services (e.g.: MySQL)
# $ docker run -it -e "SPRING_PROFILES_ACTIVE=local" 153695311236.dkr.ecr.us-east-1.amazonaws.com/keenvil/meetupaws:latest
# Teamcity/AWS use both the "teamcity" and "aws" profiles and (dependending on
# the environment) a specific branch/build instead of :latest
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "sample-0.0.1-SNAPSHOT.jar"]
