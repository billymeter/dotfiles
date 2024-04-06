set number
set nocompatible
set hidden
set history=200

" Autocomplete suggestions
set wildmenu
set wildmode=full

set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


" Keybindings

"" fzf keys
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :History<CR>
nnoremap <silent> <Leader>hh :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" While in insert mode, map jj to be an escape 
imap jj <Esc>

" When using C-d or C-u, move content to the center
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
