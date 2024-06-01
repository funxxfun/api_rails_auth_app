FROM ruby:3.2.2

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


# 作業ディレクトリを指定する
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY .ruby-version /myapp/.ruby-version
COPY . /myapp

# ENV BUNDLER_VERSION 2.3.26

RUN gem install bundler && bundle install

# ADD . /myapp

# 3000番ポートを開放する
EXPOSE 3000

# サーバーを立ち上げる
CMD ["rails", "server", "-b", "0.0.0.0"]
# CMD /myapp/bin/rails s -b 0.0.0.0 -p 3000
