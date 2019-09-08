if !has("gui") && has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
  colorscheme desert
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
  set background=dark
  colorscheme solarized
  set guifont=Anonymous\ Pro\:h16
endif

syntax on
set nu

" Search highlighting
set hlsearch
" to temporarily disable do :noh

filetype off
filetype plugin indent on
syntax on
" colorscheme desert

au BufRead,BufNewFile *.md set filetype=markdown


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Lightline options
set laststatus=2  " Required for lineline to work
set noshowmode  " Remove superfluous -- INSERT -- message
