# install and configure Nginx server

exec { 'nginx configuration':
    provider => shell,
    command  => 'sudo apt-get update'; 'sudo apt-get install -y nginx';
	     'mkdir /var/www/root'; 'echo "Hello World!" > /var/www/root/index.html';
	     'sudo sed -i "/server_name _;/location /redirect_me {\\n\\treturn 301 http://test.com;\\n\\t" /etc/nginx/sites-available/default';
	     'sudo service nginx restart'
}
