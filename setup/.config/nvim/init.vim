" Plugins
call plug#begin("~/.config/nvim/plugged")



call plug#end()

" Search options
" Highlight all matches for last pattern
:set hlsearch
" Enable incremental search
:set incsearch
" Ignore/Don't ignore case
:set noic
" Enable search wrapping (on by default)
:set wrapscan

" Syntax highlighting
" Enable filetype detection
:runtime! filetype.lua filetype.vim
" Enable syntax highlighting
:runtime! syntax/syntax.vim
syntax enable

" Colorcheme
set background=dark
colorscheme gruvbox
" Allow transparent background
hi Normal guibg=NONE ctermbg=NONE
