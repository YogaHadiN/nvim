" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <C-j>    :resize -2<CR>
nnoremap <C-k>    :resize +2<CR>
nnoremap <C-h>    :vertical resize -2<CR>
nnoremap <C-l>    :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da


" ------------- Mtabedit $MYVIMRCapping ---------------"
map <silent> <F11>
\    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
" ------------- Nerd Commenter  ---------------"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"Bikin mempermudah memblok 1 method
nmap <Leader>vm Vf{%
"Tutup semua split window kecuali window yang aktif
nmap <Leader>oo :only<cr>
"Bikin mempermudah yank 1 method
nmap <Leader>ym Vf{%y
"Bikin edit vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Bikin supaya gampang menghilangkan highlight di pencarian
nmap <Leader>, :nohlsearch<cr>
"Buat supaya toggle NERDTree lebih mudah
nmap <C-1> :NERDTreeToggle<cr>
"Buat BufTag Lebih mudah
nmap <C-a> :CtrlPBufTag<cr>
"Ke File yang baru2 ini dilihat
nmap <C-e> :CtrlPMRUFiles<cr>
"Buat CtrlP sama 
"Buat supaya bisa save file saat insert mode
noremap <C-p> <Esc>:CtrlP <cr>
"Buat CtrlS untuk ngesave
nmap <C-s> :w!<cr>
"Buat supaya lebih mudah save smua file
nmap <Leader>ss :wa<cr>
"Buat supaya bisa insert line tanpa masuk insert mode
nmap <Leader>O o<Esc>k
"Pengganti Command + Shift + Find di Vim
nmap ,ff :GitGrep<Space>
"Align Seperti Sublim
vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
map <Leader>w H<Plug>(easymotion-w)
" Buat supaya tekan tombol escape lebih mudah
imap jj <esc><esc><esc>
" next matching untuk vimgrep dan arg
nmap <Leader>nn :cnext<cr>zz
" previous matching untuk vimgrep dan arg
nmap <Leader>pp :cprevious<cr>zz
" Buat supaya membuka Plugin lebih mudah
nmap <Leader>ep :e ~/mygvimrc/plugins.vim<cr>
"buat supaya melebarkan kolom window split lebih mudah
nmap <C-v> :vertical resize +5<cr>
"buka file yang aktif ini di Google Chrome berguna untuk ngetes file html
"static
nmap ,o :!open -a Google\ Chrome<cr> 
" ke buffer berikutnya aatau buffer sebelumnya
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
" Buat supaya buffer delete lebih mudah
nmap <Leader>qq :bd<cr>
" Tutup semua buffer
nmap <Leader>qa :bufdo bd!<cr>
" Buat supaya td di laravel bisa langsung fokus di {{ $variable ->(fokus) }}
nmap <Leader>nd yypwwwwwwcw
nmap <Leader>bl :set ft=blade.html<cr>

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"Aktifkan snippet javascript
nmap <Leader>js :set ft=.js<cr>

"delete tanpa menghapus registry di yank
vmap <Leader>d "_d
nmap <Leader>d "_d

"Buat Ag hanya membaca dari root directory


"Buat file baru dalam folder yang memiliki file yang sekarang aktif
nmap <Leader>nf :edit %:p:h/
"Buat supaya gampang mengedit html snippets
nmap <Leader>eh :e ~/.vim/bundle/vim-snippets/snippets/html.snippets<cr>

"Perinta // untuk search kata / kalimat yang ada dalam visual
vnoremap // y/<C-R>"<CR>

" Jalankan PhpUnitTest
nmap <Leader>t :!phpunit %<cr>

"Buat langsung ke direktori project saat buka mvim
nmap <Leader>pp :cd /var/www/kulit/<cr>:Ag ''<Left>
"Ulangi Scan Folder Tree untuk Ctrl p
nmap <Leader>cp :CtrlPClearCache<cr>

" Biat gampang pindah line seperti ctrl shift up down di sublime
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Perintah untuk mencari kata dalam visual selection
function! RangeSearch(direction)
  call inputsave()
  let g:srchstr = input(a:direction)
  call inputrestore()
  if strlen(g:srchstr) > 0
    let g:srchstr = g:srchstr.
          \ '\%>'.(line("'<")-1).'l'.
          \ '\%<'.(line("'>")+1).'l'
  else
    let g:srchstr = ''
  endif
endfunction
vnoremap <silent> / :<C-U>call RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>

