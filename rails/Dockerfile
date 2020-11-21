FROM ruby:2.6.5

# Install dev
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y nodejs yarn gcc g++ make default-mysql-server

# gem config
RUN gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
