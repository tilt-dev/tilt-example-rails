FROM ruby:2.5.8-alpine3.12

#RUN apt-get update -qq && apt-get install -y nodejs npm
RUN apk add --update build-base yarn sqlite-dev tzdata shared-mime-info

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY package.json .
COPY yarn.lock .
RUN yarn install --check-files

COPY . .

ENTRYPOINT ["rails", "server", "-p", "8000"]
# ENTRYPOINT ["sleep", "1000000"]
