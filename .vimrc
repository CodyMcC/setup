set showmode
set number
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

set expandtab
set ts=4
set shiftwidth=4

au BufWritePost *
  \ if getline(1) =~ "^#!" |
  \   silent execute "!chmod +x <afile>" |
  \ endif


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
