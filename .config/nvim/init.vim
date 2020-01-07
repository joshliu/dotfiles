set t_Co=256
set mouse=a
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set autoindent expandtab tabstop=4 shiftwidth=4
set smartindent
set smartcase
set ignorecase
set wildignorecase
set number
"set relativenumber
set incsearch
set ruler

"set autochdir

syntax on
nnoremap j gj
nnoremap k gk
nnoremap q: <nop>

set encoding=utf-8
set termencoding=utf-8

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end() 

" fzf bindings
nnoremap <Space>b :Buffers<CR>
nnoremap <Space>f :Files<CR>
nnoremap <Space>g :GFiles<CR>
