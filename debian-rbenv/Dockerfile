FROM slaxor/debian-testing-bootstrap
MAINTAINER Sascha Teske <sascha.teske@gmail.com>
RUN apt-get update
RUN apt-get upgrade
RUN apt-get -qy --force-yes install git vim tmux build-essential openssl libcurl4-openssl-dev libmysqlclient-dev
RUN git clone https://github.com/sstephenson/rbenv.git /opt/rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /opt/rbenv/plugins/ruby-build
RUN adduser --disabled-password --home=/home/ruby --gecos "" ruby
RUN mkdir -p /home/ruby/{tmp,bin}
ADD ./rbenv_ruby-build.sh  /etc/profile.d/rbenv_ruby-build.sh
RUN mkdir -p /opt/rubies
RUN chown -R ruby /opt/{rubies,rbenv} ~ruby
USER ruby
WORKDIR /home/ruby
ENV PATH /home/ruby/bin:/opt/rubies/shims:/opt/rbenv/bin:/opt/rbenv/plugins/ruby-build/bin:/bin:/sbin:/usr/bin:/usr/sbin:/opt/bin:/opt/sbin
ENV RBENV_DIR /opt/rbenv
ENV RBENV_ROOT /opt/rubies
ENV HOME /home/ruby
RUN rbenv install 2.1.0
RUN rbenv global 2.1.0
RUN gem install bundler
RUN rbenv rehash 2>/dev/null

EXPOSE 3000

