Repository with docker containers to create a lamp stack with different versions of PHP.

Installation for Mac:

- Git clone this repo locally.
- cd into scripts folder and execute "install" file. This file copies the scripts
	to ~/bin directory.
- Add ~/bin to your path.
- Create the following folder structure in your home directory:
		- ~/workspace
		- ~/workspace/www
		- ~/workspace/vhosts
		- ~/workspace/mysql_data
- Start the mysql server with "du db".
- Create a folder with your local development files inside ~/workspace/www/ like
	"example.test". Your index.php file needs to be inside a public folder ~/workspace/www/example.test/public/index.php
- Create a vhost file inside ~/workspace/vhosts/ "example.test.conf".
- Add "127.0.0.1 example.test.conf" to your /etc/hosts file.
- Start the PHP and Apache servers with "du 7.x" (depending on the version of
	PHP you require).



