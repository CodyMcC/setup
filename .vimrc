set showmode
set number
nnoremap <F2> :set invpaste past?<CR>
set pasttoggel=<F2>

set expandtab
set ts=4
set shiftwidth=4

au BufWritePost *
  \ if getline(1) =~ "^#!" |
  \   silent execute "!chmod +x <afile>" |
  \ endif