
" settings for sumatraPDF
let g:vimtex_view_method = 'skim'
let g:vimtex_quickfix_mode=0

" Ignore mappings
let g:vimtex_mappings_enabled = 0

" Error Suppression:
" https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt

let g:vimtex_log_ignore = [
        \ 'Underfull',
        \ 'Overfull',
        \ 'specifier changed to',
        \ 'Token not allowed in a PDF string',
      \ ]

let g:vimtex_context_pdf_viewer=1
let g:vimtex_context_pdf_viewer= 'okular'

