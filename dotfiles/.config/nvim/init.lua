vim.cmd [[
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
    "nnoremap s gk

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
    "noremap <Space>1 1gt
    "noremap <Space>2 2gt
    "noremap <Space>3 3gt
    "noremap <Space>4 4gt
    "noremap <Space>5 5gt
    "noremap <Space>6 6gt
    "noremap <Space>7 7gt
    "noremap <Space>8 8gt
    "noremap <Space>9 9gt
]]


-- enable filetype.lua
vim.g.do_filetype_lua = 1

-- map leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("bootstrap")
require("deps")

local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local nnoremap = get_mapper("n", true)
nnoremap("<Leader>f", ":lua require('telescope.builtin').find_files()<CR>")
nnoremap("<Leader>g", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<Leader>r", ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<Leader>b", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<Leader>h", ":lua require('telescope.builtin').help_tags()<CR>")

-- vim.cmd [[
--     " Telescope
--     nnoremap <Leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
--     nnoremap <Leader>g <cmd>lua require('telescope.builtin').git_files()<cr>
--     nnoremap <Leader>r <cmd>lua require('telescope.builtin').live_grep()<cr>
--     nnoremap <Leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
--     nnoremap <Leader>h <cmd>lua require('telescope.builtin').help_tags()<cr>
-- ]]
