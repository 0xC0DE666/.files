#!/bin/bash

echo "dowloading neccesary resources..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "setting up variables...";
dot_dir=`pwd`;

echo "creating home configs...";
cp $dot_dir/.gitconfig $HOME/.gitconfig;
#cp $dot_dir/.zshrc $HOME/.zshrc;

echo "creating home/.config configs...";
[ ! -d $HOME/.config ] && mkdir $HOME/.config || : ;

cp -R $dot_dir/.config/nvim $HOME/.config/nvim;

echo "-- done --"
