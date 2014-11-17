"vim base setting
set t_Co=256

filetype plugin indent on
set noswf               "don't use swap file all in memory
set nocompatible        "vi and vim is not comaptible
set backspace=2         "use backspace as directer key
set ttymouse=xterm2
set clipboard=unnamedplus
set notitle

"file encoding
set fencs=utf-8,big5
set fenc=utf-8
set enc=utf-8

"search setting
set hlsearch            "use hight light for search
set incsearch           "search patern immediate
set ignorecase          "ignore charector case

"programming setting
syntax on
set foldmethod=syntax   "fold by syntax
set autoindent          "auto indent
set cindent             "c indent
set number              "show line number
set nowrap              "no break line
set nopaste

"show setting
set showmatch           "brackets matching
set showcmd             "show command
set showmode            "show mode
set ruler               "line status
set cursorline          "cursor line


"tab setting
set shiftwidth=4        "shift tab 4 space
set tabstop=4           "use 4 space instead tab
set expandtab           "convert tab to space

"statusline setting
set ls=2
"set statusline=[%n]\ %<%f\ %((%1*%M%*%R%Y)%)\ %=%-19(\LINE\ [%3l/%3L]\ COL\ [%02c%03V]%)\ ascii['%02b']\ %P
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]%m
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
"highlight StatusLine ctermfg=darkgray ctermbg=white
highlight User1 ctermfg=190
highlight User2 ctermfg=243
highlight User3 ctermfg=115
highlight User4 term=underline cterm=underline ctermfg=gray
highlight User5 ctermfg=198
highlight User6 ctermfg=215

"functional mapping
nmap <F5> :e!<CR>
nmap <F6> :set nu!<BAR>set nu?<CR>
"nmap <F7> :if exists("syntax_on")<BAR>
"    \ syntax off <BAR><CR>
"    \ else <BAR>
"    \ syntax on <BAR>
"    \ endif <CR>
nmap <F7> :%s/\s\+$//<CR>
nmap <F8> :set hls!<BAR>set hls?<CR>
nmap <F9> :set paste!<BAR>set paste?<CR>

"colorscheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme ron
"
"highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\\+$/
"autocmd BufWinLeave * call clearmatches()
