# .SILENT:

help:
	echo
	echo "Docker builds for asdf"
	echo
	echo "  Commands: "
	echo
	echo "    help 					- This message"
	echo "    asdf 					- base system with asdf (momolog:asdf)"
	echo "    rubies 				- asdf ruby plugin and ruby 2.2.10 and ruby 2.3.8 (momolog:rubies)"
	echo "    nginx-puma  	- nginx and puma (momolog:nginx-puma)"
	echo "    rails-server	- serve rails (momolog:rails-server)"
	echo

build: asdf rubies nginx-puma rails-server

asdf:
  docker build --no-cache -f Dockerfile.asdf -t momolog:asdf .

rubies:
  docker build --no-cache -f Dockerfile.rubies -t momolog:rubies .

nginx-puma:
  docker build --no-cache -f Dockerfile.nginx-puma -t momolog:nginx-puma .

rails-server:
  docker build --no-cache -f Dockerfile.rails-server -t momolog:rails-server .
