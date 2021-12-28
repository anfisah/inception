mkdir var/www

cd /var/www/
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -rf latest.zip

cp /wp-config.php /var/www/wordpress
cp /www.conf /etc/php/7.3/fpm/pool.d/
service php7.3-fpm start
service php7.3-fpm stop

