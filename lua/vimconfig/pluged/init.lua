--这个地方管理Vim的插件配置
local Plug = vim.fn['plug#']

vim.call('plug#begin', PlugPath .. 'plugged')

Plug 'wellle/targets.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'bling/vim-bufferline'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/syntastic'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'NLKNguyen/papercolor-theme'
-- 文件图标
Plug 'ryanoasis/vim-devicons'
-- 自动补全括号和删除
Plug 'jiangmiao/auto-pairs'

vim.call('plug#end')

-- 自己写的一些插件直接通过命令行来调用
-- 符号自动补全插件
vim.cmd('source' .. BasePath .. 'lua/vimconfig/pluged/symbolauto.vim')
-- 编译插件
vim.cmd('source' .. BasePath .. 'lua/vimconfig/pluged/compile.vim')
-- 导入插件配置
vim.cmd('source' .. BasePath .. 'lua/vimconfig/pluged/plugconfig.vim')
