" Set syntax highlighting
let g:unite_source_outline_highlight = {
\ 'comment' : 'Comment',
\ 'expanded': 'Constant',
\ 'function': 'Function',
\ 'id'      : 'Special',
\ 'macro'   : 'Macro',
\ 'method'  : 'Function',
\ 'normal'  : 'Normal',
\ 'package' : 'Normal',
\ 'special' : 'Macro',
\ 'type'    : 'Type',
\ 'level_1' : 'Type',
\ 'level_2' : 'PreProc',
\ 'level_3' : 'Identifier',
\ 'level_4' : 'Constant',
\ 'level_5' : 'Special',
\ 'level_6' : 'Normal',
\ 'parameter_list': 'Normal',
\ }

let g:unite_outline_closest_tag = ''
command! UniteOutlineEchoClosestTag echo config_unite_outline#closest_tag()
command! UniteOutlineSetClosestTag let g:unite_outline_closest_tag = config_unite_outline#closest_tag()
command! UniteOutlineClearClosestTag let g:unite_outline_closest_tag = ''
autocmd CursorMoved * UniteOutlineClearClosestTag
nnoremap <silent> <Esc> :UniteOutlineSetClosestTag<CR>
