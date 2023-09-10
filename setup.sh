#!/bin/bash

echo "setting up ohmyzsh...";
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

echo "copying ~ config files...";
wd=`pwd`;
cp $wd/.gitconfig $HOME/.gitconfig;
cp $wd/.zshrc $HOME/.zshrc;

echo "creating ~/.config/...";
config_dir=$HOME/.config;
[ ! -d $config_dir ] && mkdir $config_dir || : ;
cp -R $wd/.config/* $config_dir;

colors_dir=$config_dir/nvim/colors;
mkdir $colors_dir;
curl --silent https://gist.githubusercontent.com/PatMan10/f743f664a5ac7815d38a2c8141a1aaf7/raw/e23f7383fec99ae6c13361e90cdeb0131fa33903/spacegray.vim > $colors_dir/spacegray.vim;

echo "-- done --";
