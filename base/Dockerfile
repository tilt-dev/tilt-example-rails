FROM ruby:2.5.8

RUN apt-get update -qq && apt-get install -y nodejs npm
RUN npm install --global yarn

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
