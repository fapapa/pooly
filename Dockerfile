FROM elixir:1.3
MAINTAINER Fabio Papa <fabtheman@gmail.com>

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN iex -S mix

CMD ["iex", "-S", "mix"]
