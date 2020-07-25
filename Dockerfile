FROM ruby:2.3.8

# Fix 404, where jessie was moved to archives
RUN sed -i '/jessie-updates/d' /etc/apt/sources.list  # Now archived

RUN apt-get update && apt-get install -y --no-install-recommends \
  git

WORKDIR /home/gusto

ADD . /home/gusto/

RUN bundle install
RUN bundle exec appraisal install

