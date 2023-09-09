#!/bin/bash

echo "dowloading neccesary resources..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "setting up variables...";
wd=`pwd`;

echo "creating ~ configs...";
cp $wd/.gitconfig $HOME/.gitconfig;
cp $wd/.zshrc $HOME/.zshrc;

echo "creating ~/.config/...";
config_dir=$HOME/.config;
[ ! -d $config_dir ] && mkdir $config_dir || : ;
cp -R $wd/.config/* $config_dir;

echo "-- done --"
