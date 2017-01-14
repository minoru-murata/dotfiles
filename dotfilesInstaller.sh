#! /bin/bash
ln -s ~/dotfiles/.screen ~/.screenrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

mkdir -p ~/.emacs.d/
ln -s ~/dotfiles/.emacs.d/init.el ~/.emacs.d/init.el
ln -s ~/dotfiles/.emacs.d/Cask ~/.emacs.d/Cask


