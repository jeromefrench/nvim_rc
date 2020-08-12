
scriptencoding utf-8
set encoding=utf-8

set redrawtime=10000



"~ swap case character,
" USE SHIFT E
" % go to next bracket
" ZZ in normal mode saves the current file if modified and exits or closes the current window/tab 

" use :botright split or :bo sp, it does what you want
"ctrl + e to cancel autocompletion
" open the explorer in another tabpage using :Texplore
" You can access the global bookmarks in the same way as local : :marks
" comman tree . dans le terminal
" use find + *file tab
" use :b + *file tab
" use c / 
" edit to folder in a file browser
" show me what this command do in insert mode :    help i_^n     ctrl n    c_^n   pour command mode
" try helpgrep qqchose   puis cn pour quickfix navigation
" :windo diffthis
" ]m   go to the begining of next method
" [[ : sections backward or to the previous '{' in the first column.



"mark shows all the mark and 'number jump to it
"ctrl-o et ctle-i cycle trough jumps
" g;  g, cycle through :changes

" pour set les error format
" :set efm=%m\ in\ %f\ on\ line\ %l



"********************************************
" buffer management
" ******************************************

" :bn go to the next
" :b file go to the file
" :bd delete current buffer
" :buffers print out all buffers

"********************************************
" argument management
" ******************************************
" :n go to the next file (base on arg list)
" :arga (filename) to add file to arg list
" :argl files make a local copy via files
" :args print out args list








set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pbondoer/vim-42header'
" Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'sheerun/vim-polyglot'
" Plugin 'vim-airline/vim-airline'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-indent'
" Plugin 'tkhren/vim-textobj-numeral'
Plugin 'vim-scripts/ReplaceWithRegister'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'gilligan/vim-lldb'
" Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'SirVer/ultisnips'  " engine snippet
Plugin 'honza/vim-snippets' "snippet template
Plugin 'posva/vim-vue'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf',
Plugin 'junegunn/fzf.vim'
Plugin 'inside/vim-grep-operator'
Plugin 'mileszs/ack.vim'
Plugin 'vim-vdebug/vdebug'
Plugin 'Yggdroot/indentLine'
Plugin 'ludovicchabant/vim-gutentags'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:let mapleader = " "

inoremap nm =

inoremap <C-j> <CR><ESC><s-o>
nnoremap <C-j> <CR><ESC><s-o>



" visual grep operator
nmap <space>g <Plug>GrepOperatorOnCurrentDirectory
vmap <space>g <Plug>GrepOperatorOnCurrentDirectory
nmap <space><space>g <Plug>GrepOperatorWithFilenamePrompt
vmap <space><space>g <Plug>GrepOperatorWithFilenamePrompt

let g:grep_operator = 'Ack'



if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif












let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000



autocmd FileType javascript UltiSnipsAddFiletypes html
autocmd FileType javascriptreact UltiSnipsAddFiletypes html
autocmd FileType javascriptreact UltiSnipsAddFiletypes javascript


" netrw mapping overide
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> i h
	"Move around window
	nnoremap <buffer> sh <C-w>h
	nnoremap <buffer> sj <C-w>j
	nnoremap <buffer> sk <C-w>k
	nnoremap <buffer> sl <C-w>l

	"Split
	nnoremap <buffer> so <C-w>s
	nnoremap <buffer> sv <C-w>v


	nnoremap <c-t> :Files<CR>
	nnoremap <c-b> :Buffers<CR>
endfunction



""nerdtree toggle
map <C-n> :e.<CR>

" status line
let g:airline#extensions#tabline#enabled = 1

""ctags toggle
"set tags=tags
"nmap <F8> :TagbarToggle<CR>

"colosheme
colorscheme gruvbox
set background=dark    " Setting dark mode
" "set background=light   " Setting light mode
let g:gruvbox_contrast_dark='hard'

highlight Normal ctermfg=145 ctermbg=00 guifg=#ABB2BF guibg=00

"
" Highlight the active window even play nice with tmux splits
"
if has('nvim')
    hi ActiveWindow ctermbg=none | hi InactiveWindow ctermbg=235
    set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow

    au VimEnter,WinEnter,BufEnter,BufWinEnter,FocusGained * hi ActiveWindow ctermbg=none | hi InactiveWindow ctermbg=235
    au VimLeave,WinLeave,BufLeave,BufWinLeave,FocusLost * hi ActiveWindow ctermbg=235 | hi InactiveWindow ctermbg=235
else
    hi Normal ctermbg=None
endif


let g:user_emmet_leader_key='<C-z>'



let g:airline_powerline_fonts = 1


nnoremap gb :ls<CR>:b

nnoremap <c-t> :Files<CR>
nnoremap <c-b> :Buffers<CR>



" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"disable preprocessors langage check
let g:vue_pre_processors = []

"yank into clipboard os
set clipboard=unnamed

"jj for echap
:imap jj <Esc>:w<CR>
:imap jk <Esc>:w<CR>
:nnoremap <s-s> <Esc>:w<CR>

"put synthasic color
syntax on

"relative line number and current line
:set number relativenumber


"moving split
nnoremap <C-W>, 5<C-W><
nnoremap <C-W>. 5<C-W>>

"show white space
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"met un | s=pour les tabs attention metre un espace a la fin
:set list lcs=tab:\|\

"set tab for indentation
":set noexpandtab
":set copyindent
":set preserveindent
:set softtabstop=2
:set shiftwidth=2
:set tabstop=2
:set et

:set nopaste


"############################Configuration
"set line at 80
set colorcolumn=80
" more powerful backspacing
set backspace=indent,eol,start
"to highlight word when searching
:set hlsearch
"folding code  zc to fold zo to unfold
" set foldmethod=syntax
" set foldlevelstart=99
"disable auto comment on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"generate Ctag each time I save
autocmd BufWritePost *.c call system("ctags -R ./src/jeronemo ./includes")
autocmd BufWritePost *.h call system("ctags -R ./includes")
"line under current line
:set cursorline
"to remove omnicompletion scratch window
set completeopt-=preview
"hightlight the current match
nnoremap * *N
"regle un probleme
autocmd BufRead scp://* :set bt=acwrite
"matching bracket
runtime macros/matchit.vim

"tag jumping back
nnoremap <Left>e <C-e>

"add space in normal mode
" :nnoremap <space> i<space><esc>
"yank until end of the line
:nnoremap Y y$
"automatic save when ctrl t ctag back
":nnoremap <C-t> :w<CR><C-t>zz
:nnoremap <C-]> :w<CR><C-]>zz
"remove hightlight
nnoremap <space>, :noh<cr>

"Move around window
:nnoremap sh <C-w>h
:nnoremap sj <C-w>j
:nnoremap sk <C-w>k
:nnoremap sl <C-w>l

"Split
:nnoremap so <C-w>s
:nnoremap sv <C-w>v

"pour le plugin qui scrool
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 1)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 15, 2)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 15, 2)<CR>

nnoremap gf :call fzf#vim#files('.', {'options':'--query '.expand('<cword>')})<CR>


set path+=**

set wildmenu
" set wildmode=longest:full,full

"highlight when seearching otherwise hightlight after enter
set incsearch

"open slip on the right
let g:netrw_altv=1
"tree view
let g:netrw_liststyle=3


" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>





















"tmux send-keys -t 0 \"make\" C-m
"nmap ,f k:wa<CR>:!tmux send-keys -t 2 \"pkill -9 doom" C-m<CR><CR>k
"nmap ,g :!tmux send-keys -t left \"clear && make && ./doom" C-m<CR><CR><CR>k


"noremap ,s :!tmux send-keys -t right \"clear & clear & git status"  C-m <CR> <CR> k
"noremap ,a :!tmux send-keys -t right \"clear & clear & git add -A"  C-m <CR> <CR> k
"noremap ,c :!tmux send-keys -t right \"git commit -am \"ok"  "  C-m <CR> <CR> k
"noremap ,p :!tmux send-keys -t right \"git push"  C-m <CR> <CR> k

"noremap ,f :w<CR>

"map <F6> :!tmux send-keys -t right \"make exe" C-m <CR> <CR> k

"brackeet
":inoremap (( ()<esc>i
":inoremap '' ''<esc>i
":inoremap [[ []<esc>i
":inoremap {{ {}<esc>i
":inoremap ,( ();<esc>h

:inoremap bb <esc>l%%a

:nnoremap == :%le<CR>gg=G<C-o>


"underscrore as key boundary
" :set iskeyword-=_


"macro avec ,
", main
" nnoremap ,main :read /Users/jchardin/.vim/main.c <CR>
" nnoremap ,printf :read /Users/jchardin/.vim/printf.c <CR>
