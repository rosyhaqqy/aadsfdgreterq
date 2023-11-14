echo nameserver 192.168.122.1 > /etc/resolv.conf
apt-get update && apt-get install nginx git php7.3 php7.3-fpm -y
service php7.3-fpm start
service nginx start
echo '#Default menggunakan Round Robin
upstream backend  {
    server 192.213.3.1 weight=640;
    server 192.213.3.2 weight=200;
    server 192.213.3.3 weight=25;
    # server 192.213.3.1;
    # server 192.213.3.2;
    # server 192.213.3.3;
}

server {
    listen 80;
    server_name _;

    location / {
        proxy_pass http://backend;
        proxy_set_header    X-Real-IP $remote_addr;
        proxy_set_header    X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header    Host $http_host;

        auth_basic "Admin";
        auth_basic_user_file /etc/nginx/rahasiakita/.htpasswd;
    }

    location ~ /\.ht {
        deny all;
    }

    error_log /var/log/nginx/lb_error.log;
    access_log /var/log/nginx/lb_access.log;
}' > /etc/nginx/sites-available/lb-php


ln -s /etc/nginx/sites-available/lb-php /etc/nginx/sites-enabled
unlink /etc/nginx/sites-enabled/default
service nginx restart

apt-get install apache2-utils -y
mkdir /etc/nginx/rahasisakita/
htpasswd -bc /etc/nginx/rahasisakita/.htpasswd netics ajkE14

echo nameserver 192.213.1.2 > /etc/resolv.conf