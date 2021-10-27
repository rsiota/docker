Repository with docker containers to create a lamp stack with different versions of PHP.

## Installation for Mac:

- Git clone this repo locally.
- cd into scripts folder and run `install` file. This file copies the scripts
	to `~/bin` directory.
- Add `~/bin` to your path.
- Create the following folder structure in your home directory:
		- ~/workspace
		- ~/workspace/www
		- ~/workspace/vhosts
		- ~/workspace/mysql_data
- Start the mysql server with `du db` command.
- Create a folder with your local development files inside `~/workspace/www/` like
	"example.test". Your `index.php` file needs to be inside a public folder `~/workspace/www/example.test/public/index.php`
- Create a vhost file inside `~/workspace/vhosts/example.test.conf`.
- Add "127.0.0.1 example.test.conf" to your /etc/hosts file.
- Start the PHP and Apache servers with `du 7.x` command (depending on the version of PHP you require).
	
## Scripts:

Script command | Description
------- | ------------
`du db`| starts database container "mysql" and maps the volume ~/workspace/mysql_data from the host to /var/www in the "mysql" container. This script also creates a "lamp" network and joins the "mysql" container to the network.
`sudo dp "example.test"`| creates a vhost file in the host on ~/workspace/vhosts/example.test.conf, that is mapped to the apache/PHP container on "/etc/apache2/sites-enabled/example.test.conf". It also appends "127.0.0.1 example.test" to the /etc/hosts file.
 


