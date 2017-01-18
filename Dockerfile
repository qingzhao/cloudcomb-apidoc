FROM hub.c.163.com/qianhai/slate:v1.1
MAINTAINER Hai
COPY . /slate
WORKDIR /slate
RUN bundle exec middleman build --clean
RUN cp -r build/* /var/www/html/
