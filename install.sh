# install vim-plug as plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config
ln -s ~/.dotfiles/nvim ~/.config/nvim

ln -s ~/.dotfiles/.tmux.conf ~/.tmux.local.conf
