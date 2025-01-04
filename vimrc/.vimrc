" General --------------------------------------------------------------------
" - Homebrew VIM setting
set backspace=indent,eol,start
set t_Co=256
set term=xterm-256color

" - Effects
set nocompatible
set nobackup
set visualbell
set ruler
filetype indent on

" - Syntax Highlighting
if has("syntax")
  set re=0
  set rdt=0
  syntax on
endif

" - Search option
set hls
set ic

" Code Style -----------------------------------------------------------------
" - Indent option
set autoindent
set si
set cindent
set nu
set expandtab " Set \t to spaces
set ts=2
set shiftwidth=2
" - Max line
set colorcolumn=80

" Key mapping ----------------------------------------------------------------
" - Escape
:inoremap qq <ESC>
" - Remap <CR>
:noremap <CR> o<ESC>

" - Small move
"   - Begin of word
":noremap <s-h> b
"   - End of word
":noremap <s-l> w
"   - Begin of line
:noremap <s-h> ^
"   - End of line
:noremap <s-l> $

" - Big move
"   - Begin of page
:noremap <s-k> <c-u>
"   - End of page
:noremap <s-j> <c-d>
"	Begin of file
":noremap <c-k> gg
"	End of file
":noremap <c-j> <s-g>

" PlugIns --------------------------------------------------------------------
"   `:PlugInstall` to install plugin
"   delete line & `:PlugClean` to uninstall plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ajmwagar/vim-deus'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'wsdjeg/vim-fetch'
call plug#end()

" - CoC
"   Make <CR> auto-select the first completion item and notify coc.nvim to
"   format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" - Theme
set background=dark
colorscheme deus
