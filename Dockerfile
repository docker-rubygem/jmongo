FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.5

RUN gem install jmongo --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jmongo"]
CMD ["--help"]
