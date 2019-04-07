" colors
syntax enable

" files
set nobackup
set nowb
set noswapfile

" indent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si 
set wrap

" status
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

call plug#begin('~/.vim/plugged')
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" surround
Plug 'tpope/vim-surround'
call plug#end()

" mapping
map <C-n> :NERDTreeToggle<CR>
map ; :Files<CR>

" functions
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
