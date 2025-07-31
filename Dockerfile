FROM cgr.dev/chainguard/ruby:latest-dev

USER root
RUN yes | gem update --system && gem cleanup
RUN yes | gem install jekyll bundler && gem cleanup
RUN apk update && apk upgrade
WORKDIR /site
COPY . /site
RUN chmod 777 /site
RUN bundle install
EXPOSE 4000

USER nonroot
ENTRYPOINT bundle exec jekyll serve --config _config.yml --host 0.0.0.0
