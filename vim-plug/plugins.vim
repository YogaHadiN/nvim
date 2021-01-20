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
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
	Plug 'liuchengxu/vim-which-key'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'honza/vim-snippets'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-surround'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'rking/ag.vim'
	" Plug 'tmhedberg/matchit'
	Plug 'easymotion/vim-easymotion'
	Plug 'jwalton512/vim-blade'
	Plug 'Shougo/unite.vim'
	Plug 'Shougo/unite-outline'
	Plug 'tsukkee/unite-tag'
	Plug 'ujihisa/unite-rake'
	Plug 'tsukkee/unite-help'
	Plug 'tpope/vim-commentary'
	" Plug 'Valloric/MatchTagAlways'
	Plug 'Shougo/neocomplete.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'othree/html5-syntax.vim'
	Plug 'wlangstroth/vim-haskell'

call plug#end()
