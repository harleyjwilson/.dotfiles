" vim:fileencoding=utf-8:foldmethod=marker

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

