# install tmux 
if [ ! -d "/home/$1/tmux" ]; then
    cd ~
    git clone https://github.com/tmux/tmux.git --depth 1
    cd tmux/
    ./autogen.sh
    ./configure && make
    sudo make install
    git clone https://github.com/tmux-plugins/tpm --depth 1 ~/.tmux/plugins/tpm
fi
