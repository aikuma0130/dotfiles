function! g:GetVisualWord() abort
  let word = getline("'<")[getpos("'<")[2] - 1:getpos("'>")[2] - 1]
  return word
endfunction

call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('file/rec', 'ignore_pattern', [])
call denite#custom#var('grep', 'ignore_pattern', [])

nnoremap [denite] <Nop>
nmap <Space>u [denite]
nnoremap <silent> [denite]b :Denite buffer<CR>
nnoremap <silent> [denite]c :Denite changes<CR>
nnoremap <silent> [denite]f :Denite file/rec<CR>
nnoremap <silent> [denite]g :Denite -auto_preview grep<CR>
nnoremap <silent> [denite]* :DeniteCursorWord -auto_preview grep<CR>
nnoremap <silent> [denite]h :Denite help<CR>
nnoremap <silent> [denite]l :Denite line<CR>
" nnoremap <silent> [denite]t :Denite tag<CR>
nnoremap <silent> [denite]m :Denite file_mru<CR>
nnoremap <silent> [denite]u :Denite menu<CR>
nnoremap <silent> [denite]y :Denite neoyank<CR>
nnoremap <silent> [denite]] :DeniteCursorWord grep<CR>

" カーソル選択箇所でgrep
xnoremap <silent> <Space>g :Denite grep:::`GetVisualWord()`<CR>
