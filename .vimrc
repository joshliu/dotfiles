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

syntax on
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap q: <nop>

set encoding=utf-8
set termencoding=utf-8

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap :W
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
