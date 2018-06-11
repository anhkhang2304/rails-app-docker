FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails -v 5.1.6
RUN rails -v
# RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
# RUN echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections

# # avoid debconf and initrd
# ENV DEBIAN_FRONTEND noninteractive
# ENV INITRD No

# RUN apt-get update
# RUN apt-get install -y openssh-server mysql-server supervisor
# RUN mysql --version

# # make /var/run/sshd
# RUN mkdir /var/run/sshd

# RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# # clean packages
# RUN apt-get clean
# RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# # expose mysql port
# EXPOSE 22 3306

# # volumes
# VOLUME ["/var/lib/mysql"]

# # copy supervisor conf
# ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# # start supervisor
# CMD ["/usr/bin/supervisord"]

# RUN mysql -uroot -p password

MAINTAINER Ngo Anh Khang
