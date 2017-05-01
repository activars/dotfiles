## vim-config

This is a personal vim + tmux configuration.

#### Install Plugin via Vundle

`:PluginInstall`

#### Prerequisite 

Install `cmake` on macOS
```
brew install cmake
```

Here's the instruction for other OS: https://github.com/Valloric/YouCompleteMe#installation


#### Installation

```bash
# compile and install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

ln -s ~/.vimrc ~/.vim-config/.vimrc
ln -s ~/.tmux.conf ~/.vim-config/.tmux.conf
```


