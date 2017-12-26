# percona-server-build-env
Docker environment to build Percona Server for MySQL

Once built (see instructions in Dockerfile) you can start a container
with your local clone of percona-server doing something like:

    docker run --rm -i --name buildenvps -i -v /Users/fipar/src/percona-server:/src -v ~/tmp/build:/build fipar/percona-server-build-env:v1 /bin/bash	

You can then attach to it

	docker exec -it buildenvps /bin/bash

Build PS as you normally would (the env includes all requisites to
build using the bundled yassl) all the meanwhile editing code on your
local machine using your editor of choice, and accessing the build on
your local /tmp/build (which, if you're not on linux, you can then
mount on another container to test the build).

