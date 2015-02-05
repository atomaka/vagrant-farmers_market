#!/bin/bash

readonly RUBY_VERSION=2.2.0


install-pre-requisites () {
  apt-get update

  apt-get install wget software-properties-common libxml2 libxml2-dev \
    libxslt1-dev -y
}

install-ruby () {
  apt-add-repository ppa:brightbox/ruby-ng
  apt-get update
  apt-get install ruby2.2 ruby2.2-dev -y

  gem install bundler
}

install-farmers_market () {
  cd /home/vagrant/app
  bundle install
}

main () {
  install-pre-requisites
  install-ruby

  if [ -f /home/vagrant/app/Gemfile ]; then
    install-farmers_market
  fi
}

main
