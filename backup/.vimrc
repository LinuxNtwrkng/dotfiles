set nocompatible    " We're running Vim, not Vi!
syntax on           " Enable syntax highlighting
filetype on         " Enable filetype detection
filetype indent on  " Enable filetype-specific indenting
filetype plugin on  " Enable filetype-specific plugins
set number          " Show line numbers
set relativenumber  " Enable relative line numbering around the cursor
set path+=**	      " Search subdirectories and allow tab-completion
set wildmenu	      " Display all matching files with tab completing
set ignorecase	    " Ignore case when searching
set incsearch	      " Search incrementally
set hlsearch	      " Highlight all search matches
set tabstop=2	      " Set hard tabstops to 2 spaces
set softtabstop=2   " Set <tab> key to insert two tabstops (4 spaces)
set expandtab       " Expand tab characters to spaces
set shiftwidth=4    " The size of an "indent" in spaces
set smarttab        " "Intelligently" insert spaces or "tabs" to get to next indent level
set ruler           " Show cursor position on bottom
set nomodeline      " CVE-2019-12735

" Clear last search by hitting <enter> (Can't comment after a remap as vim interprets it as part of the command)
nnoremap <CR> :noh<CR>

au BufRead,BufNewFile *.lic setfiletype ruby " Enable Ruby syntax highlighting for Lich scripts which use a non-standard extension


" Don't fix the alignment on this.  JAMF will just add it back with the wrong
" alignment, causing the git working tree to not be clean.
set modelines=0 " CVE-2019-12735
