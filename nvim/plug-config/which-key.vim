

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Create map to add keys to
let g:which_key_map =  {}

" SINGLE MAPPINGS
let g:which_key_map['d'] = [ ':bd!'                  , 'delete buffer']
let g:which_key_map['q'] = [ ':wqa!'                  , 'quit' ]
let g:which_key_map['w'] = [ ':w'                    , 'write' ]
let g:which_key_map['r'] = [ ':source $MYVIMRC'      , 'reload config' ]
let g:which_key_map['c'] = [ ':VimtexCountWords!'    , 'count' ]


" l is for LaTeX
let g:which_key_map.L = {
  \ 'name' : '+latex' ,
  \ 'b' : ['VimtexCompile' , 'build'],
  \ 'm' : ['VimtexView'   , 'preview'],
  \ 'h' : ['VimtexTocOpen' , 'index'],
  \ 'l' : ['VimtexClean'  , 'kill aux'],
  \ 'p' : ['VimtexErrors'  , 'error log'],
  \ }

" y is for you SURROUND
let g:which_key_map.s = {
      \ 'name' : '+surround' ,
      \ 's' : ['<Plug>Ysurround'         , 'surround'],
      \ 'c' : ['<Plug>Csurround'         , 'change'],
      \ 'd' : ['<Plug>Dsurround'         , 'delete'],
      \ 'k' : ['dss'                     , 'kill'],
      \ }

call which_key#register('<Space>', "g:which_key_map")


