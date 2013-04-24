set nocompatible
"set fileencodings=utf-8,gb2312,18030,gbk
"set termencoding=utf-8

filetype plugin on

set cindent
syntax on

set nu
set nuw=4
set bs=2

"tabstop
set sw=2
set smarttab
set sts=2
"expand tabstop to blank 
set et
"tabstop is 4
set ts=2
set cindent

set tw=80
set wrap

"set the color scheme
"used for reviewing comment
"colo desert
colo peachpuff
"colo elflord

"show match
set showmatch
"smart indent
set smartindent

"no backup file
set nobackup

"keep the history in 50
set history=50

"show the cursor all the time
set ruler

"show the status line
set laststatus=2
set statusline=%f%*\ %y\ %2*%r%m%*\ %l,%c\ %=%l/%L\ (%p%%)%*\ %{strftime('%Y-%m-%d-%H:%M')}

"increase search
set incsearch

"highlight the search
set hlsearch

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"cursor movement
nnoremap <Down> gj
nnoremap <Up> gk

vnoremap <Down> gj
vnoremap <Up> gk

inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap <End> g$
nnoremap <Home> g0

vnoremap <End> g$
vnoremap <Home> g0

inoremap <End> <C-o>g$
inoremap <Home> <C-o>g0

if exists("*strftime")
    map <F2> <ESC>i<C-R>=strftime("%Y-%m-%d-%T")<ESC><ESC>
endif

map <F5> :call Search_Word()<CR> 
"Totalcommander view
noremap <silent> <F11> :cal VimCommanderToggle()<CR> 
"sketch mode map
map <F12> :call ToggleSketch()<CR>

let maplocalleader = ","

command! -rang CComments <line1>,<line2>call CCOMMENTS()
map // :CComments<cr>
"C-Comments"
fun! CCOMMENTS() range
	let fline=a:firstline
	let lline=a:lastline
	if match(getline(fline), "^[ \t]*//") != -1
		silent execute fline.",".lline.'s#^\([ \t]*\)//#\1#g'
	else
		silent execute fline.",".lline."s#^#//&#g"
	endif
endfunction

"bash-support
let g:BASH_AuthorName   = ''
let g:BASH_AuthorRef    = ''
let g:BASH_Company      = 'Dawning Information Industry Co. Ltd'
let g:BASH_Email        = ''

let g:calendar_diary="~/.vim/diary"
filetype plugin on

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " For all text files set 'textwidth' to 120 characters.
  autocmd FileType text setlocal textwidth=120

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif " has("autocmd")

"Cusor and Highlight
if version >= 700
    set cursorline
    "hi CursorLine term=standout ctermfg=2
    hi CursorLine term=bold cterm=bold
endif
hi LineNr cterm=underline ctermfg=0 ctermbg=7
"spell checker
"let loaded_spellfile_plugin = 1
"setlocal spell spelllang=en_us
hi Comment ctermfg=6 
au BufNewFile,BufRead *.cu set ft=cu"
"set tags=/home/tgm/zhangxx/work_2011_autumn/fdtd/fdtdCUDA/tags
"set tags=/home/tgm/zhangxx/work_2011_autumn/fdtd/Maxwell/source_cu/tags
"set tags=/home/tgm/zhangxx/all_format/tags
set viminfo='1000,<500 
au BufNewFile,BufRead *.cu set ft=cu
set paste
set autoindent
