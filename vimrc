set nocompatible              " be iMproved, required
filetype off                  " required

" Normalization settings
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"
" Plugins and their settings.
"
" Generic plugins.
"

Plugin 'scrooloose/nerdtree'
let NERDTreeRespectWildIgnore = 1
map <C-n> :NERDTreeToggle<CR>

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'octref/RootIgnore'

Plugin 'tpope/vim-surround'

Plugin 'easymotion/vim-easymotion'

Plugin 'flazz/vim-colorschemes'

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='simple'

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<c-j>"

Plugin 'honza/vim-snippets'

Plugin 'airblade/vim-gitgutter'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-sleuth'

Plugin 'bronson/vim-trailing-whitespace'


"
" Generic programming plugins.
"

Plugin 'scrooloose/syntastic'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

Plugin 'rhysd/vim-clang-format'
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>


"
" Programming-language specific plugins.
"

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Python
Plugin 'tell-k/vim-autopep8'

" LaTeX
Plugin 'lervag/vimtex'

" HTML/CSS
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Some configuration to the plugins that has to be put after the end of
" plugins.

" Use YouCompleteMe for TeX completion from vimtex as well.
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
let g:vimtex_fold_enabled = "1"
autocmd filetype latex let g:ycm_auto_trigger = 0


" My own settings.
"
" General settings.
syntax on
set background=dark
colorscheme base16-atelierforest
set backspace=indent,eol,start " backspace over everything in insert mode
set sw=4 expandtab
set spell spelllang=en

" Language specific settings.
let g:tex_flavor = 'latex'

