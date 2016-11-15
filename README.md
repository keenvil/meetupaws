# Meetupaws
Sample AWS Buenos Aires Meetup application to be tested on AWS ECS

## Prerequisites - Development

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Maven](http://maven.apache.org)
* [Java](http://java.com)
* [MySQL](http://www.mysql.com/)

## Installation

* `git clone https://github.com/keenvil/meetupaws.git` this repository
* change into the new directory: `cd meetupaws`
* `mvn clean install`

## Running

* `mvn spring-boot:run`

### Running Tests

* `mvn spring-boot:run -Dspring.profiles.active=dev`

### Building

* `mvn package`

### Docker BTP

Build it. Tag it. Push it.

* `docker build -t your_repository_name/meetupaws .`
* `docker tag keenvil/meetupaws:latest 1234567890.dkr.ecr.us-east-1.amazonaws.com/your_repository_name/meetupaws:latest`
* `docker push 1234567890.dkr.ecr.us-east-1.amazonaws.com/your_repository_name/meetupaws:latest`

### Docker download and use

* `docker run -it 1234567890.dkr.ecr.us-east-1.amazonaws.com/your_repository_name/meetupaws:latest`

You can also specify another spring boot profile

* `docker run -it -e "SPRING_PROFILES_ACTIVE=local" 1234567890.dkr.ecr.us-east-1.amazonaws.com/your_repository_name/meetupaws:latest`

### Naming conventions
* We are following [Google's Java Style Guide](https://google.github.io/styleguide/javaguide.html)
