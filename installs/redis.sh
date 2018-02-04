# http://redis.io/topics/quickstart

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
sudo make install

# sudo mkdir /etc/redis
sudo mkdir /var/redis
sudo mkdir /var/redis/6379
# sudo cp redis.conf /etc/redis/6379.conf # -> this should come from salt stack
sudo cp utils/redis_init_script /etc/init.d/redis_6379
sudo update-rc.d redis_6379 defaults
sudo /etc/init.d/redis_6379 start