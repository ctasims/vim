" 
" let $MYVIMRC="~/.vim/vimrc"
" source $MYVIMRC
" 
"
filetype off                   " required!

" vim-plug plugins. Run :PlugInstall to install them.
call plug#begin('~/.vim/plugged')

" fuzzy finder fzf https://vimawesome.com/plugin/fzf#usage
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" https://vimawesome.com/plugin/the-nerd-commenter
Plug 'scrooloose/nerdcommenter'
"Plug 'preservim/nerdtree'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
" Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'altercation/vim-colors-solarized'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
" Automatically executes filetype plugin indent on and syntax enable

" :PlugInstall
" :PlugUpdate
" :PlugClean - remove plugins that are deleted/commented out
" :source ~/_vimrc - reload this

set background=dark
colorscheme dracula
" colorscheme solarized
"colorscheme desert

" make : command easier to type
nmap ; :

" automatically highlight word under cursor
" autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
" let HlUnderCursor=1

if has("gui_running")
    set path=p:
    cd p:/
    set lines=61
    set columns=275
endif

set nocompatible                " (cp) use Vim defaults (much better)
set ruler                       " (ru) show the cursor position at all times
set showcmd                     " (sc) display an incomplete command in the lower right
set history=50                  " (hi) keep 50 lines of command history
set showmatch                   " (sm) briefly jump to matching bracket when inserting one
set autoindent                  " (ai) turn on auto-indenting (great for programers)
set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set tabstop=4                   " (ts) width (in spaces) that a <tab> is displayed as
set shiftwidth=4                " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set expandtab                   " (et) expand tabs to spaces (use :retab to redo entire file)
set smartindent

set cino+=(0                    " align function params with parens after function name

set textwidth=0                " (tw) number of columns before an automatic line break is inserted (see formatoptions)
"set formatoptions=croq          " (fo) influences how vim automatically formats text
set backspace=indent,eol,start  " (bs) allows backspacing beyond starting point of insert mode, indents and line breaks
"set nrformats+=alpha            " (nf) adds alpha chars to list that gets incremented/decremented with ^A/^X
"set listchars+=tab:>-           " (lcs) strings used in 'list' mode to show hidden characters (default=eol:$)
"set listchars+=trail:-
set winminheight=0              " (wmh) the minimal height of the window when it's not the current window

"set nowrap                     " allows text to continue off the window (need horizontal scrolling)
set tw=125
set linebreak                   " (lbr) wrap long lines at a space instead of in the middle of a word
set sidescroll=5                " (ss) the minimal number of columns to scroll horizontally
set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
set listchars+=extends:>

set wrapscan                    " (ws) allows search to wrap to top of document when the bottom has been hit
set incsearch                   " (is) highlights what you are searching for as you type
set hlsearch                    " (hls) highlights all instances of the last searched string
set ignorecase                  " (ic) ignores case in search patterns
set smartcase                   " (scs) don't ignore case when the search pattern has uppercase
set infercase                   " (inf) during keyword completion, fix case of new word (when ignore case is on)

set foldcolumn=6                " (fdc) width of fold column (to see where folds are)
set foldmethod=indent           " (fdm) creates a fold for every level of indentation
set foldlevel=99                " (fdl) when file is opened, don't close any folds
set foldenable                  " (fen) enables or disables folding. 'za' to open/close

set autowrite                   " Write the old file out when switching between files
"set guifont=Inconsolata:h12:cANSI   " set font type and size. depends on resolution
set guifont=Consolas:h11  " set font type and size. depends on resolution
set antialias
set visualbell
set noerrorbells

inoremap jk <ESC>
let mapleader=" "             " Change map leader from \
set encoding=utf-8

noremap ,p "0p

" let g:ycm_collect_identifiers_from_tag_Files = 1  " YCM collects identifiers from exuberant ctags
" let g:ycm_add_preview_to_completeopt = 1  " preview window stores detailed info
" let g:ycm_autoclose_preview_window_after_completion = 1
"
" NERD COMMENTER
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" :map <leader>d <Plug>NERDCommenterToggle

" maps comments. Note that ctrl-/ isn't recognized by vim usually.
map <leader>d <plug>NERDCommenterToggle<CR>
map <C-j> <plug>NERDCommenterToggle<CR>
" map <leader>j <plug>NERDCommenterToggle<CR>
" map <leader>/ <plug>NERDCommenterToggle<CR>
" noremap <C-_> <plug>NERDCommenterToggle<CR>
" nmap <C-_>   <plug>NERDCommenterToggle
" vmap <C-_>   <plug>NERDCommenterToggle<CR>gv

" Backups  
set backupdir=~/vimtmp
set directory=~/vimtmp
set backup

" Note: these do not work in Windows, which is hard-coded from the mouse driver :(
:map <ScrollWheelUp> <C-Y>
:map <S-ScrollWheelUp> <C-U>
:map <ScrollWheelDown> <C-E>
:map <S-ScrollWheelDown> <C-D>

let html_use_css = 1            " the ':%TOhtml' command generates html without <font> tags

"au FocusLost * :wa        " Saves file when Vim window loses focus

" ignore files
set wildignore+=*.pyc,*.swp,*.zip,*.tif,*.tiff,*.jpg,*.tmp,*.temp
set wildignore+=*\\tmp\\*,*\\Lib\\*,*\\build\\*,*\\Include\\*,*\\Scripts\\*,*\\proj_static\\*

" don't adjust working dir automatically
set noautochdir

" minibufexpl settings
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 


" File Specific Settings
" ------------------------------------------------------------

au FileType xhtml,html,htm,php,xml,js setlocal ts=2 sw=2 sts=2  " (sts) makes spaces feel like tabs (like deleting)
au FileType *.md setlocal ts=4 sw=4 sts=4 et
                                                            
au FileType js setlocal smartindent                         " enable smartindenting (si) feature for the following files
au FileType js setlocal cindent

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

au FileType txt setlocal fo+=tn

au FileType python setl sw=4 sts=4 et                       " indents for each filetype

" remove trailing whitespace from lines when saving file
autocmd BufWritePre *.py normal m`:%s/\s\+$//e''



" Abbreviations
" ------------------------------------------------------------

"abbreviate <a <a href=""></a><left><left><left><left><left>
"abbreviate <i <img src="" /><left><left><left>
abbreviate l" &ldquo;&rdquo;<left><left><left><left><left><left>
abbreviate r" &rdquo;
abbreviate l' &lsquo;
abbreviate r' &rsquo;
"abbreviate  &quot;&quot;<left><left><left><left><left>



" Miscellaneous Settings
" ------------------------------------------------------------


" Key Mappings
" ------------------------------------------------------------


" activate rainbow parens
map <leader><S-r> :RainbowParenthesesToggle<CR>
au Syntax * RainbowParenthesesLoadSquare   " []
au Syntax * RainbowParenthesesLoadBraces   " {}
au Syntax * RainbowParenthesesLoadChevrons " <>
syntax on

" <F9> toggles word wrap
map  <F9> :set wrap!<CR>
imap <F9> <ESC>:set wrap!<CR>a

" <F8> toggles whether the last searched string is highlighted
map  <F8> :set hls!<CR>
imap <F8> <ESC>:set hls!<CR>a

" Shortcut to fold tags with leader + ft
nmap <leader>ft Vatzf

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Use Q for formatting current paragraph or selection
vmap Q gq
nmap Q gqap

" make : command easier to type!
" nmap ; :


" 'td' to show task list: TODO, FIXME. 'q' to close it
map <leader>td <Plug>TaskList

" jumps to pep8 errors in quickfix window
let g:pep8_map='<leader>8'

" You can fuzzy text search for anything in your code (variable name,
" class, method, etc) and it'll give you a list of files and line numbers 
" where they are defined so you can quickly cycle through them
nmap <leader>a <Esc>:Ack!

" Change line-numbering based on mode
set rnu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu

" Highlight lines greater than 79 chars in length
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%126v.\+/

" Add visual vertical column at line 80
set colorcolumn=126
highlight ColorColumn ctermbg=DarkGray guibg=DarkGray

" ALE
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" Source the vimrc file after saving it. This way, you don't have to reload Vim
" to see the changes.  
if has("autocmd")  
 augroup myvimrchooks  
  au!  
  autocmd bufwritepost .vimrc source ~/.vimrc  
 augroup END  
endif
