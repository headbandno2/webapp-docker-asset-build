FROM node:8.10.0-slim

# ==============================================================================
RUN echo "America/New_York" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update \
  && apt-get install -y \
    build-essential libssl-dev autoconf bison libyaml-dev libreadline6-dev \
    zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev python git \
    software-properties-common apt-transport-https lsb-release ca-certificates

RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
  && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

COPY .bashrc /root/.bashrc

RUN . ~/.bashrc \
  && rbenv install 2.4.2 \
  && rbenv global 2.4.2

RUN . ~/.bashrc \
  && curl https://packages.sury.org/php/apt.gpg | apt-key add - \
  && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list \
  && apt-get update \
  && apt-get install -y php7.1

RUN . ~/.bashrc \
  && gem install bundler

# ==============================================================================
RUN npm i -g yarn grunt-cli bower

WORKDIR /var/www/html