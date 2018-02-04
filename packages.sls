#install mc and any other soft
dev-packages:
    pkg.installed:
        - pkgs:
            - git
            - mc
            - curl
            - htop
            - openjdk-8-jre-headless
            - dos2unix
            - zsh
            - jq

build-packages:
    pkg.installed:
        - pkgs:
            - libncurses-dev
            - libevent-dev
            - automake
            - pkg-config
            - build-essential
            - libfreetype6
            - libfreetype6-dev
            - libreadline-dev
            - libncurses5-dev
            - libpcre3-dev
            - libssl-dev
            - perl
            - make
            - liblua5.1-dev 
            - luajit 
            - libluajit-5.1
            - lua5.1
            - liblua5.1-dev


