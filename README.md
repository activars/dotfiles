## vim-config

This is a personal vim + tmux configuration repository.

#### Install Plugin via Vundle

Under normal mode enter `:PluginInstall` to install plugins.

#### Prerequisite 

Install `cmake` on macOS
```
brew install cmake
```

Here's the instruction for other OS: https://github.com/Valloric/YouCompleteMe#installation


#### Installation

```bash
# Clone repository
git clone git@github.com:activars/vim-config.git ~/.vim-config 

# Compile and install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

# Symbolic linking configuration
ln -s ~/.vimrc ~/.vim-config/.vimrc
ln -s ~/.tmux.conf ~/.vim-config/.tmux.conf
```


