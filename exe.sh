#!/bin/bash

help() {
  printf "Usage\n"
  printf "    exe.sh --opt\n\n"
  printf "Run \"exe.sh --options\" to get the list of possible options.\n\n"
}

options() {
  printf "Options\n"
  echo "    -h, --help     -  Print help."
  echo "    -o, --options  -  Print options."
  echo "    -s, --setup    -  Setup dot files."
  echo "    -c, --cleanup  -  Cleanup dot files."
}

setup() {
  echo "copying ~ config files...";
  w_dir=`pwd`;
  cp -R $w_dir/bin $HOME/bin;
  cp $w_dir/.gitconfig $HOME/.gitconfig;
  cp $w_dir/.tmux.conf $HOME/.tmux.conf;
  
  echo "copying ~/.config/ files...";
  config_dir=$HOME/.config;
  [ ! -d $config_dir ] && mkdir $config_dir || : ;
  cp -R $w_dir/.config/* $config_dir;
  
  colors_dir=$config_dir/nvim/colors;
  mkdir $colors_dir;
  curl --silent https://gist.githubusercontent.com/PatMan10/f743f664a5ac7815d38a2c8141a1aaf7/raw/e23f7383fec99ae6c13361e90cdeb0131fa33903/spacegray.vim > $colors_dir/spacegray.vim;

  echo "setting up zsh...";
  cp $w_dir/.zshrc $HOME/.zshrc;
 
  echo "-- done --";
}

cleanup() {
  echo "cleaning dot files..."
  rm -rf ~/bin ~/.oh-my-zsh ~/.local/share/nvim ~/.config/i4 ~/.config/nvim ~/.config/terminator ~/.config/coc;
  rm -f ~/.zshrc ~/.zsh_history ~/.gitconfig ~/.tmux.conf;
  echo "-- done --";
}

if [ $# != 1 ]; then
  help;
  exit 1;
else
  case $1 in
    "-h")
      help;;
    "--help")
      help;;
    "-o")
      options;;
    "--options")
      options;;
    "-s")
      setup;;
    "--setup")
      setup;;
    "-c")
      cleanup;;
    "--cleanup")
      cleanup;;
    *)
       printf "Invalid option.\nRun \"exe.sh --options\" to get a list of options.\n";
       exit 1;;
    esac
fi
