" ============================================================================
" File:        my-sensible.vim
" Description: default global vim settings
" Maintainer:  Javier Lopez <m@javier.io>
" ============================================================================

"if exists('g:loaded_my_sensible_vim') || &cp
  "finish
"endif

"let g:loaded_my_sensible_vim = 1

if v:version < 700
    echoerr "This vimrc file use features than are only available on vim 7.0 or greater"
    finish
endif

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j "delete comment character when joining commented lines
endif

set nocompatible      "breaks compatibility with vi, required
set modelines=0       "http://www.guninski.com/vim1.html
set noexrc            "don't use local version of .(g)vimrc, .exrc
set lazyredraw        "do not redraw the screen while macros are running. It
                      "improves performance
set ttyfast           "indicates a fast terminal connection
set history=1000      "record last n commands, press 'q:' to see a new
                      "window (normal mode) with the full history
set t_Co=256          "set 256 colors. Make sure your console supports it.
                      "gnome-terminal, konsole and urxvt work well
set report=0          "report any changes
set nobackup          "git btw!
set nowritebackup     "bye .swp madness
set noswapfile
set undofile          "persist the undo tree to a file
if has('win32') || has('win64')
    set undodir=$VIM/vimfiles/undo
else
    set undodir=~/.vim/undo
endif
set tabpagemax=1000   "max open tabs at the same time
set autowrite
set autoread          "watch file changes by other programs
set encoding=utf-8    "utf is able to represent any character
set fileencoding=utf-8
set ruler             "show the cursor position all the time
set noerrorbells      "disable annoying beeps
set path+=**          "search through subdirectories
"set visualbell       "this one too
set wildmenu          "enhance command completion
set wildignore=*/.svn,CVS,*/.git,*/.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.swp,*/tmp/*
set wildignore=*.pdf,*.png,*.jpg,*.jpeg,*.mp3,*mp4,*.avi,*.mkv,*.mpeg,*.mpg,*.rm
set hidden            "allow open other file without saving current file
set autochdir         "change to the current directory
set winminheight=1    "never let a window to be less than 1px height
set winminwidth=1
set scrolloff=3       "show enough context
set sidescrolloff=2
set hlsearch          "highlight search
set incsearch         "search as you type
set ignorecase        "ignore case when searching
set smartcase         "ignores ignorecase when pattern contains uppercase characters"
set showcmd           "show the command being typed
set softtabstop=4     "vim sees 4 spaces as a tab
set shiftwidth=4
set showfulltag       "when autocompleting show as much as possible
set expandtab         "tabs mutate into spaces, if you wanna insert "real"
                      "tabs use Ctrl-v <tab> instance
set splitright        "split vertically to the right.
set splitbelow        "split horizontally below.
"set cursorline       "highlight the screen line of the cursor, slow!
set nostartofline     "keep the cursor on the same column
set nofsync           "improves performance, let OS decide when to flush disk
set showmatch         "show matching bracket
"set matchtime=5      "how many tenths of a second to blink
set diffopt+=iwhite   "ignore whitespace in diff mode
set cscopetag         "use both cscope and ctag for 'ctrl-]'
set csto=0            "gives preference to cscope over ctag
"set mousehide        "hide the mouse while typying
"set mouse=nv         "set the mouse to work in console mode
set foldenable!       "disable folding by default
"set foldmethod=indent "other options are marker|expr|manual
"set foldmarker={,}

"set clipboard=unnamed
"yanks go to clipboard, "+p to recover, only works on X11
if has ('unnamedplus') | set clipboard=unnamedplus | endif

set viminfo='100,<100,s10,h    "remember just a little
set backspace=indent,eol,start "backspace deletes as in other editors
set pastetoggle=<c-insert>     "pastetoggle, sane indentation on pastes
                               "doesn't work in most terminal emulators
                               ":set paste/nopaste are friends there
"print to html
let html_use_css       = 1
let html_dynamic_folds = 1

setlocal omnifunc=syntaxcomplete#Complete "Omni-completion <C-x><C-o>
