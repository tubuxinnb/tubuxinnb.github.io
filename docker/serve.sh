#!/bin/sh
set -eu

# Reinstall only when the mounted workspace changed Gem dependencies after build.
bundle check >/dev/null 2>&1 || bundle install

exec bundle exec jekyll serve \
  --host 0.0.0.0 \
  --port 4000 \
  --livereload \
  --livereload-port 35729 \
  --force_polling
