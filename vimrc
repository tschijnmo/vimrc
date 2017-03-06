set nocompatible              " be iMproved, required
filetype off                  " required

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
"
" Generic plugins.
"
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
" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'tell-k/vim-autopep8'

" LaTeX
Plugin 'lervag/vimtex'
" Use YouCompleteMe for TeX completion as well.
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
    \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\(include(only)?|input){[^}]*'
    \ ]
let g:vimtex_fold_enabled = "1"

" HTML/CSS
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" My own settings.
"
" General settings.
syntax on
colorscheme base16-atelierforest
set backspace=indent,eol,start " backspace over everything in insert mode
set sw=4 expandtab
set spell spelllang=en_gb

