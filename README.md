# nvimConfigFiles
My configurations to get NeoVim up an running in my machine.   

The contents of this repository must go into

`.config/nvim/`

I made it by symbolic linking to keep all updated

## Installing Neovim
[https://github.com/neovim/neovim](https://github.com/neovim/neovim)
[Instructions summarized from here](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)

`apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip`

`git clone git@github.com:neovim/neovim.git`

First we need to compile the preriquisites,  

```sh
cd neovim   
mkdir .deps   
cd .deps   
cmake ../third-party   
make   
```

Now at the source of `neovim` we can build it

```sh
mkdir build   
cd build   
cmake ..   
make    
```

Now install at `$HOME/neovim`

```sh
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=$HOME/neovim"   
make install  
```

In order to use the binary we have to add the `bin` subdir into our `$PATH`   

`export PATH="$HOME/neovim/bin:$PATH"`   

A workaround is to make a symbolic link at `/usr/local/bin` pointing to the binary


## Installing vim-plug
[https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug)

Execute the following to get installed the `vim-plug` plugin manager for `Neovim`

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Read the doc, is very well documented and clear.

It could happen that some plugins require you to execute,    
`pip2 install neovim`    
as `root` in Debian. `YouCompleteMe` is one of them.  

