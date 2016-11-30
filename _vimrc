" Vundle
set nocompatible             " not compatible with the old-fashion vi mode
filetype off                 " required!

" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

"Bundle
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/command-t'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
set nofoldenable

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

"solarized theme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"nerdtree
nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\\+$/
"autocmd BufWinLeave * call clearmatches()
