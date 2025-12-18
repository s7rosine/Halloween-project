FROM httpd:2.4

WORKDIR /usr/local/apache2/htdocs/

# Assignment requirement: create volume named saves
VOLUME ["/saves"]

RUN apt-get update -y && apt-get install -y --no-install-recommends curl unzip \
  && rm -rf /var/lib/apt/lists/*

# Clean the default Apache html content
RUN rm -rf ./*

# Download + unzip + copy site into Apache web root + cleanup
RUN curl -L -o /tmp/halloween.zip https://linux-devops-course.s3.amazonaws.com/halloween.zip \
  && unzip /tmp/halloween.zip -d /tmp/halloween \
  && cp -r /tmp/halloween/* . \
  && rm -rf /tmp/halloween.zip /tmp/halloween

EXPOSE 80
