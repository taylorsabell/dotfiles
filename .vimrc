@REM " Use the Solarized Dark theme
@REM set background=dark
@REM colorscheme solarized
@REM let g:solarized_termtrans=1

@REM " Make Vim more useful
@REM set nocompatible
@REM " Use the OS clipboard by default (on versions compiled with `+clipboard`)
@REM set clipboard=unnamed
@REM " Enhance command-line completion
@REM set wildmenu
@REM " Allow cursor keys in insert mode
@REM set esckeys
@REM " Allow backspace in insert mode
@REM set backspace=indent,eol,start
@REM " Optimize for fast terminal connections
@REM set ttyfast
@REM " Add the g flag to search/replace by default
@REM set gdefault
@REM " Use UTF-8 without BOM
@REM set encoding=utf-8 nobomb
@REM " Change mapleader
@REM let mapleader=","
@REM " Don’t add empty newlines at the end of files
@REM set binary
@REM set noeol
@REM " Centralize backups, swapfiles and undo history
@REM set backupdir=~/.vim/backups
@REM set directory=~/.vim/swaps
@REM if exists("&undodir")
@REM 	set undodir=~/.vim/undo
@REM endif

@REM " Don’t create backups when editing files in certain directories
@REM set backupskip=/tmp/*,/private/tmp/*

@REM " Respect modeline in files
@REM set modeline
@REM set modelines=4
@REM " Enable per-directory .vimrc files and disable unsafe commands in them
@REM set exrc
@REM set secure
@REM " Enable line numbers
@REM set number
@REM " Enable syntax highlighting
@REM syntax on
@REM " Highlight current line
@REM set cursorline
@REM " Make tabs as wide as two spaces
@REM set tabstop=2
@REM " Show “invisible” characters
@REM set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
@REM set list
@REM " Highlight searches
@REM set hlsearch
@REM " Ignore case of searches
@REM set ignorecase
@REM " Highlight dynamically as pattern is typed
@REM set incsearch
@REM " Always show status line
@REM set laststatus=2
@REM " Enable mouse in all modes
@REM set mouse=a
@REM " Disable error bells
@REM set noerrorbells
@REM " Don’t reset cursor to start of line when moving around.
@REM set nostartofline
@REM " Show the cursor position
@REM set ruler
@REM " Don’t show the intro message when starting Vim
@REM set shortmess=atI
@REM " Show the current mode
@REM set showmode
@REM " Show the filename in the window titlebar
@REM set title
@REM " Show the (partial) command as it’s being typed
@REM set showcmd
@REM " Use relative line numbers
@REM if exists("&relativenumber")
@REM 	set relativenumber
@REM 	au BufReadPost * set relativenumber
@REM endif
@REM " Start scrolling three lines before the horizontal window border
@REM set scrolloff=3

@REM " Strip trailing whitespace (,ss)
@REM function! StripWhitespace()
@REM 	let save_cursor = getpos(".")
@REM 	let old_query = getreg('/')
@REM 	:%s/\s\+$//e
@REM 	call setpos('.', save_cursor)
@REM 	call setreg('/', old_query)
@REM endfunction
@REM noremap <leader>ss :call StripWhitespace()<CR>
@REM " Save a file as root (,W)
@REM noremap <leader>W :w !sudo tee % > /dev/null<CR>

@REM " Automatic commands
@REM if has("autocmd")
@REM 	" Enable file type detection
@REM 	filetype on
@REM 	" Treat .json files as .js
@REM 	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
@REM 	" Treat .md files as Markdown
@REM 	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
@REM endif
