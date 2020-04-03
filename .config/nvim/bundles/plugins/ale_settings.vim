let g:lightline = {
  \'active': {
  \  'left': [
  \    ['mode', 'paste'],
  \    ['readonly', 'filename', 'modified', 'ale'],
  \  ]
  \},
  \'component_function': {
  \  'ale': 'ALEGetStatusLine'
  \}
\ }
let g:ale_fixers = {
\  'ruby': ['rubocop']
\}
"let g:ale_fix_on_save = 1
nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
