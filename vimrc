"https://github.com/junegunn/vim-plug                      
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.vim/plugged')                          
Plug 'morhetz/gruvbox'                                     
Plug 'vim-utils/vim-man'                                   
Plug 'mbbill/undotree'                                     
" https://github.com/dhruvasagar/vim-table-mode            
Plug 'dhruvasagar/vim-table-mode'                          
" https://github.com/tpope/vim-fugitive                    
Plug 'tpope/vim-fugitive'                                  
" https://github.com/vim-airline/vim-airline               
Plug 'vim-airline/vim-airline'                             
" Initialize plugin system                                 
call plug#end()                                            
                                                           
" *list of events that will execute automaticly*           
" - lines to save text folding:                            
autocmd BufWinLeave *.* mkview                             
autocmd BufWinEnter *.* silent loadview

" *appearance*                                                          
" - enable syntax highlighting                                          
syntax on                                                               
" - show command in the last line of the screen                         
set showcmd                                                             
"  - a comma separated list of screen columns that are highlighted with 
"  ColorColummn                                                         
set colorcolumn=80                                                      
" - used for the columns set with 'colorcolumn                          
highlight ColorColumn ctermbg=0 guibg=lightgrey                         
" - output the name of the currently active scheme.                     
colorscheme gruvbox                                                     
" - when set dark, Vim will try to use colors that look good an a dark  
"   background                                                          
set background=dark                                                     
" trancparentsy                                                         
let t:is_transparent=0                                                  
" fontsize                                                              
set guifont=Comic_Code:h14                                                  

                                                                        
" *file find*                                                               
" - search down into subfolders                                             
set path+=**                                                                
" - display all matching files when we tab complete                         
set wildmenu                                                                
" - ignore node_modules subfiles                                            
set wildignore+=**/node_modules/**                                          
" - allows you to re-use the same window and switch from unsaved buffer     
set hidden                                                                  
" - use case insensitive search                                             
set ignorecase                                                              
" - except when using capital letters                                       
set smartcase                                                               
" - Display the match for a search pattern when halfway typing              
set incsearch                                                               
                                                                            
" *indetation*                                                              
" - number of spaces that a <Tab> in the file counts for                    
set tabstop=4                                                               
" - number of spaces that a <Tab> counts for while performing editing       
"   operations                                                              
set softtabstop=4                                                           
" - number of spaces to use for each step fo (auto)indent                   
set shiftwidth=4                                                            
" - use the appropriate number of spaces to insert a <Tab>                  
set expandtab                                                               
" - coppy indent from current line                                          
set autoindent                                                              
" - do autoindenting when starting a new line for different languages       
set smartindent                                                             
" - when wrap is off lines will not wrap and only part of long line will be 
"   displayed                                                               
set nowrap                                                                  
                                                                            
" *number sidebar*                                                             
" - print the line number in front of each line                                
set number                                                                     
" - show the line number relative the line with the curser in front of each    
"   line                                                                       
set relativenumber                                                             
                                                                               
" *buffer*                                                                     
" - wehn swapfile is reset, the swap file for the current buffer is immediatly 
"   deleted                                                                    
set noswapfile                                                                 
" - dont make a backup before overwriting a file.                              
set nobackup                                                                   
" - List of directory names for undo files, separated with commas.             
set undodir=~/.vim/undodir                                                     
" - When on, Vim automatically saves undo history to an undo file when         
"   writing a buffer to a file, and restores undo history from the same        
"   file on buffer read.                                                       
set undofile                                                                   
                                                                               
" *key mapping*                                                                
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>           
