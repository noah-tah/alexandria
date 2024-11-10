" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work
exmap back obcommand app:go-back
nmap <C-o> :back<CR>
exmap forward obcommand app:go-forwardnmap <C-i> :forward<CR>
