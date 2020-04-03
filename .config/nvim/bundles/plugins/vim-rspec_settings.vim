let g:rspec_command = "Dispatch bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm2"

" RSpec.vim mappings
nmap <Space>r [rspec]
map [rspec]t :call RunCurrentSpecFile()<CR>
map [rspec]r :call RunNearestSpec()<CR>
map [rspec]l :call RunLastSpec()<CR>
map [rspec]a :call RunAllSpecs()<CR>
