" Let vim know about the plugins we want to use
so ~/.vim/plugin/autoclose.vim
so ~/.vim/plugin/a.vim
so ~/.vim/plugin/repeat.vim
so ~/.vim/plugin/surround.vim
so ~/.vim/plugin/NERD_tree.vim
so ~/.vim/plugin/NERD_commenter.vim
so ~/.vim/plugin/taglist.vim
so ~/.vim/plugin/TagmaTasks.vim
so ~/.vim/plugin/unimpaired.vim

" Set the working directory, for when VIM is opned, and change the working
" directory when the file that is being edited changes
set autochdir

" Terminal colors
set t_Co=256

" Turn on syntax highlighting, and use the specified colorscheme
syntax on
colorscheme jellybeans

" Set line numbers and show the position of the cursor at the bottom of the
" window
set ruler
set number

" Set the number of spaces that a tab represents
set tabstop=4

" Make sure that tabs are inserted according to the rules of tabstop
set smarttab

" Expand tabs to spaces
set expandtab

" Set the number of spaces that autoindent indents
set shiftwidth=4

" Automatically indent
set autoindent

" Apply indentations that following the paradigms of the filetype being esited
set smartindent

" Used for tab-completion (TAB == wildchar).  This means that completion will
" complete to the longest common string, and if more than one match is found,
" they will all be listed.
set wildmode=longest,list

" This effectively sets backspace to 'indent,eol,start'.  This in turn means
" that backspacing works over indentations, line breaks, and the start of lines.
set bs=2

" This option turns on filetyping
filetype plugin on

" Custom tabs for Makefiles
autocmd FileType Makefile setlocal noexpandtab

" The following lines are for syntax highlighting
" Specific Arduino highlighting
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
"autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

" Write the contents of the file, if it has been modified, on each
" :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
" :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
" '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.
set autowrite

" No automatic ignore case switch
set smartcase

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=2

" Set textwidth to 80, and autowrap and autoformat line automatically
set textwidth=80
"set formatoptions+=ta

" Set the number of tenths of a second to blink the cursor
set mat=8

" Show (partial) command in the last line of the screen
set showcmd

" Use case-smart searching
set incsearch
set ignorecase

" Keep a longer history
set history=10000

" Allow vim to manage multiple buffers effectively
set hidden

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Show the current line as highlighted
set cursorline

" Highlight characters that are over the 80 character limit in lines...
" alternatively, use the 'colorcolumn' field to delimit 80 characters. 
":au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
set colorcolumn=81

" Tell Vim where to look for tags files
":set tags=./tags,./../tags,./../../tags,./../../../tags,tags
set tags=./tags;/

" Backup the file being worked on... the format is '~filename'
set backup

" The following two lines are for completing comment characters, in the C/C++ 
" style
set comments=s0:*\ -,m0:*\ \ ,ex0:*/,s1:/*,mb:*,ex:*/,://
set formatoptions+=croql

" Change the leader key for user-defined commands to ','
let mapleader = ","

" Define some shortcuts for plugins
"
" The following commands are for opening side windows for tags lists, file
" lists, tasks lists.
nmap <silent> <leader>c :call NERDComment(0, "invert")<CR>
nmap <silent> <leader>f :NERDTreeToggle<CR>
nmap <silent> <leader>t :TlistToggle<CR>
nmap <silent> <leader>l :TagmaTaskToggle<CR>

" These commands are remapped versions of the TagmaTasks commands.  The
" remapping if to match the command to toggle the tasks window, as defined
" above.
nmap <silent> <leader>lt :TagmaTasks<CR>
nmap <silent> <leader>lc :TagmaTaskClear<CR>
nmap <silent> <leader>lm :TagmaTaskMarks<CR>

" Shortcuts to move an entire line up or down.  This is  basically a remapping
" of the '[e' and ']e' shortcuts of the unimpaired.vim plugin.
nmap J ]e
nmap K [e

" Close vim if NERDTree is the only open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Use alternate comment style // for C programming
let NERD_c_alt_style=1

