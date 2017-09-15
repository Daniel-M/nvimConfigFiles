# nvimConfigFiles
My configurations to get NeoVim up an running in my machine.   

The contents of this repository must go into

`.config/nvim/`

I made it by symbolic linking to keep all updated

## Installing Neovim (Last tested September 14, 2017 with master branch of Neovim)
[https://github.com/neovim/neovim](https://github.com/neovim/neovim)
[Instructions summarized from here](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)

First you need to install several preriquistes in Debian (most of them should be already installed),   

```sh
`apt-get install libtool libtool-bin autoconf automake cmake curl g++ pkg-config unzip
```


### Getting the source
Now, get the source of neovim,   

We can get the `master` by calling 

```sh
git clone git@github.com:neovim/neovim.git
```

You can check the lattest tag with `git tag` inside the cloned folder.

The latest tag (as today) is `v0.1.7` so you can use

```sh
git checkout v0.1.7
```
To have the tag and build upon it.   

The last opyion is to use the `nightly` build that passes the automated build-tests

```sh
wget https://github.com/neovim/neovim/archive/nightly.zip
```

### Building

#### Prerequisites
First we need to compile the preriquisites,  

```sh
make deps 
```

This is a short hand for the set of instructions,

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

Now install at `$HOME/opt/neovim` (but read the note below)

```sh
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=$HOME/opt/neovim"   
make install  
```
Note: It could happen that `make` still tries to make a whole system installation.
To fix this issue you can do the following while inside the `build` path,   

```sh
cmake -DCMAKE_INSTALL_PREFIX:PATH=$HOME/opt/neovim ..   
make -j 4   
make install     
```
This should fix it.

##### Using nvim as regular binary

In order to use the binary we have to add the `bin` subdir into our `$PATH`   

`export PATH="$HOME/neovim/bin:$PATH"`   

A workaround is to make a symbolic link at `/usr/local/bin` pointing to the binary


## Installing vim-plug

Checkout the repository at [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug).   
vim-plug is include by default here, just add a symbolic link of `autoload` to `$HOME/.config/nvim/autoload`   

### If you wanna get the latest vim-plug
`vim-plug` is a nice plugin manager for vim and neovim. To install it execute the following to get installed the `vim-plug` plugin manager for `Neovim`

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Read the doc, is very well documented and clear.

## Some notes regarding Neovim behaviour

 * It could happen that some plugins require you to execute, `pip2 install neovim` as `root` in Debian. `YouCompleteMe` is one of the plugins that have shown this behaviour.

