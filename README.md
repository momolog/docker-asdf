# Build
## build base system with asdf

    docker build . -f Dockerfile.asdf -t momolog:asdf

##  add asdf ruby plugin and ruby 2.2.10 and ruby 2.3.8

    docker build . -f Dockerfile.rubies -t momolog:rubies

Beware: This can take long!

## add nginx and puma

    docker build . -f Dockerfile.nginx-puma -t momolog:nginx-puma

## run rails

    docker build . -f Dockerfile.rails-server -t momolog:rails-server

# Test

## check versions

    docker run -ti momolog:nginx-puma bash

    $ puma --version
    puma version 4.3.0

    $ nginx -v
    nginx version: nginx/1.12.2

## run nginx

    docker run --name rails -p 80:80 -d momolog:rails-server
