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

" Typo correction e.g. :W, q:
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
nnoremap q: <nop>


set encoding=utf-8
set termencoding=utf-8

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab navigation
noremap <Space>1 1gt
noremap <Space>2 2gt
noremap <Space>3 3gt
noremap <Space>4 4gt
noremap <Space>5 5gt
noremap <Space>6 6gt
noremap <Space>7 7gt
noremap <Space>8 8gt
noremap <Space>9 9gt

call plug#begin('~/.local/share/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

" dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'

call plug#end() 

" Telescope
nnoremap <Space>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Space>g <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <Space>r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Space>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Space>h <cmd>lua require('telescope.builtin').help_tags()<cr>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF
