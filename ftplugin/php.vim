imap <buffer> <F5> <C-O>:call PhpInsertUse()<CR>
map <buffer> <F5> :call PhpInsertUse()<CR>

let g:php_phpmd_exec = $PWD . "/bin/phpmd"
if filereadable(g:php_phpmd_exec)
    let g:syntastic_php_phpmd_exec = g:php_phpmd_exec
endif

let g:php_phpmd_rules = $PWD . "/build/phpmd.xml"
if filereadable(g:php_phpmd_rules)
    let g:syntastic_php_phpmd_post_args = g:php_phpmd_rules
endif

let g:php_phpcs_exec = $PWD . "/bin/phpcs"
if filereadable(g:php_phpcs_exec)
    let g:syntastic_php_phpcs_exec = g:php_phpcs_exec
endif

let g:php_phpcs_standard = $PWD . "/vendor/trivago/orchestra-checkstyle/src/OrchestraCheckstyle"
if isdirectory(g:php_phpcs_standard)
    let g:syntastic_php_phpcs_args = '--standard=' . g:php_phpcs_standard
endif

