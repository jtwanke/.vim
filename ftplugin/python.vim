syntax enable

" show line number
set number

" tabspace
set ts=4

set autoindent

set expandtab

set shiftwidth=4

set cursorline

set showmatch

let python_highlight_all = 1

" this config highlights trailing whitespace when not in insert mode
highlight ExtraWhiteSpace ctermbg=red
match ExtraWhiteSpace /\s\+$/
autocmd BufWinEnter * match ExtraWhiteSpace /\s\+$/
autocmd InsertEnter * match ExtraWhiteSpace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/
autocmd BufWinLeave * call clearmatches()
