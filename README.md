## Try out this config

Make sure to backup or move your current `nvim` directory and use neovim 0.8


```
git clone https://github.com/nick3842/nvim-config.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

### Upgrade to latest release

Assuming you [built from source](https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start), `cd` into the folder where you cloned `neovim` and run the following commands. 
```
git pull
make distclean && make CMAKE_BUILD_TYPE=Release
sudo make install
nvim -v
```

There's some issue with tree sitter PHP that I used this issue to solve https://github.com/claytonrcarter/tree-sitter-phpdoc/issues/15 
