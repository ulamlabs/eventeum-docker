FROM maven:3-openjdk-8

RUN git clone https://github.com/ConsenSys/eventeum.git
WORKDIR eventeum

RUN mvn clean package
WORKDIR server

EXPOSE 8060

CMD java -jar target/eventeum-server.jar
