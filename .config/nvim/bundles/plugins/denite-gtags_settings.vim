"" denite-gtags
"nnoremap <silent> [denite]ta :DeniteCursorWord gtags_context<CR>
"nnoremap <silent> [denite]td :DeniteCursorWord gtags_def<CR>
"nnoremap <silent> [denite]tr :DeniteCursorWord gtags_ref<CR>
"nnoremap <silent> [denite]tg :DeniteCursorWord gtags_grep<CR>
"nnoremap <silent> [denite]tt :Denite gtags_completion<CR>
"nnoremap <silent> [denite]tf :Denite gtags_file<CR>
"nnoremap <silent> [denite]tF :Denite gtags_files<CR>
"nnoremap <silent> [denite]tp :Denite gtags_path<CR>
nnoremap [denite]a :DeniteCursorWord -buffer-name=gtags_context gtags_context<cr>
nnoremap [denite]d :DeniteCursorWord -buffer-name=gtags_def gtags_def<cr>
nnoremap [denite]r :DeniteCursorWord -buffer-name=gtags_ref gtags_ref<cr>
nnoremap [denite]tg :DeniteCursorWord -buffer-name=gtags_grep gtags_grep<cr>
nnoremap [denite]tt :Denite -buffer-name=gtags_completion gtags_completion<cr>
nnoremap [denite]f :Denite -buffer-name=gtags_file gtags_file<cr>
nnoremap [denite]F :Denite -buffer-name=gtags_files gtags_files<cr>
nnoremap [denite]p :Denite -buffer-name=gtags_path gtags_path<cr>
