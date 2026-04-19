FROM ruby:3.3-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential git libffi-dev shared-mime-info \
  && rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3 \
    JEKYLL_ENV=development

WORKDIR /site

RUN gem install bundler:2.4.22

COPY Gemfile Gemfile.lock ./
RUN bundle _2.4.22_ install

COPY docker/serve.sh /usr/local/bin/serve-jekyll
RUN chmod +x /usr/local/bin/serve-jekyll

EXPOSE 4000 35729

CMD ["serve-jekyll"]
