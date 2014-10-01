" 
" vimrc
"
" In order to work, be sure to make a hard link from this file to ~/.vimrc.
" This link allows for the .vim directory to be used as a git repository, for
" easy changes and updates.  Alternatively, if you don't care to use git, you
" could just make this file your ~/.vimrc.  
"
" Be sure to look up all the plugins that are listed, they are what make this
" powerful in some cases.  Besides, the tools they define are well worth looking
" into.
"
" William Rideout
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Change the leader key for user-defined commands to ','.  This has to be done
" here to work with all plugins
"
let mapleader=","

"
" Load all our plugins with Pathogen, and generate new helptags
"
execute pathogen#infect() 
Helptags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Set the working directory, for when VIM is opned, and change the working
" directory when the file that is being edited changes
"
set autochdir

"
" Enable the mouse for all four modes.
"
set mouse=a

"
" Terminal colors
" 
set t_Co=256

"
" Turn on syntax highlighting, and use the specified colorscheme
"
syntax on
set background=dark
colorscheme solarized


" 
" Set line numbers and show the position of the cursor at the bottom of the
" window
"
set ruler
set number

"
" Set the number of spaces that a tab represents
"
set tabstop=4

"
" Make sure that tabs are inserted according to the rules of tabstop
"
set smarttab

"
" Expand tabs to spaces
" 
set expandtab

"
" Set the number of spaces that autoindent indents
"
set shiftwidth=4

"
" Automatically indent
"
set autoindent

"
" Apply indentations that following the paradigms of the filetype being esited
"
set smartindent

"
" Used for tab-completion (TAB == wildchar).  This means that completion will
" complete to the longest common string, and if more than one match is found,
" they will all be listed.
"
set wildmode=longest,list

"
" This effectively sets backspace to 'indent,eol,start'.  This in turn means
" that backspacing works over indentations, line breaks, and the start of lines.
"
set bs=2

"
" This option turns on filetyping
"
filetype plugin indent on

"
" Write the contents of the file, if it has been modified, on each
"
" :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
" :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
" '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.
set autowrite

"
" No automatic ignore case switch
"
set smartcase

"
" Minimal number of screen lines to keep above and below the cursor.
"
set scrolloff=2

"
" Set textwidth to 80, and autowrap and autoformat line automatically
"
set textwidth=80
" set formatoptions+=rtacoqn

" 
" Highlight characters that are over the 80 character limit in lines...
" alternatively, use the 'colorcolumn' field to delimit 80 characters. 
"
" If using the colorcolumn option, make sure that this is turned OFF for vimdiff
":au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>77v', -1)
":au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"
if !&diff
    set colorcolumn=81
endif

"
" Show the current line as highlighted
"
set cursorline

"
" Manually configure the CursorLine, and ColorColumn highlighting to match...
" this reflects the colors used in the JellyBeans colorscheme
"
" hi CursorLine term=underline ctermbg=234 guibg=#1c1c1c
" hi ColorColumn term=underline ctermbg=234 guibg=#1c1c1c

"
" Set the number of tenths of a second to blink the cursor, just because we can
"
set mat=8

"
" Show (partial) command in the last line of the screen
"
set showcmd

"
" Use case-smart searching
"
set incsearch
set ignorecase

"
" Keep a longer history
"
set history=10000

"
" Allow vim to manage multiple buffers effectively
"
set hidden

"
" Always open new windows on the right side of the main buffer
"
" set splitright

"
" Tell vim to remember certain things when we exit
"
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,f1,<100,:50,/50,h,%,n~/.viminfo

"
" Backup the file being worked on... the format is '~filename'
"
set backup

"
" Always show the status line (current mode, filename, file status, etc.).
"
set laststatus=2

"
" Highlight search matches, but turn it off with CR.
"
set hlsearch

"
" Set the contents of the status line
"
set statusline=\ Buf:\ %n\ \|\      " Buffer number
set statusline+=%<%f\               " Name of current file
set statusline+=%#error#%m%r%*      " Modified/READ ONLY
set statusline+=%=%#directory#%{&paste?'[paste]\':''}%*  " Paste is set? 
set statusline+=\ Line:\ %l,%L\     " Current line number and total line count
set statusline+=\|\ Col:\ %2c\       " Current column number
set statusline+=\|\ %P\             " Current position in file as a percentage

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Insert a space after the left comment delimiter and before the right comment
" delimiter.  Remove these extra spaces when removing comments as well
"
let g:NERDSpaceDelims=1
let g:NERDRemoveExtraSpaces=1

"
" Tagbar options
"
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
let g:tagbar_iconchars=['+', '~']

"
" NERD_tree options
"
" Close vim if NERDTree is the only open buffer
" 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") 
            \&& b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\~$']
let NERDTreeDirArrows=0

"
" VCSCommand options
"
" Split the window vertically
"
let VCSCommandSplit='vertical'

"
" Turn off the autohide functionality of Scratch.
"
let g:scratch_autohide=0

"
" Make the Scratch window bigger
"
let g:scratch_height=20

"
"
"
let g:syntastic_mode_map={"mode": "passive",
                         \ "active_filetypes": [],
                         \ "passive_filetypes": []}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Switch quickly between header and code files.  Executing `,sh` queries cscope
" for the header file with a name matching the current file, and displays it.
" Executing `,sc` accomplishes the same thing, but finds the implementation (or
" 'code' file ) matching the name of the current file.  This currently only
" works with C++ files that use <name>.cc to indicated implementation files and
" <name>.h to indicate header files.  Also, the names of the implementation and
" header files must be the same, excepting the file extensions.  
"
" Since cscope automatically exands search parameters, the regex for matching
" all permutations of C and C++ file extensions is simply [hH] and [cC].  This
" covers all extensions beginning with either a captial or lowercase 'h' and
" 'c'.  Brilliant.
"
" Use of these two commands has the advantage of leveraging cscope.  This means
" that the implementation and header files need not be located in the same
" directory, and if multiple matches exist for a query, they are listed for
" selection.
"
" Use of this function relies on cscope indices, which must be " generated prior
" to the use of the commands.
"
" Arguments to the GetAlternate function indicate orientation.  The mappings are
" as follows:
"   * 'n': NORMAL; open alternate file in existing buffer;
"
"   * 'h': HORIZONTAL; split the existing buffer in half holizontally, and
"     display the alternate file in the new buffer;
"   
"   * 'n': VERTICAL: split the existing buffer in half vertically and display
"     the alternate file in the new buffer.
"
" Note that this will only work if the cscopequickfix variable includes 'f0' or
" omuits the 'f' option altogether
if has ('cscope')
    function! GetAlternate(orientation)
        if a:orientation == "h"
            :split

        elseif a:orientation == "v"
            :vsplit
        
        else " a:orientation == "n"
            " Nothing needs to be done here
        endif

        if tolower(strpart(expand("%:e"), 0, 1)) == "h"
            :cs find f %<.[cC]

        elseif tolower(strpart(expand("%:e"), 0, 1)) == "c"
            :cs find f %<.[hH]

        else
            echoerr "Error... only C and C++ currently supported!"
        endif
    endfunction
endif

"
" Set up vim to use cscope more efficiently
"
if has ('cscope')
    set cscopetag cscopeverbose

    if has ('quickfix')
        " See the comments of the GetAlternate function for the reasoning for
        " 'f0'.
        set cscopequickfix=s-,c-,d-,i-,t-,e-,f0,g0
    endif
 
    " Abbreviations to make using cscope in vim easier
    cnoreabbrev <expr> csa
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
    cnoreabbrev <expr> csf
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
    cnoreabbrev <expr> csk
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
    cnoreabbrev <expr> csr
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
    cnoreabbrev <expr> css
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
    cnoreabbrev <expr> csh
        \ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')

    " Automatically load the cscope database
    function! LoadCscope()
        let db = findfile("cscope.out", ".;")
        if (!empty(db))
            let path = strpart(db, 0, match(db, "/cscope.out$"))
            set nocscopeverbose " suppress 'duplicate connection' error
            exe "cs add " . db . " " . path
            set cscopeverbose
        endif
    endfunction
    au BufEnter * call LoadCscope()

endif

"
" Function for filtering the content of the quickfix buffer.  This
" is meant to approximate the piping behavior of cscope.  The function is based
" on the code posted to StackOverflow by user Benoit.  The post may be found at:
"
"   http://stackoverflow.com/questions/4644658/
"       how-to-search-in-vim-cscope-result-window
"
" function! FilterQuickFix(mode, pattern)
    " let s:curList = getqflist()
    " let s:newList = []
    " for item in s:curList
        " Are we filtering on file names...
        " if a:mode == "file" 
            " let s:cmpPat = bufname(item.bufnr)

        " or are we filtering on line content?
        " elseif a:mode == "content"
            " let s:cmpPat = item.text . item.pattern
        " endif
    
        " if item.valid
            " if s:cmpPat =~ a:pattern
                " let s:newList += [item]
            " endif
        " endif
    " endfor
    " call setqflist(s:newList)
" endfunction
" Filter the quickfix list
function! FilterQFList(type, action, pattern)
    " get current quickfix list
    let s:curList = getqflist()
    let s:newList = []
    for item in s:curList
        if a:type == 0     " filter on file names
            let s:cmpPat = bufname(item.bufnr)
        elseif a:type == 1 " filter by line content
            let s:cmpPat = item.text . item.pattern
        endif
        if item.valid
            if a:action < 0
                " Keep only nonmatching lines
                if s:cmpPat !~ a:pattern
                    let s:newList += [item]
                endif
            else
                " Keep only matching lines
                if s:cmpPat =~ a:pattern
                    let s:newList += [item]
                endif
            endif
        endif
    endfor
    call setqflist(s:newList)
endfunction

"
" Generate a list of tasks based on my personal TODO tag.  This uses cscope to
" search the entire project.  This can be adjusted to search only the local file
" using vimgrep if cscope is not available.
"
function! TaskList()
    if has ('cscope')
        execute "cscope find e WHR TODO"
    else
        execute "vimgrep/WHR TODO/gj %"
        execute "copen"  
    endif
endfunction
command! Tasks :execute TaskList()

"
" Function to vimgrep for the word under the cursor in normal mode,
" and for the selection in visual mode.  The portion that utilizes visual mode
" is based on the code by Amir Salihefendic.  The full code may be found at:
"     
"     http://amix.dk/blog/post/19334
"
function! MultiModeGrep(mode)
    if a:mode == "normal" 
        execute "vimgrep/" . expand("<cword>") . "/gj %"
        execute "copen"
    elseif a:mode == "visual"
        let l:saved_reg = @"
        execute "normal! vgvy"

        let l:pattern = escape(@", '\\/.*$^~[]')
        let l:pattern = substitute(l:pattern, "\n$", "", "")

        execute "vimgrep/" . l:pattern . "/gj %"
        execute "copen"

        let @/ = l:pattern
        let @" = l:saved_reg
    endif
endfunction

" 
" Maximize the current window in the buffer, without losing the underlying
" layout of all the open buffers.  The quickfix list is closed before any other
" operation, to avoid having a new unpopulated quickfix window opened when the
" original layout is restored.
"
function! MaximizeToggle()
    cclose
    if exists("s:maximize_session")
        exec "source " . s:maximize_session
        call delete(s:maximize_session)
        unlet s:maximize_session
        let &hidden = s:maximize_hidden_save
        unlet s:maximize_hidden_save
    else
        let s:maximize_hidden_save = &hidden
        let s:maximize_session = tempname()
        set hidden
        exec "mksession! " . s:maximize_session
        only
    endif
endfunction

" 
" Automatically open, but do not go to (if there are errors) the quickfix
" location list window, or close it when is has become empty.
"
" Note: Must allow nesting of autocmds to enable any customizations for quickfix
" buffers.
" Note: Normally, :cwindow jumps to the quickfix window if the command opens it
" (but not if it's already open). However, as part of the autocmd, this doesn't
" seem to happen.
"
function! AfterQF()
    bot cwindow
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts (Alphabetically Sorted)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Toggle SelectBuf
"
nmap <silent> <unique> <leader>b <Plug>SelectBuf

"
" Toggle NERDComment on the current line, or current selection
"
nnoremap <leader>c :call NERDComment(0, "invert")<CR>
vnoremap <leader>c :call NERDComment(0, "invert")<CR>

"
" Insert the current date
"
if exists ("*strftime")
    nnoremap <leader>d "=strftime("%m/%d/%y")<CR>po
endif

"
" Toggle NERDTree
"
nnoremap <leader>f :NERDTreeToggle<CR>

"
" Invoke the MultiModeGrep function on either the current line or selection
"
vnoremap <leader>g :call MultiModeGrep("visual")<CR>
nmap <leader>g :call MultiModeGrep("normal")<CR>

"
" Hide hlsearch temporarily
"
nnoremap <leader>h :nohls<CR>

"
" Toggle MaximizeToggle
"
nmap <leader>m :call MaximizeToggle()<CR>

"
" Toggle paste
"
set pastetoggle=<leader>p

"
" Invoke the FilterQuickFix function, filtering either the file or content
" sections of the quickfix buffer
"
" nnoremap <leader>qf :call FilterQuickFix("file", input("Display file names matching: ", ""))<CR>
" nnoremap <leader>qc :call FilterQuickFix("content", input("Display lines containing: ", ""))<CR>
nnoremap <leader>qfr :call FilterQFList(0, -1, inputdialog('Remove file names matching:', ''))<CR>
nnoremap <leader>qf :call FilterQFList(0, 1, inputdialog('Keep only file names matching:', ''))<CR>
nnoremap <leader>qcr :call FilterQFList(1, -1, inputdialog('Remove all lines matching:', ''))<CR>
nnoremap <leader>qc :call FilterQFList(1, 1, inputdialog('Keep only lines matching:', ''))<CR>

"
" Invoke the GetAlternate function, with either a vertical split, a horizontal
" split, or no split
"
if has ('cscope')
    nmap <leader>s :call GetAlternate("n")<CR>
    nmap <leader>ss :call GetAlternate("h")<CR>
    nmap <leader>sv :call GetAlternate("v")<CR>
endif

"
" Toggle the Tagbar
"
nnoremap <leader>t :TagbarToggle<CR>

"
" Invoke some common uses for the VCSCommand plugin
"
nnoremap <leader>va :VCSAdd<CR>
nnoremap <leader>vb :VCSBlame<CR>
nnoremap <leader>vd :VCSVimDiff<CR>
nnoremap <leader>vi :VCSInfo<CR>
nnoremap <leader>vl :VCSLog<CR>
nnoremap <leader>vr :VCSReview<CR>
nnoremap <leader>vs :VCSStatus<CR>
nnoremap <leader>vu :VCSUpdate<CR>

"
" Use the arrow keys to move the current line or selection up or down, and to
" control indentation
"
nmap <Up> [e 
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

" 
" Toggle folds with the spacebar
" 
nnoremap <Space> za
vnoremap <Space> za

"
" Simple code snippet for inserting braces with the proper indentation.  Be
" warned: this breaks the Undo/Redo behavior of vim
"
inoremap {{ {<CR>}<Esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocmds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Custom tabs for Makefiles and .snippet files
"
autocmd FileType Makefile setlocal noexpandtab
autocmd FileType snippet setlocal noexpandtab

"
" Specific Arduino highlighting
"
"autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
"autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

" 
" Set an appropriate wrapping margin when editing git commit messages
"
autocmd FileType gitcommit set textwidth=72 | set colorcolumn=73

autocmd QuickFixCmdPost [^l]* nested :call AfterQF()
autocmd QuickFixCmdPost    l* nested lwindow

