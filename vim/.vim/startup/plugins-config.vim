
":help syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php', 'php-cs-fixer', 'phpmd']


" https://github.com/shawncplus/phpcomplete.vim

" Enables completion for non-static methods when completing for static context
" (::). This generates E_STRICT level warning, but php calls these methods
" nontheless.

let g:phpcomplete_relax_static_constraint = 0

" Enables completion of variables and functions in "everything under the sun"
" fashion when completing for an instance or static class context but the code
" can't tell the class or locate the file that it lives in. The completion
" list generated this way is only filtered by the completion base and
" generally not much more accurate then simple keyword completion.

let g:phpcomplete_complete_for_unknown_classes = 0

" Enables use of tags when the plugin tries to find variables. When enabled
" the plugin will search for the variables in the tag files with kind 'v',
" lines like $some_var = new Foo; but these usually yield highly inaccurate
" results and can   be fairly slow.

let g:phpcomplete_search_tags_for_variables = 0

" This option controls the number of characters the user needs to type before
" the tags will be searched for namespaces and classes in typed out namespaces
" in "use ..." context. Setting this to 0 is not recommended because that
" means the code have to scan every tag, and vim's taglist() function runs
" extremly slow with a "match everything" pattern. ( Requires patched ctags)

let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1

" When enabled the preview window's content will include information extracted
" from docblock comments of the completions. Enabling this option will add
" return types to the completion menu for functions too.

let g:phpcomplete_parse_docblock_comments = 0

" When enabled the taglist() lookups will be cached and subsequent searches
" for the same pattern will not check the tagfiles any more, thus making the
" lookups faster. Cache expiration is based on the mtimes of the tag files.

let g:phpcomplete_cache_taglists = 1

" When enabled the <C-]> will be mapped to phpcomplete#JumpToDefinition()
" which will try to make a more educated guess of the current symbol's
" location than simple tag search. If the symbol's location cannot be found
" the original <C-]> functionality will be invoked

let g:phpcomplete_enhance_jump_to_definition = 1

" Defines the mappings for the enhanced jump-to-definition. (see doc)
" let g:phpcomplete_mappings = {..}


" If php-cs-fixer is in $PATH, you don't need to define line below
"let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
"let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
"let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "/usr/local/bin/php-cs-fixer"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
