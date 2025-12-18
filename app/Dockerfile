FROM httpd:2.4

WORKDIR /usr/local/apache2/htdocs/

VOLUME ["/saves"]

RUN apt-get update -y && apt-get install -y --no-install-recommends curl unzip \
  && rm -rf /var/lib/apt/lists/*

RUN rm -rf ./*

RUN curl -L -o /tmp/halloween.zip https://linux-devops-course.s3.amazonaws.com/halloween.zip \
  && unzip /tmp/halloween.zip -d /tmp/halloween \
  && cp -r /tmp/halloween/* . \
  && rm -rf /tmp/halloween.zip /tmp/halloween

EXPOSE 80
