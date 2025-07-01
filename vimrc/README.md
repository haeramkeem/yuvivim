# VIMRC Configurator Submodule

## Enabling CoC

- [CoC](https://github.com/neoclide/coc.nvim) is disabled by default and u need
to follow the guide below to enable it.

### 1. Install Node.js

- Install nvm (Node Version Manager)

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
```

- Download and install Node.js (you may need to restart the terminal)

```bash
nvm install --lts
```

- Verify the Node.js installation

```bash
node -v
```

- Verify the npm installation

```bash
npm -v
```

### 2. Enable CoC

- Comment out these lines:

```
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

```
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
```

- And open `~/.vimrc` and run:

```
:PlugInstall
```

#### Troubleshoot: VIM version error

- If u got these errors below:

```
coc.nvim requires at least Vim 9.0.0438 or Neovim 0.8.0, but you're using an older version.
Please upgrade your (neo)vim.
You can add this to your vimrc to avoid this message:
    let g:coc_disable_startup_warning = 1
Note that some features may error out or behave incorrectly.
Please do not report bugs unless you're using at least Vim 9.0.0438 or Neovim 0.8.0.
Error detected while processing /home/ubuntu/.vim/plugged/coc.nvim/plugin/coc.vim[733]..function <SNR>24_Enable[10]..script /home/ubuntu/.vim/plugged/coc.nvim/autoload/coc/api.vim:
line  495:
E1043: Invalid command after :export
Error detected while processing /home/ubuntu/.vim/plugged/coc.nvim/plugin/coc.vim[733]..function <SNR>24_Enable:
line   10:
E117: Unknown function: coc#api#Tabpage_ids
Press ENTER or type command to continue
```

- Then install the VIM version 9+:

```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

### 3. Install Lang Server

#### C/C++

- C/C++ language server configuration is included in the `coc-settings.json`
by default.
- For C/C++, install `clangd` with the following commands
([Reference](https://clangd.llvm.org/installation)):

1. Check available clangd version:

```bash
sudo apt-cache search clangd
```

2. Install the supported clangd (install `clangd-19` in the following example):

```bash
sudo apt-get install clangd-19
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-19 100
```

#### Others

- For additional lang servers, see
[this](https://github.com/neoclide/coc.nvim/wiki/Language-servers) guide.
