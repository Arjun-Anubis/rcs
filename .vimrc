syntax on
set number
set relativenumber
set nocp
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
map <C-a> <Home>
map <C-e> <End>
imap <C-a> <Home>
imap <C-e> <End>

command EW %y+
command Compile !javac %
command Sh !chmod +x %
command Run !%

let mapleader = ' '
nnoremap <Leader>w <C-w>
nnoremap <Leader>v :vsplit
nnoremap <Leader>s :split

syn match tmuxColour            /\<colo[u]*r[0-9]\+/      display
for s:i in range(0, 255)
    let s:bg = (!s:i || s:i == 16 || (s:i > 231 && s:i < 235)) ? 15 : "none"
    exec "syn match tmuxColour" . s:i . " /\\<colour" . s:i . "\\>/ display"
\     " | highlight tmuxColour" . s:i . " ctermfg=" . s:i . " ctermbg=" . s:bg
   endfor
imap jj <Esc>
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

set laststatus=2
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
set hidden
set wildmenu

