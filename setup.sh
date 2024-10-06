#!/bin/bash

echo "setting up ohmyzsh...";
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

echo "copying ~ config files...";
w_dir=`pwd`;
cp -R $w_dir/bin $HOME/bin;
cp $w_dir/.zshrc $HOME/.zshrc;
cp $w_dir/.gitconfig $HOME/.gitconfig;
cp $w_dir/.tmux.conf $HOME/.tmux.conf;

echo "copying ~/.config/ files...";
config_dir=$HOME/.config;
[ ! -d $config_dir ] && mkdir $config_dir || : ;
cp -R $w_dir/.config/* $config_dir;

colors_dir=$config_dir/nvim/colors;
mkdir $colors_dir;
curl --silent https://gist.githubusercontent.com/PatMan10/f743f664a5ac7815d38a2c8141a1aaf7/raw/e23f7383fec99ae6c13361e90cdeb0131fa33903/spacegray.vim > $colors_dir/spacegray.vim;

echo "-- done --";
