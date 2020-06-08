FROM ruby:2.5

RUN apt-get update
RUN apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app/.
ENV RAILS_ENV=development
# RUN bundle exec rake assets:precompile

CMD ["bundle", "exec", "thin", "start", "-e", "production", "-R", "config.ru"]
