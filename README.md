Repository with docker containers to create a lamp stack with different versions of PHP.

## Installation for Mac:

- Git clone this repo locally: `git clone https://github.com/rsiota/docker.git .`
- Add `~/bin` to your path: `export PATH=$PATH:~/bin`
- cd into scripts folder and run the install.sh shell script: `scripts/install.sh`. This file copies the lamp script
	to `~/bin` directory.
- The following folder structure is created locally:
<pre>
./
└── code
    ├── mysql
    ├── vhosts
    └── www 
└── docker
</pre>
- Add `127.0.0.1 example.test.conf` to your `/etc/hosts` file.
- Start the server with `lamp up`.
	
## Scripts:

Script command | Description
------- | ------------
`lamp`| This is the base command to start the server. When run with no arguments, it will display some help with the list of all commands.
