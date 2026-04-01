" * minimal package manager *
packadd minpac

call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
call minpac#add('morhetz/gruvbox')

" * set color scheme *
set background=dark
colorscheme gruvbox

" * number sidebar *
set number
set relativenumber

" * vimwiki diary template *
augroup learning_diary_template
  autocmd!
  autocmd BufNewFile */diary/*.wiki call s:learning_diary_template()
augroup END

function! s:learning_diary_template() abort
  let l:date = expand('%:t:r')

  call setline(1, [
        \ '= ' . l:date . ' =',
        \ '',
        \ '== Learning ==',
        \ '- Did I learn today? :: [ ]',
        \ '- Topic / stack :: ',
        \ '- Resource :: ',
        \ '- Duration :: ',
        \ '- Energy :: ',
        \ '',
        \ '== What I did ==',
        \ '- Read / watched :: ',
        \ '- Practiced / built :: ',
        \ '',
        \ '== What I learned ==',
        \ '- Key idea :: ',
        \ '- One thing that clicked :: ',
        \ '',
        \ '== Problems ==',
        \ '- What was confusing or hard? :: ',
        \ '- Open question :: ',
        \ '',
        \ '== Next step ==',
        \ '- Continue with :: ',
        \ '',
        \ '== Notes ==',
        \ '- ',
        \ '',
        \ '== Work ==',
        \ '- Main focus :: ',
        \ '- One thing that went well :: ',
        \ '- One thing that was annoying :: ',
        \ '',
        \ '== Thoughts ==',
        \ '- ',
        \ ])

  normal! G
endfunction
