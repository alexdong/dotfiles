" ~/.dotfiles/vim/vim.symlink/sessions/default.vim: Vim session script.
" Created by session.vim 1.4.25 on 13 June 2013 at 22:57:07.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/choir
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +73 choir/web.py
badd +587 choir/static/styles/main.less
badd +155 choir/static/scripts/main.js
badd +11 choir/templates/start.html
badd +6 choir/templates/sounds.html
badd +1 choir/templates/keys.html
badd +11 choir/static/styles/highlight.xcode.css
args choir/web.py
set lines=44 columns=193
edit choir/templates/start.html
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 22) / 44)
exe '2resize ' . ((&lines * 40 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 96 + 96) / 193)
exe '3resize ' . ((&lines * 15 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 96 + 96) / 193)
exe '4resize ' . ((&lines * 24 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 96 + 96) / 193)
argglobal
enew
file -MiniBufExplorer-
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/Projects/choir
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 76 - ((39 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
76
normal! 02l
lcd ~/Projects/choir
wincmd w
argglobal
edit ~/Projects/choir/choir/static/styles/highlight.xcode.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 017l
lcd ~/Projects/choir
wincmd w
argglobal
edit ~/Projects/choir/choir/static/styles/main.less
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 587 - ((10 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
587
normal! 016l
lcd ~/Projects/choir
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 1 + 22) / 44)
exe '2resize ' . ((&lines * 40 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 96 + 96) / 193)
exe '3resize ' . ((&lines * 15 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 96 + 96) / 193)
exe '4resize ' . ((&lines * 24 + 22) / 44)
exe 'vert 4resize ' . ((&columns * 96 + 96) / 193)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
3wincmd w

" vim: ft=vim ro nowrap smc=128
