# nvimConfigFiles
My configurations to get NeoVim up an running in my machine.   

The contents of this repository must go into

`.config/nvim/`

I made it by symbolic linking to keep all updated

## Installing Neovim
[https://github.com/neovim/neovim](https://github.com/neovim/neovim)
[Instructions summarized from here](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)

First you need to install several preriquistes in Debian (most of them should be already installed),   

```sh
`apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip`
```

### Getting the source
Now, get the source of neovim,   

We can get the `master` by calling 
```sh
git clone git@github.com:neovim/neovim.git`
```

Or the `nightly` build that passes the automated build-tests

```sh
wget https://github.com/neovim/neovim/archive/nightly.zip
```

### Building

#### Prerequisites
First we need to compile the preriquisites,  

```sh
cd neovim   
mkdir .deps   
cd .deps   
cmake ../third-party   
make   
```

#### Building neovim
Now at the source of `neovim` we can build it

```sh
mkdir build   
cd build   
cmake ..   
make    
```

#### Installing (user only)

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

