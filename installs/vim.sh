trap SDKScript SIGUSR2
SDKScript() {
source /tmp/cde_$$.sh
rm /tmp/cde_$$.sh
}
# exit
sudo apt-get remove -y vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox
sudo apt-get install -y liblua5.1-dev luajit libluajit-5.1
sudo rm -rf /usr/local/share/vim
sudo rm /usr/bin/vim
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
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope --prefix=/usr
            # --enable-gui=gtk2 
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo make install

sudo ln -s /usr/share/vim /usr/local/share/vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 200

# echo "let g:spf13_bundle_groups=['general', 'writing', 'youcompleteme', 'programming', 'python', 'javascript', 'html', 'misc',]" > ~/.vimrc.bundles.local
echo "let g:spf13_bundle_groups=['general', 'writing', 'neocomplete', 'programming', 'python', 'javascript', 'html', 'misc',]" > ~/.vimrc.bundles.local
curl http://j.mp/spf13-vim3 -L -o - | sh
exit


curl https://cmake.org/files/v3.6/cmake-3.6.1-Linux-x86_64.sh > ~/cmake.sh
chmod +x ~/cmake.sh
export PATH=$PATH:/home/mjankowski/cmake-3.6.1-Linux-x86_64/bin

cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer

git clone --depth 1 https://github.com/elixir-lang/vim-elixir.git ~/.vim/bundle/vim-elixir

# https://github.com/Valloric/YouCompleteMe
# http://tilvim.com/2013/08/21/js-autocomplete.html
sudo ln -s /usr/local/bin/vim /usr/bin/vim
