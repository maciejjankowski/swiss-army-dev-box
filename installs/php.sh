# php
sudo touch /var/log/php_errors.log
sudo chmod 766 /var/log/php_errors.log

sudo cat > /etc/php5/cgi/conf.d/xdebug.ini <<EOC
;xdebug configuration
zend_extension =  /usr/lib/php5/20121212/xdebug.so
; xdebug.remote_host = localhost
xdebug.remote_connect_back = 1
xdebug.remote_enable = 1
xdebug.remote_port = 9000
xdebug.remote_handler = dbgp
xdebug.remote_mode = req
xdebug.idekey = "PHPSTORM"
xdebug.remote_log = /var/log/xdebug.log
; IMPORTANT !!!!
; http://stackoverflow.com/a/32073206/678074

EOC 
