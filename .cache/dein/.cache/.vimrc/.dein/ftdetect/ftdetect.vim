" Detect vimshell rc file.
autocmd BufNewFile,BufRead *.vimsh,.vimshrc,vimshrc set filetype=vimshrc
autocmd BufRead,BufNewFile *.csx set filetype=cs
" Detect syntax file.
autocmd BufNewFile,BufRead *.snip,*.snippets set filetype=neosnippet
au BufRead,BufNewFile *.ino,*.pde set filetype=arduino
