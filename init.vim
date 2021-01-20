	"s set leader key
	let g:mapleader="\<Space>"
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
	source $HOME/.config/nvim/general/settings.vim
    source $HOME/.config/nvim/keys/mappings.vim
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/keys/abbrev.vim
    source $HOME/.config/nvim/themes/onedark.vim
	source $HOME/.config/nvim/keys/which-key.vim
	source $HOME/.config/nvim/themes/airline.vim
    let g:python3_host_prog = '/usr/local/bin/python3'
