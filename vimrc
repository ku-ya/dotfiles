set nocompatible              " required
filetype off                  " required
syntax enable
set path+=**
set wildmenu
command! MakeTags !ctags -R .
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'klen/python-mode'
Plugin 'valloric/youcompleteme'

Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'lervag/vimtex'
" Plugin 'vim-latex/vim-latex'
" Plugin 'sirver/ultisnips'
" Plugin 'tpope/vim-markdown'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" Plugin 'suan/vim-instant-markdown'
" let g:instant_markdown_slow = 1
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

call vundle#end()            " required
filetype plugin indent on    " required
set tabstop=2
set shiftwidth=2
set expandtab
let base16colorspace=256
" syntax on
set background=dark
set laststatus=2
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" set clipboard=unnamed
set relativenumber
set number
set numberwidth=5
autocmd BufRead,BufNewFile *.md, *.tex setlocal spell spelllang=en_us
" set complete+=kspell
let g:latex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"