let g:space_vim_dark_background = 233
if v:version < 802
    packadd! space-vim-dark
endif
colorscheme space-vim-dark
syntax on
set cursorline
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set ls=2

augroup open-tabs
    au!
    au VimEnter * nested if !&diff | tab all | tabfirst | endif
augroup end
au! BufNewFile,BufReadPost *.{yaml,yml,jinja,sls} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
