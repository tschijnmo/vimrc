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
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

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

let g:ctrlp_max_depth = 8
Plugin 'ctrlpvim/ctrlp.vim'
nmap <Leader>b :CtrlPBuffer<CR>

Plugin 'tpope/vim-sleuth'

Plugin 'mkitt/tabline.vim'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'tpope/vim-unimpaired'

Plugin 'tpope/vim-commentary'


"
" Generic programming plugins.
"

Plugin 'scrooloose/syntastic'

Plugin 'rhysd/vim-clang-format'
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>


"
" Programming-language specific plugins.
"

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" HTML/CSS
Plugin 'mattn/emmet-vim'

" Ruby
Plugin 'vim-ruby/vim-ruby'
:let g:ruby_indent_block_style = 'do'
Plugin 'tpope/vim-rails'

" Scala
Plugin 'derekwyatt/vim-scala'
let g:scala_scaladoc_indent = 1


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Some configuration to the plugins that has to be put after the end of
" plugins.

" My own settings.
"
" General settings.
syntax on
set background=dark
colorscheme base16-atelierforest
set backspace=indent,eol,start " backspace over everything in insert mode
set sw=2 expandtab
set spell spelllang=en
runtime macros/matchit.vim

" Tab colours.
:hi TabLineFill ctermfg=DarkGrey ctermbg=235
:hi TabLine ctermfg=DarkGrey ctermbg=235
:hi TabLineSel ctermfg=LightGrey ctermbg=239

" Language specific settings.

" Meraki manage specific settings.
let g:ctrlp_root_markers = ['build.sbt']

" Platform specific settings.
set t_Cs=

