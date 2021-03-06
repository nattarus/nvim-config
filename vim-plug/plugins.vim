" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    Plug 'andreshazard/vim-freemarker'
    " Graphql
    " Plug 'leafgarland/typescript-vim'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'morhetz/gruvbox' 
    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim' 
    " Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/jsonc.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-commentary'
    Plug 'airblade/vim-rooter'
    " ranger
    " Plug 'meain/vim-package-info', { 'do': 'npm install' }
    " Plug 'kevinhwang91/rnvimr'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vim-which-key'
    " project manager
    Plug 'mhinz/vim-startify'

    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " terminal
    " Plug 'voldikss/vim-floaterm'
    " history tree
    Plug 'mbbill/undotree'
    " smart close tab buffer
    Plug 'moll/vim-bbye'
    " zen mode
    " Plug 'junegunn/goyo.vim'
    " smooth scroll
    Plug 'psliwka/vim-smoothie'
    " auto html tag
    Plug 'AndrewRadev/tagalong.vim'
    " surround
    Plug 'tpope/vim-surround'
    " rename files
    Plug 'tpope/vim-eunuch'
    " snippets
    " Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Plug 'SirVer/ultisnips'
    call plug#end()
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
