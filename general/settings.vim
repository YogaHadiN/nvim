syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
" set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set redrawtime=10000                    " To ensure syntax highlighting always works on large files, simply increase the redraw time in your .vimrc file
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard^=unnamed,unnamedplus      " Copy paste between vim and everything else
set re=1								" bikin cepat scrolling
set scrolloff=10
set relativenumber                      " tunjukkan nomor relatif line number
set foldmethod=syntax
set lazyredraw

tnoremap <esc> <c-\><c-n>
" set autochdir                           " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
"
" ------------- Perbaiki highlight yang rusak dari awal ---------------"
autocmd BufEnter * :syntax sync fromstart

" You can't stop me
cmap w!! w !sudo tee %

set nocompatible              " We want the latest Vim Settings/Option
set linebreak
set wrap
set breakindent
set wrapmargin=0
set textwidth=0
set guifont=Menlo:h14
" set showbreak=------->>>>>



filetype plugin indent on
" show existing tab with 4 spaces width
set ts=4 sts=4 sw=4 noexpandtab

set noerrorbells visualbell t_vb=    "Hilangkan suara error Bell
set backspace=indent,eol,start						"Make backspace works like other editor
set linespace=1							"khusus untuk mac vim line space jadi 15
set virtualedit=onemore							"ketika insert masuk karakter selanjutnya
set ignorecase                   "ketika search jangan perhatikan Case
set autowriteall "secara otomatis save file ketika pindah buffer"

" ------------- Searching ---------------"
"Buat highlight item yang dicari
set hlsearch
set incsearch
" ------------- Visuals ---------------"
"let g:solarized_termcolors=256
" set background=dark
" colorscheme solarized
set guioptions-=e "Jangan munculkan GUI tabs
" Hilangkan scroll bar di kanan dan di kiri
set guioptions-=l
set guioptions-=l
set guioptions-=r
set guioptions-=R
"
"Ignore folder berikut dalam pencarian
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**
set wildignore+=*/storage/**
set wildignore+=*/public/forum/**
 
" ------------- PowerLine ---------------"
let g:Powerline_symbols = 'fancy'
set laststatus=2 "Selalu tunjukkan status line"
set encoding=utf-8 "Selalu tunjukkan encoding"

" ------------- Plugins ---------------"
"  CtrlP supaya lebih mudah dibaca
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,result:30'

"NERDTree supaya jangan overide Vinegar

let NERDTreeHijackNetrw = 0

"Konfigurasi untuk Greplace vim

set grepprg=ag "kita akan menggunakan Ag untuk search multiple files
let g:grep_cmd_opts = '--line-numbers --noheading'

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-c>'
 
"snipet biar kaya sublim :/
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["plugged/vim-snippets/UltiSnips"]

" ------------- AutoCommand ---------------"
"Buat menympaimpan source secara otomatis ketika di save

	augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
		autocmd BufNewFile,BufRead *.blade.php setlocal ft=html
		autocmd filetype crontab setlocal nobackup nowritebackup
		" ------------- Konfigurasi untuk pdv ---------------"
		let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
		nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>
		" ------------- Highlight from an amount backwards ---------------"
	augroup END

function! VimGoSetup()
  " vim-go related mappings
  au FileType go nmap <Leader>r <Plug>(go-run)
  au FileType go nmap <Leader>b <Plug>(go-build)
  au FileType go nmap <Leader>t <Plug>(go-test)
  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <Leader>s <Plug>(go-implements)
  au FileType go nmap <Leader>c <Plug>(go-coverage)
  au FileType go nmap <Leader>e <Plug>(go-rename)
  au FileType go nmap <Leader>gi <Plug>(go-imports)
  au FileType go nmap <Leader>gI <Plug>(go-install)
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
  au FileType go nmap <Leader>ds <Plug>(go-def-split)
  au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dt <Plug>(go-def-tab)
  let g:go_auto_type_info = 1
  let g:go_fmt_command = "gofmt"
  let g:go_fmt_experimental = 1
  let g:go_dispatch_enabled = 0 " vim-dispatch needed
  let g:go_metalinter_autosave = 1
  let g:go_metalinter_autosave_enabled = ['vet', 'golint']
  let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
  let g:go_term_enabled = 0
  let g:go_term_mode = "vertical"
" let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_chan_whitespace_error = 1
endfunction
call VimGoSetup()

"Notes perintah sederhana
" zz - untuk membuat cursor berada di tengah layar tanpa merubah line
"  di( - delete inside tanda kurung
"  di' - delete inside tanda '
"  $ - pergi ke akhir line
        "  o - buat dan insert line baru
        "  e - ke akhir kata di depan
        "  w - ke awal kata di depan
        "  b - ke awal kata di belakang
        "  0 - pindah ke awal line
"  gg - pinah ke karakter pertama dari file
"  G - pindah ke karakter terakhir dair file
"  Command + Control F -> keluar atau masuk ke full screen
"  control + ] -> pergi ke asal dipanggilnya function ini 
"  v -> untuk in ent
"  Pindah ke baris nomo 42 -> 42gg
"  dash(-) untuk tujukkan folder
"  cw - change word, edit satu kata
" \w : easy motion
" C : mengganti satu kalimat di depan
" . (titik) digunakan untuk  mengulang perintah terakhir
" r pada saat normal mode, digunakan untuk replace 1 karakter
" cst = Change sorounding tag , ganti tag
" dst = Delete sorounding tag , hapus tag yang mengelilinginya
" S = tambahkan sesuatu diantaranya
" S = tambahkan tag diantaranya
" Ctrl + w + o => menutup semua window split kecuali yang aktif
" za membuka satu scrol 
" zO buka semua fold dalam satu file
" zo buka satu fold
" zc tutup satu fold
" ,ss untuk save semua file
" Cmd-S untuk save pada saat normal mode
" Cmd-P untuk melakukan search CtrlP
" H Pindah ke puncak layar 
" M Pindah ke tengah layar 
" L Pindah ke tengah layar 
" J hilangkan page break, buat beberapa baris dalam visual menjadi satu baris
" f pindah kursor ke huruf yang diketik setelah f, contof : fm -> pindah ke
" huruf m selanjutnya
" % -> pindah ke matching tag selanjutnya, 
" g% ->pindah ke matching tag sebelumnya
" viw -> block satu kata
" :ls melihat buffer mana saja yang aktif
" :sbuffer 3 split dengan buffer aktif nomor 3 yang dilihat dengan :ls
" : Ctrl-o maju ke file selanjutnya yang dibuka
" : Ctrl-p mundur ke file selanjutnya yang dibuka
" m + huruf apa saja dalam kapital, menandai daerah yang akan kita kembali
" ^ + huruf kapital yang sudah di mark, kembali ke mark
" v'm : visual di dalam line sampai mark
" d'm : delete di dalam line sampai mark
" c'm : change di dalam line sampai mark
" '0 : kembali ke baris terakhir file yang diedit
" ,d : membuat dokumentasi di file php
" ======================== di dalam nerd tree
" % membuat file baru
" d membuat directory baru
" D menghapus file / directory
" R me rename file
" ^d menghapus semua karakter di belakang cursor (kebalikan dari C);
" * mencari kata selanjutnya yang sama dengan kata di bawah kursor
" # mencari kata sebelumnya yang sama dengan kata di bawah kursor
" '. kembali ke terakhir kali teks diedit
" ; mengulangi yang dilakukan pencarian karakter dengan f
" @m : membuat parameter untuk controller saat update atau create data
" @g : membuat parameter untuk migration
" @n : membuat parameter nullable pada parameter yang sudah ada.
" @a : membuat array dari table
" @c : membuat input get construct dari private variable
" @i : merubah input get menjadi this->input di function inputData
" Mencari file dan mengupdate nya :
" 1. :grep <search term>
" 2. :cdo %s/<search term>/<replace term>/gc
" 3. (If you want to save the changes in all files) :cdo update
" cari subdirectory : grep -rl "string" /path
