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
