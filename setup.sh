#!/bin/bash

echo "setting up variables...";
dot_dir=`pwd`;

echo "creating home sym links...";
cp $dot_dir/.gitconfig $HOME/.gitconfig;
cp $dot_dir/.zshrc $HOME/.zshrc;

echo "creating home/.config sym links...";
[ ! -d $HOME/.config ] && mkdir $HOME/.config || : ;

cp -R $dot_dir/.config/nvim $HOME/.config/nvim;

echo "-- done --"
