PROJECT=ipfs_swarm_key_gen

all: build 

build:
	@crystal build src/main.cr -o bin/swarm_key_gen

install:
	@shards install

