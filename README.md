# build base system with asdf (incl. ruby plugin)
docker build . -f Dockerfile.asdf -t momolog:asdf

# add ruby 2.2.10 and ruby 2.3.8
docker build . -f Dockerfile.rubies -t momolog:asdf-rubies

# add puma gem
docker build . -f Dockerfile.puma -t momolog:puma

# try it out
docker run -ti momolog:puma bash

$ puma --version
puma version 4.3.0
