sudo apt-get remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox

sudo apt-get install -y liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev

sudo rm -rf /usr/local/share/vim
sudo rm /usr/bin/vim
 
sudo mkdir /usr/include/lua5.1/include
sudo mv /usr/include/lua5.1/*.h /usr/include/lua5.1/include/
sudo ln -s /usr/bin/luajit-2.0.0-beta9 /usr/bin/luajit

cd ~
git clone https://github.com/vim/vim.git --depth 1
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --with-lua \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope --prefix=/usr
            # --enable-gui=gtk2 

make VIMRUNTIMEDIR=/usr/share/vim/vim74
# sudo make install

sudo apt-get install checkinstall -y
cd vim
sudo checkinstall

sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim

# If you don't get gvim working (on ubuntu 12.04.1 LTS)
# try changing --enable-gui=gtk2 to --enable-gui=gnome2