" vim:fileencoding=utf-8:foldmethod=marker

" Plugin Loader {{{

call plug#begin('~/.vim/plugged')


call plug#end()

" }}}

" General Settings {{{

syntax on                                  " Turn on syntax highlighting
set tabstop=4                              " Set \t to 4 spaces
set softtabstop=4                          " Set tab key to 4 spaces
set expandtab                              " Set tabs to expand to spaces
set shiftwidth=4                           " Set '>' to indent with 4 spaces
set number relativenumber                  " Add relative line numbers, with current line number displayed
filetype on                                " Enable file type detection
set hls                                    " Highligh search results
set is                                     " Incrementally highlight search results
set clipboard=unnamedplus                  " Use system clipboard
set nocompatible                           " Disable compatibility with vi which can cause unexpected issues
filetype plugin on                         " Enable plugins and load plugins for detected file type
filetype indent on                         " Load an indent file for the detected file type
autocmd Filetype make setlocal noexpandtab " This rule uses tabs instead of spaces for a makefile
set colorcolumn=80                         " Set a coloured column after 78 characters
set showmode                               " Show mode you are in
" }}}

" Mappings {{{

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" }}}

" Plugin Settings {{{

" NerdTREE settings

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" }}}
