FROM openjdk:8

ENV LEIN_ROOT=true

RUN curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/2.7.1/bin/lein
RUN chmod +x /usr/bin/lein
RUN /usr/bin/lein > /dev/null

WORKDIR /app
ADD . /app

RUN /usr/bin/lein deps
RUN /usr/bin/lein uberjar
