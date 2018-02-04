# install openresty
cd ~
wget https://openresty.org/download/openresty-1.9.7.4.tar.gz
tar xvf openresty-1.9.7.4.tar.gz
cd openresty-1.9.7.4.tar.gz
./configure
make; sudo make install