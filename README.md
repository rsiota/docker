Repository with docker containers to create a lamp stack with different versions of PHP.

## Installation for Mac:

- Git clone this repo locally: `git clone https://github.com/rsiota/docker.git .`
- Add `~/bin` to your path: `export PATH=$PATH:~/bin`
- cd into scripts folder and run the install.sh shell script: `scripts/install.sh`. This file copies the scripts
	to `~/bin` directory.
- Create the following folder structure in your home directory:
<pre>
~
└── workspace
    ├── mysql_data
    ├── vhosts
    └── www
</pre>
- Start the mysql server with `docku db` command. The first time this command is run, it will download an image and build the container (this might take a couple of minutes). After running the command for the first time, it will only take a few seconds to start the container. 
- Create a folder with your local development files inside `~/workspace/www/` like
	"example.test". Your `index.php` file needs to be inside a public folder `~/workspace/www/example.test/public/index.php`
- Create a vhost file inside `~/workspace/vhosts/example.test.conf`.
- Add `127.0.0.1 example.test.conf` to your `/etc/hosts` file.
- Start the PHP/Apache servers with `docku 7.x` command (depending on the version of PHP you require).
	
## Scripts:

Script command | Description
------- | ------------
`docku db`| starts database container `mysql` and maps the volume `~/workspace/mysql_data` from the host to `/var/lib/mysql` in the `mysql` container. This script also creates a `lamp` network and joins the `mysql` container to the `lamp` network.
`dockd db` | stops database container `mysql` and removes it from the `lamp` network.
`docku 7.x` | starts PHP/Apache container `php7.x` and maps volume `~/workspace/www` from the host to `/var/www` in the `php7.x` container. This script first checks if there are other PHP/Apache containers running, and removes them first from the `lamp` network. Once the container is up, it connects the container to the `lamp` network.
`dockd 7.x` | stops PHP/Apache container `php7.x` and removes it from the `lamp` network.
`sudo dockp "example.test"`| creates a vhost file in the host on `~/workspace/vhosts/example.test.conf`, that is mapped to the Apache/PHP container on `/etc/apache2/sites-enabled/example.test.conf`. It also appends `127.0.0.1 example.test` to the `/etc/hosts` file.
`docku --help` | `docku` command help
`dockd --help` | `dockd` command help
