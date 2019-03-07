let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
\})
"Tab補完
imap <expr><TAB> pumvisible() ? "\<C-N>" : neosnippet#jumpable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"Enterキーで確定
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
